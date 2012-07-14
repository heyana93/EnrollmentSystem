using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Collections;
using System.Text;
using System.Net;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

/// <summary>   Instructor my terms. </summary>
///
/// <remarks>   Mat, 2011-01-25. </remarks>

public partial class Instructor_MyTerms : System.Web.UI.Page
{

    /// <summary> Name of the user </summary>
    public String userName = "";

    /// <summary> The list of student's names </summary>
    private List<String> studs = new List<String>();

    /// <summary>   Event handler. Called by Page for load events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Event information. </param>

    protected void Page_Load(object sender, EventArgs e)
    {
        userName = Page.User.Identity.Name;
        SqlDataSource1.SelectParameters["userName"].DefaultValue = userName;
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
        String place = GridView1.Rows[e.NewEditIndex].Cells[6].Text + ", " + GridView1.Rows[e.NewEditIndex].Cells[5].Text;
        String courseName = GridView1.Rows[e.NewEditIndex].Cells[2].Text;
        String courseCode = GridView1.Rows[e.NewEditIndex].Cells[1].Text;
        String time = ((Label)GridView1.Rows[e.NewEditIndex].Cells[3].FindControl("Label2")).Text + ", " +
                      ((Label)GridView1.Rows[e.NewEditIndex].Cells[4].FindControl("Label1")).Text;
        String userName = User.Identity.Name;
        String fileName = "Lista studentow-" + courseCode;
        String filePath = Request.PhysicalApplicationPath + "PDFs\\" + userName;
        String imgPath = Server.MapPath("").Substring(0, Server.MapPath("").LastIndexOf("Instructor")) + "Images\\";

        if (!Directory.Exists(filePath))
            Directory.CreateDirectory(filePath);
        
        studs.Clear();
        GetAllStudToDT(term);
        Utilities.StudentListToPDF(studs, filePath, imgPath, fileName,
                                    Session.Contents["fullName"].ToString(), courseName, courseCode,
                                    time, place);
        Response.Redirect("~/PDFs/" + userName + "/" + fileName + ".pdf");
    }

    /// <summary>   Gets all student's name and set to dataTable object. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="t">    The term guid object. </param>

    private void GetAllStudToDT(Object t)
    {
        String connectionString = ConfigurationManager.ConnectionStrings["zapisyConnectionString"].ConnectionString;
        SqlConnection sqlConnection = new SqlConnection(connectionString);
        SqlCommand sqlCommand = new SqlCommand("Enrollment_Sel_ByTermID", sqlConnection);
        sqlCommand.CommandType = CommandType.StoredProcedure;
        sqlCommand.Parameters.Add("@termID", SqlDbType.UniqueIdentifier, 0).Value = Guid.Parse(t.ToString());
        SqlDataReader sqlDataReader = null;        

        try
        {
            sqlConnection.Open();
            sqlDataReader = sqlCommand.ExecuteReader(CommandBehavior.CloseConnection);

            if (sqlDataReader.HasRows)
            {                
                while (sqlDataReader.Read())
                    studs.Add(sqlDataReader.GetString(0));
            }
        }
        catch (SqlException)
        {
            //Add exception handling here.
        }
        finally
        {
            if (sqlDataReader != null)
            {
                sqlDataReader.Close();
            }
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
        String userName = User.Identity.Name;
        String fileName = "Plan zajec-1";
        String filePath = Request.PhysicalApplicationPath + "PDFs\\" + userName;
        String imgPath = Server.MapPath("").Substring(0, Server.MapPath("").LastIndexOf("Instructor")) + "Images\\";

        if (!Directory.Exists(filePath))
            Directory.CreateDirectory(filePath);

        DataTable dt = new DataTable();
        for (int i = 0; i < 6; i++)
            dt.Columns.Add(i.ToString());
        foreach (GridViewRow row in GridView1.Rows)
        {
            DataRow datarw;
            datarw = dt.NewRow();
            datarw[0] = row.Cells[1].Text;
            datarw[1] = row.Cells[2].Text;
            datarw[2] = ((Label)row.Cells[3].FindControl("Label2")).Text;
            datarw[3] = ((Label)row.Cells[4].FindControl("Label1")).Text;
            datarw[4] = row.Cells[5].Text;
            datarw[5] = row.Cells[6].Text;            
            dt.Rows.Add(datarw);
        }

        Utilities.ScheduleToPDF(dt, filePath, imgPath, fileName,
                                    Session.Contents["fullName"].ToString());
        Response.Redirect("~/PDFs/" + userName + "/" + fileName + ".pdf");
    }
}
