using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

/// <summary>   Students terms page class. </summary>
///
/// <remarks>   Mat, 2011-01-25. </remarks>

public partial class Student_Terms_Terms : System.Web.UI.Page
{

    /// <summary> Name of the user </summary>
    public String userName = "";

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

        if (Session.Contents["accessDenied"] != null)
        {
            message2.Visible = true;
            m2.Text = "Brak dostępu do zapisów, spróbuj ponownie! " +
                       "Twój termin widoczny jest w panelu logowania. ";
            Session.Contents.Remove("accessDenied");
        }

        if (Session.Contents["result"] == null)
            return;

        if (Session.Contents["result"].ToString() == "True")
        {
            message1.Visible = true;
            m1.Text = "Zapis na kurs " + Session.Contents["termCode"].ToString() +
                      " wykonano poprawnie.";
            //Session.Contents["msg"].ToString();
        }
        else if (Session.Contents["result"].ToString() == "False")
        {
            message2.Visible = true;
            m2.Text = "Wystąpił błąd poczas zapisu na kurs "
                       + Session.Contents["termCode"].ToString() + ".\r\n";
            m2.Text += Session.Contents["msg"].ToString();
        }

        Session.Contents.Remove("result");
        Session.Contents.Remove("termCode");
        Session.Contents.Remove("msg");
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

        bool result = delStudEnrollment(userName, term);
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
        if (Utilities.StartDate.CompareTo(DateTime.Now) <= 0)
            Response.Redirect("~/Student/Terms/ChangeTerms.aspx");
        else
        {
            Session["accessDenied"] = "True";
            Response.Redirect("~/Student/Terms/MyTerms.aspx");
        }
    }

    /// <summary>   Deletes the stud enrollment. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="userName"> Name of the user. </param>
    /// <param name="t">        The object guid for enrollment . </param>
    ///
    /// <returns>   true if it succeeds, false if it fails. </returns>

    private bool delStudEnrollment(string userName, Object t)
    {
        bool result = true;
        String connectionString = ConfigurationManager.ConnectionStrings["zapisyConnectionString"].ConnectionString;
        SqlConnection sqlConnection = new SqlConnection(connectionString);
        SqlCommand sqlCommand = new SqlCommand("Enrollment_Del", sqlConnection);
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
            //Session["msg"] = e.Message;
            result = false;
            //Add exception handling here.
        }
        finally
        {
            sqlConnection.Close();
        }

        return result;
    }
}