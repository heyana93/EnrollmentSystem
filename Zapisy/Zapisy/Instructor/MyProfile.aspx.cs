using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Instructor_MyProfile : System.Web.UI.Page
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
        SqlDataSource1.UpdateParameters["userName"].DefaultValue = userName;
    }

    /// <summary>   Event handler. Called by FormView1 for item updated events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Form view updated event information. </param>

    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        Response.Redirect(Request.Url.AbsolutePath);
    }

    /// <summary>   Event handler. Called by Button1 for click events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Event information. </param>

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect(Request.Url.AbsolutePath);
    }
}