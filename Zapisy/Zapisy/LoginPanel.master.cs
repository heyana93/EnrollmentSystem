using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Configuration.Provider;

/// <summary>   Panel for editing the login. </summary>
///
/// <remarks>   Mat, 2011-01-25. </remarks>

public partial class LoginPanel : System.Web.UI.MasterPage
{
    /// <summary>   Event handler. Called by Page for load events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Event information. </param>

    protected void Page_Load(object sender, EventArgs e)
    {
        Login log = (Login)LoginView1.FindControl("Login");
        if (log != null)
            log.Focus();

        if (Roles.IsUserInRole("student"))
        {
            String userName = Page.User.Identity.Name;
            this.Name.Text = getUserName(userName,"student");
            Name.Visible = true;
            Date.Text = getStartDate(userName);
            showDate.Visible = true;
            Date.Visible = true;
        }
        else if (Roles.IsUserInRole("admin"))
        {
            Name.Text = "Administrator";
            Name.Visible = true;
        }
        else if (Roles.IsUserInRole("instructor"))
        {
            String userName = Page.User.Identity.Name;
            this.Name.Text = getUserName(userName,"instructor");
            Name.Visible = true;
        }
        Session["fullName"] = this.Name.Text;
    }

    /// <summary>   Gets a user name. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="userName"> Name of the user. </param>
    /// <param name="userRole"> The user role. </param>
    ///
    /// <returns>   The user name. </returns>

    private String getUserName(String userName, String userRole)
    {
        String result = "";
        String connectionString = ConfigurationManager.ConnectionStrings["zapisyConnectionString"].ConnectionString;
        SqlConnection sqlConnection = new SqlConnection(connectionString);
        SqlCommand sqlCommand = null;
        
        if(userRole=="instructor")
            sqlCommand = new SqlCommand("Instructor_SelName_ByUserName", sqlConnection);
        else if(userRole=="student")
            sqlCommand = new SqlCommand("Student_SelName_ByUserName", sqlConnection);

        sqlCommand.CommandType = CommandType.StoredProcedure;
        sqlCommand.Parameters.Add("@userName", SqlDbType.NVarChar, 0).Value = userName;
        SqlDataReader sqlDataReader = null;

        try
        {
            sqlConnection.Open();
            sqlDataReader = sqlCommand.ExecuteReader(CommandBehavior.CloseConnection);

            if (sqlDataReader.HasRows)
            {
                sqlDataReader.Read();
                result = sqlDataReader.GetString(0);
            }
        }
        catch (SqlException e)
        {
            //Add exception handling here.
            String err = e.ToString();
        }
        finally
        {
            if (sqlDataReader != null) { sqlDataReader.Close(); }
        }

        return result;
    }

    /// <summary>   Gets a start date. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="userName"> Name of the user. </param>
    ///
    /// <returns>   The start date. </returns>

    private String getStartDate(String userName)
    {
        String result = "";
        String connectionString = ConfigurationManager.ConnectionStrings["zapisyConnectionString"].ConnectionString;
        SqlConnection sqlConnection = new SqlConnection(connectionString);
        SqlCommand sqlCommand = new SqlCommand("Student_GetDate", sqlConnection);
        sqlCommand.CommandType = CommandType.StoredProcedure;
        sqlCommand.Parameters.Add("@userName", SqlDbType.NVarChar, 0).Value = userName;
        SqlDataReader sqlDataReader = null;

        try
        {
            sqlConnection.Open();
            sqlDataReader = sqlCommand.ExecuteReader(CommandBehavior.CloseConnection);

            if (sqlDataReader.HasRows)
            {
                sqlDataReader.Read();
                Utilities.StartDate = sqlDataReader.GetDateTime(0);
                result =  Utilities.StartDate.ToShortDateString() + " " +
                          Utilities.StartDate.ToShortTimeString();
            }
        }
        catch (SqlException e)
        {
            //Add exception handling here.
            String err = e.ToString();
        }
        finally
        {
            if (sqlDataReader != null) { sqlDataReader.Close(); }
        }

        return result;
    }
}
