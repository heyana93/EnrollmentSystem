using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>   Admin users page class. </summary>
///
/// <remarks>   Mat, 2011-01-25. </remarks>

public partial class Admin_Users_Users : System.Web.UI.Page
{
    /// <summary>   Event handler. Called by Page for load events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Event information. </param>

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /// <summary>   Event handler. Called by type for selected index changed events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Event information. </param>

    protected void type_SelectedIndexChanged(object sender, EventArgs e)
    {
        String type = this.type.SelectedValue;

        if (type == "Administrator")
            this.MultiView1.ActiveViewIndex = 2;
        else if (type == "Prowadzący")
            this.MultiView1.ActiveViewIndex = 1;
        else if (type == "Student")
            this.MultiView1.ActiveViewIndex = 0;
    }

    /// <summary>   Role to string in readable format. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="s">    The string. </param>
    ///
    /// <returns>   . </returns>

    public string RoleToString(string s)
    {
        if (string.IsNullOrEmpty(s))
            return "Brak";
        else if (s == "admin")
            return "Administrator";
        else if (s == "student")
            return "Student";
        else if (s == "instructor")
            return "Prowadzący";

        return "";
    }

    /// <summary>   Event handler. Called by Button1 for click events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Event information. </param>

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Users/CreateUser.aspx");
    }

    /// <summary>   Event handler. Called by GridView1 for row editing events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Grid view edit event information. </param>

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        String par = GridView1.DataKeys[e.NewEditIndex].Value.ToString();
        int type1 = this.MultiView1.ActiveViewIndex;
        String urlString = String.Format("~/Admin/Users/ChangeUser.aspx?userID={0}&type={1}", par,type1);
        Response.Redirect(urlString);
    }

    /// <summary>   Event handler. Called by GridView2 for row editing events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Grid view edit event information. </param>

    protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
    {
        String par = GridView2.DataKeys[e.NewEditIndex].Value.ToString();
        int type1 = this.MultiView1.ActiveViewIndex;
        String urlString = String.Format("~/Admin/Users/ChangeUser.aspx?userID={0}&type={1}", par, type1);
        Response.Redirect(urlString);
    }
}