using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

/// <summary>   Admin terms generate page class. </summary>
///
/// <remarks>   Mat, 2011-01-25. </remarks>

public partial class Admin_Terms_Generate : System.Web.UI.Page
{

    /// <summary> The delay </summary>
    private int delay = 1;

    /// <summary> The minimum hour </summary>
    private int minHour = 7;

    /// <summary> The maximum hour </summary>
    private int maxHour = 21;

    /// <summary> The studs </summary>
    private List<Object> studs = new List<Object>();

    /// <summary>   Event handler. Called by Page for load events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Event information. </param>

    protected void Page_Load(object sender, EventArgs e)
    {
        //liczba studentow
        String connectionString = ConfigurationManager.ConnectionStrings["zapisyConnectionString"].ConnectionString;
        SqlConnection sqlConnection = new SqlConnection(connectionString);
        SqlCommand sqlCommand = new SqlCommand("Students_GetNumber", sqlConnection);
        sqlCommand.CommandType = CommandType.StoredProcedure;
        sqlCommand.Parameters.Add("@returnValue", SqlDbType.Int, 0).Direction = ParameterDirection.ReturnValue;

        try
        {
            sqlConnection.Open();
            sqlCommand.ExecuteNonQuery();
            if ((int)sqlCommand.Parameters["@returnValue"].Value != 0)
            {
                this.studNum.Text = sqlCommand.Parameters["@returnValue"].Value.ToString();
            }
        }
        catch (SqlException)
        {
            //Add exception handling here.
        }
        finally
        {
            sqlConnection.Close();
        }
        //------------------------

        //generowanie czasow
        DateTime t = new DateTime(2000, 1, 1, minHour, 0, 0);
        while (t.Hour < maxHour) 
        {
            startTime.Items.Add(t.ToShortTimeString());
            stopTime.Items.Add(t.ToShortTimeString());
            t = t.AddMinutes(15.0);
        }
    }

    /// <summary>   Event handler. Called by time for text changed events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Event information. </param>

    protected void time_TextChanged(object sender, EventArgs e)
    {
        try
        {
            delay = Int32.Parse(time.Text);
        }
        catch (Exception)
        {
            delay = 15;
        }
    }

    /// <summary>   Event handler. Called by Button1 for click events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Event information. </param>

    protected void Button1_Click(object sender, EventArgs e)
    {
        getAllStudents();
        time_TextChanged(sender, e);

        int groupNum = 0;
        try
        {
            groupNum = Int32.Parse(group.Text);
        }
        catch (Exception)
        {
            groupNum = 4;
        }

        DateTime startDT = DateTime.Parse(start.Text);
        DateTime temp = DateTime.Parse(startTime.SelectedValue);
        startDT = startDT.AddHours(temp.Hour);
        startDT = startDT.AddMinutes(temp.Minute);
        
        if (stop.Text != "")
        {
            DateTime stopDT = DateTime.Parse(stop.Text);
            temp = DateTime.Parse(stopTime.SelectedValue);
            stopDT = stopDT.AddHours(temp.Hour);
            stopDT = stopDT.AddMinutes(temp.Minute);

            if (stopDT.Date < startDT)
                return;

            if (stopDT.Day - startDT.Day > 0)
            {
                int timeAll = 0;
                DateTime current = new DateTime(startDT.Year, startDT.Month, startDT.Day, maxHour, 0, 0);
                TimeSpan ts = current - startDT;
                timeAll += (int)ts.TotalMinutes;

                current = current.AddHours(minHour+(24-maxHour));
                int days = stopDT.Day - current.Day;
                timeAll += days * (maxHour - minHour) * 60;
                current = current.AddDays(days);
                TimeSpan ts2 = stopDT - current;
                timeAll += (int)(ts2.TotalMinutes);
                
                delay = (int)(timeAll / Math.Ceiling((double)studs.Count / groupNum));
                time.Text = delay.ToString();
            }
            else
            {
                TimeSpan ts = stopDT - startDT;
                delay = (int)(ts.TotalMinutes / Math.Ceiling((double)studs.Count/groupNum));
                time.Text = delay.ToString();
            }

            if(delay==0)
                return;
        }

        for (int i = 1; studs.Count > 0; i++)
        {
            Random r = new Random();
            int idx = r.Next(studs.Count);
            setDateToStud(studs.ToArray()[idx], startDT);
            studs.RemoveAt(idx);

            if (i % groupNum == 0)
            {
                if (startDT.Hour == maxHour - 1 && startDT.Minute > 60 - delay)
                {
                    startDT = startDT.AddHours((24 - maxHour) + minHour);
                    startDT = startDT.AddMinutes(60 - startDT.Minute);
                }
                else
                    startDT = startDT.AddMinutes(delay);
            }
        }
        
        Label1.Visible = true;
    }

    /// <summary>   Gets all student's guids. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>

    private void getAllStudents()
    {
        String connectionString = ConfigurationManager.ConnectionStrings["zapisyConnectionString"].ConnectionString;
        SqlConnection sqlConnection = new SqlConnection(connectionString);
        SqlCommand sqlCommand = new SqlCommand("Students_SelID", sqlConnection);
        sqlCommand.CommandType = CommandType.StoredProcedure;
        SqlDataReader sqlDataReader = null;

        try
        {
            sqlConnection.Open();
            sqlDataReader = sqlCommand.ExecuteReader(CommandBehavior.CloseConnection);

            if (sqlDataReader.HasRows)
            {
                while(sqlDataReader.Read())
                    studs.Add(sqlDataReader.GetValue(0));
            }
        }
        catch (SqlException)
        {
            //Add exception handling here.
        }
        finally
        {
            if (sqlDataReader != null) { sqlDataReader.Close(); }
        }
    }

    /// <summary>   Sets a date to stud. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="id">   The identifier. </param>
    /// <param name="t">    Date/Time of the. </param>

    private void setDateToStud(Object id, DateTime t)
    {
        String connectionString = ConfigurationManager.ConnectionStrings["zapisyConnectionString"].ConnectionString;
        SqlConnection sqlConnection = new SqlConnection(connectionString);
        SqlCommand sqlCommand = new SqlCommand("Student_SetDate", sqlConnection);
        sqlCommand.CommandType = CommandType.StoredProcedure;
        sqlCommand.Parameters.Add("@userID", SqlDbType.UniqueIdentifier, 0).Value = id;
        sqlCommand.Parameters.Add("@date", SqlDbType.DateTime, 0).Value = t;

        try
        {
            sqlConnection.Open();
            sqlCommand.ExecuteNonQuery();
        }
        catch (SqlException)
        {
            //Add exception handling here.
        }
        finally
        {
            sqlConnection.Close();
        }
    }
    
}