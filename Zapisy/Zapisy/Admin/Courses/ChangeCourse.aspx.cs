using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>   Admin courses change course page class. </summary>
///
/// <remarks>   Mat, 2011-01-25. </remarks>

public partial class Admin_Courses_ChangeCourse : System.Web.UI.Page
{

    /// <summary> The heading </summary>
    public String heading = "Dodaj nowy kurs";

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
            FormView1.DefaultMode = FormViewMode.Edit;
            heading = "Edytuj wybrany kurs";            
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
            Response.Redirect("~/Admin/Courses/Courses.aspx");
        }

    }

    /// <summary>   Event handler. Called by FormView1 for item inserted events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Form view inserted event information. </param>

    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        if (e.AffectedRows == 1)
        {
            Response.Redirect("~/Admin/Courses/Courses.aspx");
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
        if (e.AffectedRows == 1)
        {
            Response.Redirect("~/Admin/Courses/Courses.aspx");
        }
    }
}