using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class SportsDetails : System.Web.UI.Page
{
    DbAccess dba = new DbAccess();
    private int sportID;
 
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {//Get the requested sport ID on page load and covert it o int
        sportID=Convert.ToInt32(Request.QueryString["Id"]);
        LoadDetails(sportID);//load Details of the Sport ID
        }   
    }    

    public void LoadDetails(int sportID)
    {
        DataTable dt1= dba.getSportDetails(sportID);
        DataTable dt2 = dba.getSportVenues(sportID);
        string venues="";
        string sprtCat = dt1.Rows[0]["SportCatCol"].ToString();

        if (dt1.Rows.Count > 0) // Check if the DataTable returns any data from database
        {
            lblFee.Text = dt1.Rows[0]["RateCol"].ToString();
            lblSportCat.Text = dt1.Rows[0]["SportCatCol"].ToString();
            lblDescription.Text = dt1.Rows[0]["DescriptionCol"].ToString();
            lblSportName.Text = dt1.Rows[0]["SportNameCol"].ToString();
            lblSportID.Text = dt1.Rows[0]["SportIDCol"].ToString();
            lblMinMem.Text = dt1.Rows[0]["MinMemCol"].ToString();
            picone.ImageUrl = dt1.Rows[0]["ImageCol"].ToString();
        }
        if (dt2.Rows.Count > 0)
        {            
            foreach(DataRow row in dt2.Rows)
            {
                 venues= venues+ ","+(row["VenueNameCol"]).ToString();
            }

            lblVenue.Text=venues;
        }
        if(sprtCat!= "Water Sports")
        {
           btnBookNow.Visible = false;
        }
    }

    /*public Image byteArrayToImage(byte[] byteArrayIn)
    {
        MemoryStream ms = new MemoryStream(byteArrayIn);
        Image returnImage = Image;
        return returnImage;
    }*/
    protected void btnRmv_Click(object sender, EventArgs e)
    {
        sportID = Convert.ToInt32(Request.QueryString["Id"]);
        if (dba.DeleteSport(sportID))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert(' Sport Item Deleted Successfully ');document.location='ViewSportsCategory.aspx'", true);
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert(' There are active bookings for this Sport Item. It can not be deleted right now. ');document.location='ViewSportsCategory.aspx'", true);
        }
    }

    protected void btnBookNow_Click(object sender, EventArgs e)
    {      
        sportID = Convert.ToInt32(Request.QueryString["Id"]);
        Response.Redirect("~/BookSports.aspx?Id=" + sportID);
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        sportID = Convert.ToInt32(Request.QueryString["Id"]);
        Response.Redirect("~/EditSports.aspx?Id="+sportID);//we can add parameter to link like this
    }
}