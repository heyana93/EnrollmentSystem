using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

/// <summary>   Admin terms change term page class. </summary>
///
/// <remarks>   Mat, 2011-01-25. </remarks>

public partial class Admin_Terms_ChangeTerm : System.Web.UI.Page
{

    /// <summary> The dataView variable </summary>
    private DataView dv;

    /// <summary>   Event handler. Called by Page for load events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Event information. </param>

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Keys.Count == 0)
        {
            Response.Redirect("~/Admin/Terms/Terms.aspx");
        }

        dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
    }

    /// <summary>   Event handler. Called by FormView1 for item command events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Form view command event information. </param>

    protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
    {
        if (e.CommandName == "Cancel")
        {
            Response.Redirect("~/Admin/Terms/Terms.aspx");
        }
    }

    /// <summary>   Event handler. Called by FormView1 for item updated events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Form view updated event information. </param>

    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        Response.Redirect("~/Admin/Terms/Terms.aspx");
    }

    /// <summary>   Event handler. Called by CustomValidator1 for server validate events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="source">   Source for the. </param>
    /// <param name="args">     Server validate event information. </param>

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {         
        bool c1 = ((DropDownList)this.FormView1.FindControl("day")).SelectedValue == dv.Table.Rows[0][4].ToString();
        bool c2 = ((TextBox)this.FormView1.FindControl("FinishTimeTextBox")).Text == dv.Table.Rows[0][6].ToString();
        bool c3 = ((TextBox)this.FormView1.FindControl("StartTimeTextBox")).Text == dv.Table.Rows[0][5].ToString();
        
        if(c1 && c2 && c3)
            args.IsValid = true;
        else
            args.IsValid = ValidateTerm();
    }

    /// <summary>   Checks to validate term. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <returns>   true if it succeeds, false if it fails. </returns>

    private bool ValidateTerm()
    {
        bool result = false;

        String connectionString = ConfigurationManager.ConnectionStrings["zapisyConnectionString"].ConnectionString;
        SqlConnection sqlConnection = new SqlConnection(connectionString);
        SqlCommand sqlCommand = new SqlCommand("Terms_Validate", sqlConnection);
        sqlCommand.CommandType = CommandType.StoredProcedure;
        sqlCommand.Parameters.Add("@instructorID", SqlDbType.UniqueIdentifier, 0).Value =
            Guid.Parse(((DropDownList)this.FormView1.FindControl("instr")).SelectedValue);
        sqlCommand.Parameters.Add("@day", SqlDbType.NVarChar, 3).Value =
            ((DropDownList)this.FormView1.FindControl("day")).SelectedValue;
        sqlCommand.Parameters.Add("@startTime", SqlDbType.Time, 7).Value =
            ((TextBox)this.FormView1.FindControl("StartTimeTextBox")).Text;
        sqlCommand.Parameters.Add("@finishTime", SqlDbType.Time, 7).Value =
            ((TextBox)this.FormView1.FindControl("FinishTimeTextBox")).Text;
        SqlDataReader sqlDataReader = null;

        try
        {
            sqlConnection.Open();
            sqlDataReader = sqlCommand.ExecuteReader(CommandBehavior.CloseConnection);

            if (!sqlDataReader.HasRows)
            {
                result = true;
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

        return result;
    }

    /// <summary>   Event handler. Called by CustomValidator2 for server validate events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="source">   Source for the. </param>
    /// <param name="args">     Server validate event information. </param>

    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        bool c1 = ((DropDownList)this.FormView1.FindControl("day")).SelectedValue == dv.Table.Rows[0][4].ToString();
        bool c2 = ((TextBox)this.FormView1.FindControl("finishTimeTextBox")).Text == dv.Table.Rows[0][6].ToString();
        bool c3 = ((TextBox)this.FormView1.FindControl("startTimeTextBox")).Text == dv.Table.Rows[0][5].ToString();
        bool c4 = ((TextBox)this.FormView1.FindControl("ClassroomTextBox")).Text == dv.Table.Rows[0][7].ToString();
        bool c5 = ((TextBox)this.FormView1.FindControl("BuildingTextBox")).Text == dv.Table.Rows[0][8].ToString();

        if (c1 && c2 && c3 && c4 && c5)
            args.IsValid = true;
        else
            args.IsValid = ValidatePlace();
    }

    /// <summary>   Checks to validate place. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <returns>   true if it succeeds, false if it fails. </returns>

    private bool ValidatePlace()
    {
        bool result = false;

        String connectionString = ConfigurationManager.ConnectionStrings["zapisyConnectionString"].ConnectionString;
        SqlConnection sqlConnection = new SqlConnection(connectionString);
        SqlCommand sqlCommand = new SqlCommand("Terms_Validate2", sqlConnection);
        sqlCommand.CommandType = CommandType.StoredProcedure;
        sqlCommand.Parameters.Add("@building", SqlDbType.NVarChar, 128).Value =
            ((TextBox)this.FormView1.FindControl("BuildingTextBox")).Text;
        sqlCommand.Parameters.Add("@classroom", SqlDbType.NVarChar, 128).Value =
            ((TextBox)this.FormView1.FindControl("ClassroomTextBox")).Text;
        sqlCommand.Parameters.Add("@day", SqlDbType.NVarChar, 3).Value =
            ((DropDownList)this.FormView1.FindControl("day")).SelectedValue;
        sqlCommand.Parameters.Add("@startTime", SqlDbType.Time, 7).Value =
            ((TextBox)this.FormView1.FindControl("StartTimeTextBox")).Text;
        sqlCommand.Parameters.Add("@finishTime", SqlDbType.Time, 7).Value =
            ((TextBox)this.FormView1.FindControl("FinishTimeTextBox")).Text;
        SqlDataReader sqlDataReader = null;

        try
        {
            sqlConnection.Open();
            sqlDataReader = sqlCommand.ExecuteReader(CommandBehavior.CloseConnection);

            if (!sqlDataReader.HasRows)
            {
                result = true;
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

        return result;
    }

    /// <summary>   Event handler. Called by SqlDataSource1 for updating events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Sql data source command event information. </param>

    protected void SqlDataSource1_Updating(object sender, SqlDataSourceCommandEventArgs e)
    {
        e.Command.Parameters["@termCode"].Value = Utilities.GetCourseCode(
            ((TextBox)this.FormView1.FindControl("BuildingTextBox")).Text,
            ((TextBox)this.FormView1.FindControl("ClassroomTextBox")).Text,
            ((DropDownList)this.FormView1.FindControl("day")).Text,
            ((TextBox)this.FormView1.FindControl("StartTimeTextBox")).Text);
    }    
}