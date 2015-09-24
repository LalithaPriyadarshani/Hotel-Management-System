using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class EditSport : System.Web.UI.Page
{
    DbAccess dba = new DbAccess();
    private int sportID;

    protected void Page_Load(object sender, EventArgs e)
    {
        sportID = Convert.ToInt32(Request.QueryString["Id"]);//Get the requested sport ID(from url) on page load and convert it o int
        LoadDetails(sportID);//load Details of the Sport ID
        flImage.Enabled=true;/////
    }    

    public void LoadDetails(int sportID)
    {
        if (!IsPostBack)
        {
            DataTable dt1 = dba.getSportDetails(sportID);//to fill text feilds
            DataTable dt2 = dba.getSportVenues(sportID);//to fill check boxes
            int min;            
            if (dt1.Rows.Count > 0)//Check if the DataTable returns any data from database
            {
                txtSportMaximum.Text = dt2.Rows[0]["MaxMemCol"].ToString();//////
                txtRate.Text = dt1.Rows[0]["RateCol"].ToString();
                txtDescription.Text = dt1.Rows[0]["DescriptionCol"].ToString();
                txtSportName.Text = dt1.Rows[0]["SportNameCol"].ToString();
                cmbSportscat.SelectedValue = dt1.Rows[0]["SportNameCol"].ToString();
                min = Convert.ToInt32(dt1.Rows[0]["MinMemCol"]);//get radio button values here
                picone.ImageUrl = dt1.Rows[0]["ImageCol"].ToString();
                flImage.Visible = false;//Hide Image Uploader on page load
                flImage.Enabled = false;

                if (min == 1)//to mark raido buttons
                {
                    rdb1.Checked = true;
                }
                else if (min == 2)
                {
                    rdb2.Checked = true;
                }
                else if (min == 3)
                {
                    rdb3.Checked = true;
                }
                else
                {
                    rdb5.Checked = true;
                }
            }            
            for (int i = 0; i < dt2.Rows.Count; i++) //access all rows we got from getSportsVenues() into dt2
            {
                txtSportMaximum.Text = dt2.Rows[i]["MaxMemCol"].ToString();//////
                string venue = dt2.Rows[i]["VenueNameCol"].ToString(); //Get the venue data column value of each row
                
                if (chkHotel1.Text == venue)//Check all the venue names by using if conditions
                {
                    chkHotel1.Checked = true;
                }
                if (chkHotel2.Text == venue)
                {
                    chkHotel2.Checked = true;
                }
                if (chkHotel3.Text == venue)
                {
                    chkHotel3.Checked = true;
                }
                if (chkHotel4.Text == venue)
                {
                    chkHotel4.Checked = true;
                }
                if (chkHotel5.Text == venue)
                {
                    chkHotel5.Checked = true;
                }
                if (chkHotel6.Text == venue)
                {
                    chkHotel6.Checked = true;
                }
                if (chkHotel7.Text == venue)
                {
                    chkHotel7.Checked = true;
                }
                if (chkOther.Text == venue)
                {
                    chkOther.Checked = true;
                }
            }
        }        
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {        
        if (flImage.Visible == true)//Check if the user has added a new image
        {
            string fileName = Path.GetFileName(flImage.PostedFile.FileName);
            flImage.PostedFile.SaveAs(Server.MapPath("~/Images/Sport_Images/Sport_Uploads/") + fileName);            
            string filePath = "Images/Sport_Images/Sport_Uploads/" + fileName;//get file path
            //Sql Query
            dba.udiData("update Sport set SportName='" + txtSportName.Text + "',SportCat='" + cmbSportscat.Text + "',Rate=" + Convert.ToInt64(txtRate.Text) + ",Description='" + txtDescription.Text + "',Image='"+filePath+"' where SportID=" + sportID);
        }
        else//If the user has not added a new image update query is different
        {
            dba.udiData("update Sport set SportName='" + txtSportName.Text + "',SportCat='" + cmbSportscat.Text + "',Rate=" + Convert.ToInt64(txtRate.Text) + ",Description='" + txtDescription.Text + "' where SportID=" + sportID);
        }
        //To upddate sport venues first we have to delete all venues
        dba.udiData("delete from Sport_Venue where SportID=" + sportID);
        //Insert updated values
        if (chkHotel1.Checked)
        {
            dba.udiData("insert into Sport_Venue(VenueName,SportID,MaxMem) values ('" + chkHotel1.Text + "'," + sportID + "," + Convert.ToInt16(txtSportMaximum.Text) + ")");
        }
        if (chkHotel2.Checked)
        {
            dba.udiData("insert into Sport_Venue(VenueName,SportID,MaxMem) values ('" + chkHotel2.Text + "'," + sportID + "," + Convert.ToInt16(txtSportMaximum.Text) + ")");
        }
        if (chkHotel3.Checked)
        {
            dba.udiData("insert into Sport_Venue(VenueName,SportID,MaxMem) values ('" + chkHotel3.Text + "'," + sportID + "," + Convert.ToInt16(txtSportMaximum.Text) + ")");
        }
        if (chkHotel4.Checked)
        {
            dba.udiData("insert into Sport_Venue(VenueName,SportID,MaxMem) values ('" + chkHotel4.Text + "'," + sportID + "," + Convert.ToInt16(txtSportMaximum.Text) + ")");
        }
        if (chkHotel5.Checked)
        {
            dba.udiData("insert into Sport_Venue(VenueName,SportID,MaxMem) values ('" + chkHotel5.Text + "'," + sportID + "," + Convert.ToInt16(txtSportMaximum.Text) + ")");
        }
        if (chkHotel6.Checked)
        {
            dba.udiData("insert into Sport_Venue(VenueName,SportID,MaxMem) values ('" + chkHotel6.Text + "'," + sportID + "," + Convert.ToInt16(txtSportMaximum.Text) + ")");
        }
        if (chkHotel7.Checked)
        {
            dba.udiData("insert into Sport_Venue(VenueName,SportID,MaxMem) values ('" + chkHotel7.Text + "'," + sportID + "," + Convert.ToInt16(txtSportMaximum.Text) + ")");
        }
        if (chkOther.Checked)
        {
            dba.udiData("insert into Sport_Venue(VenueName,SportID,MaxMem) values ('" + chkOther.Text + "'," + sportID + "," + Convert.ToInt16(txtSportMaximum.Text) + ")");
        }
        //Show Alert Box when successfully updated then redirect to page
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert(' Details Updated Successfully ');document.location='SportsManagement.aspx'", true);
    }    

    protected void btnClear_Click(object sender, EventArgs e)//Reload the original values to all fields
    {
        sportID = Convert.ToInt32(Request.QueryString["Id"]);
        LoadDetails(sportID);//load Details of the Sport ID
    }

    protected void btnChnImg_Click(object sender, EventArgs e)
    {
        picone.Visible = false;
        flImage.Visible = true;
        flImage.Enabled = true;
        btnChnImg.Visible = false;
    }
}