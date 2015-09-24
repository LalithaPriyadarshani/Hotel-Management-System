using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewSportCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btnWaterSports_Click(object sender, EventArgs e)
    {
        //Pass the text water sport to the URL "cat" parameter
        Response.Redirect("~/ViewSportItemList.aspx?cat=Water Sports");
    }
    protected void btnAdventure_Click(object sender, EventArgs e)
    {
        //Pass the text "Adventure" to the URL "cat" parameter
        Response.Redirect("~/ViewSportItemList.aspx?cat=Adventure");
    }

    protected void btnCycling_Click(object sender, EventArgs e)
    {
        //Pass the text "Cycling" to the URL "cat" parameter
        Response.Redirect("~/ViewSportItemList.aspx?cat=Cycling");
    }
    protected void btnCamping_Click(object sender, EventArgs e)
    {
        //Pass the text "Camping" to the URL "cat" parameter
        Response.Redirect("~/ViewSportItemList.aspx?cat=Camping");
    }
    protected void ASPxButton6_Click(object sender, EventArgs e)
    {
        //Pass the text "Other" to the URL "cat" parameter
        Response.Redirect("~/ViewSportItemList.aspx?cat=Other");
    }
}