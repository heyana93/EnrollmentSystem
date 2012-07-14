using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Specialized;
using System.Collections;

/// <summary>   Admin buildings page class. </summary>
///
/// <remarks>   Mat, 2011-01-25. </remarks>

public partial class Admin_Buildings_Buildings : System.Web.UI.Page
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

    /// <summary>   Event handler. Called by GridView1 for row editing events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Grid view edit event information. </param>

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        IOrderedDictionary allPar = GridView1.DataKeys[e.NewEditIndex].Values;
        String[] par = new String[2];
        int i = 0;

        foreach (DictionaryEntry entry in allPar)
        {
            par[i] = entry.Value.ToString();
            i++;
        }

        String urlString = String.Format("~/Admin/Buildings/ChangeBuilding.aspx?building1={0}&building2={1}",
             par[0], par[1]);
        Response.Redirect(urlString);
    }

    /// <summary>   Event handler. Called by Button1 for click events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Event information. </param>

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Buildings/ChangeBuilding.aspx");
    }
}