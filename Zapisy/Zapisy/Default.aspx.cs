using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>   Default page class. </summary>
///
/// <remarks>   Mat, 2011-01-25. </remarks>

public partial class Default : System.Web.UI.Page
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

    /// <summary>   Event handler. Called by ListView1 for data bound events. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="sender">   Source of the event. </param>
    /// <param name="e">        Event information. </param>

    protected void ListView1_DataBound(object sender, EventArgs e)
    {
        if (ListView1.Items.Count > 0)
        {
            ((DataPager)ListView1.FindControl("DataPager1")).PageSize = 5;
            int pages = (int)Math.Ceiling(((DataPager)ListView1.FindControl("DataPager1")).TotalRowCount /
                        (double)((DataPager)ListView1.FindControl("DataPager1")).PageSize);

            if (pages < 5)
            {
                ((DataPager)ListView1.FindControl("DataPager1")).Visible = false;
            }
        }
    }
}