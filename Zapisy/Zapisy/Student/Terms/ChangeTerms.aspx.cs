using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

/// <summary>   Student change terms page class. </summary>
///
/// <remarks>   Mat, 2011-01-25. </remarks>

public partial class Student_Terms_Terms : System.Web.UI.Page
{
    /// <summary> The message </summary>
    String msg = "";

    /// <summary>   Event handler. Called by Page for load events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Event information. </param>

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Utilities.StartDate.CompareTo(DateTime.Now) > 0)
        {
            Session["accessDenied"] = "True";
            Response.Redirect("~/Student/Terms/MyTerms.aspx");
        }
    }

    /// <summary>   Event handler. Called by GridView1 for row editing events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Grid view edit event information. </param>

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Object term = GridView1.DataKeys[e.NewEditIndex].Value.ToString();
        String userName = User.Identity.Name;
        bool result = enrollStudent1(userName, term);
        String termCode = GridView1.Rows[e.NewEditIndex].Cells[1].Text;
        setMessageInfo(result, termCode);
        Response.Redirect("~/Student/Terms/MyTerms.aspx");
    }

    /// <summary>   Event handler. Called by Button1 for click events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Event information. </param>

    protected void Button1_Click(object sender, EventArgs e)
    {
        String userName = User.Identity.Name;
        bool result = enrollStudent2(userName, tc.Text);
        setMessageInfo(result, tc.Text);
        Response.Redirect("~/Student/Terms/MyTerms.aspx");
    }

    /// <summary>   Enrollment for student by term guid. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="userName"> Name of the user. </param>
    /// <param name="t">        The term guid object. </param>
    ///
    /// <returns>   true if it succeeds, false if it fails. </returns>

    private bool enrollStudent1(string userName, Object t)
    {
        bool result = true;
        String connectionString = ConfigurationManager.ConnectionStrings["zapisyConnectionString"].ConnectionString;
        SqlConnection sqlConnection = new SqlConnection(connectionString);
        SqlCommand sqlCommand = new SqlCommand("Enrollment_InsByUName", sqlConnection);
        sqlCommand.CommandType = CommandType.StoredProcedure;
        sqlCommand.Parameters.Add("@termID", SqlDbType.UniqueIdentifier, 0).Value = Guid.Parse(t.ToString());
        sqlCommand.Parameters.Add("@userName", SqlDbType.NVarChar, 0).Value = userName;

        try
        {
            sqlConnection.Open();
            sqlCommand.ExecuteNonQuery();
        }
        catch (SqlException e)
        {
            msg = e.Message;
            result = false;
            //Add exception handling here.
        }
        finally
        {
            sqlConnection.Close();
        }

        return result;
    }

    /// <summary>   Enrollment for student by term code. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="userName"> Name of the user. </param>
    /// <param name="t">        The term guid object. </param>
    ///
    /// <returns>   true if it succeeds, false if it fails. </returns>

    private bool enrollStudent2(string userName, String t)
    {
        bool result = true;
        String connectionString = ConfigurationManager.ConnectionStrings["zapisyConnectionString"].ConnectionString;
        SqlConnection sqlConnection = new SqlConnection(connectionString);
        SqlCommand sqlCommand = new SqlCommand("Enrollment_InsByTermCode", sqlConnection);
        sqlCommand.CommandType = CommandType.StoredProcedure;
        sqlCommand.Parameters.Add("@termCode", SqlDbType.NVarChar, 0).Value = t;
        sqlCommand.Parameters.Add("@userName", SqlDbType.NVarChar, 0).Value = userName;

        try
        {
            sqlConnection.Open();
            sqlCommand.ExecuteNonQuery();
        }
        catch (SqlException e)
        {
            msg = e.Message;
            result = false;
            //Add exception handling here.
        }
        finally
        {
            sqlConnection.Close();
        }

        return result;
    }

    /// <summary>   Sets a message information. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="result">   true to result. </param>
    /// <param name="tc">       The term code. </param>

    private void setMessageInfo(bool result, String tc)
    {
        Session["result"] = result.ToString();
        Session["termCode"] = tc;
        Session["msg"] = msg;
    }    
}