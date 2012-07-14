using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>   Admin users change user page class. </summary>
///
/// <remarks>   Mat, 2011-01-25. </remarks>

public partial class Admin_Users_ChangeUser : System.Web.UI.Page
{
    /// <summary>   Event handler. Called by Page for load events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Event information. </param>

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Keys.Count > 0)
        {
            int type = 0;
            try
            {
                type = Int32.Parse(Request.QueryString["type"]);
            }
            catch(Exception)
            {}

            this.MultiView1.ActiveViewIndex = type;
        }        
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
            Response.Redirect("~/Admin/Users/Users.aspx");
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
        Response.Redirect("~/Admin/Users/Users.aspx");
    } 
}