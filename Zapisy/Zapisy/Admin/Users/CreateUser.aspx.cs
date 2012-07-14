using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;

/// <summary>   Admin users create user page class. </summary>
///
/// <remarks>   Mat, 2011-01-25. </remarks>

public partial class Admin_Users_CreateUser : System.Web.UI.Page
{
    private List<object> qual = new List<object>();

    /// <summary>   Event handler. Called by Page for load events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Event information. </param>

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    /// <summary>   Event handler. Called by CreateUserWizard1 for created user events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Event information. </param>

    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
        String userName = this.CreateUserWizard1.UserName;
        String type = ((DropDownList)this.CreateUserWizardStep1.ContentTemplateContainer.FindControl("type")).SelectedValue;
        String role = String.Empty;

        if (type == "Administrator")
            role = "admin";
        else if (type == "Prowadzący")
            role = "instructor";
        else if (type == "Student")
            role = "student";

        Roles.AddUserToRole(userName,role);

        if (type == "Administrator")
            this.MultiView1.ActiveViewIndex = 3;
        else if (type == "Prowadzący")
            this.MultiView1.ActiveViewIndex = 2;
        else if (type == "Student")
            this.MultiView1.ActiveViewIndex = 1;
    }

    /// <summary>   Event handler. Called by FormView1 for item inserted events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Form view inserted event information. </param>

    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        this.MultiView1.ActiveViewIndex = 3;
    }

    /// <summary>   Event handler. Called by FormView2 for item inserted events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Form view inserted event information. </param>

    protected void FormView2_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        if (e.AffectedRows == 1)
        {
            ListBox q = (ListBox)this.FormView2.FindControl("outqual");

            for (int i = 0; i < q.Items.Count; i++)
            {
                if (q.Items[i].Selected)
                    qual.Add(q.Items[i].Value);
            }

            while (qual.Count > 0)
            {
                this.SqlDataSource4.Insert();
                qual.RemoveAt(0);
            }
        }

        this.MultiView1.ActiveViewIndex = 3;
    }

    /// <summary>   Event handler. Called by SqlDataSource4 for inserting events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Sql data source command event information. </param>

    protected void SqlDataSource4_Inserting(object sender, SqlDataSourceCommandEventArgs e)
    {
        SqlParameter p = new SqlParameter("@qualificationID",System.Data.SqlDbType.UniqueIdentifier);
        p.Value = Guid.Parse((String)qual.ToArray()[0]);  
        e.Command.Parameters.Add(p);

        p = new SqlParameter("@userName",System.Data.SqlDbType.NVarChar);
        p.Value = this.CreateUserWizard1.UserName;
        e.Command.Parameters.Add(p);
    }

    /// <summary>   Event handler. Called by EndButton for click events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Event information. </param>

    protected void EndButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Users/Users.aspx");
    }
}