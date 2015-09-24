using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class SportsManagementForm : System.Web.UI.Page
{
    DbAccess dba = new DbAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
         rdb1.Checked = true;
         chkHotel1.Checked = true;
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
          int minAllowed;
          if (rdb5.Checked == true)//Radio button Input
          {
              minAllowed=5;
          }
          else if (rdb3.Checked == true)
          {
              minAllowed = 3;
          }
          else if (rdb2.Checked == true)
          {
              minAllowed = 2;
          }
          else
          {
              minAllowed = 1;
          }
          //Image Insertion
          string fileName = Path.GetFileName(flImage.PostedFile.FileName);//Get file name is a method of the predifined Path class
          flImage.PostedFile.SaveAs(Server.MapPath("~/Images/Sport_Images/Sport_Uploads/") + fileName);

          //get file path
          string filePath = "~/Images/Sport_Images/Sport_Uploads/" + fileName;
          dba.udiData("insert into Sport(SportName,SportCat,Rate,Description,Image,MinMem) values('" + txtSportName.Text + "','" + cmbSportsCat.Text + "'," + Convert.ToDouble(txtRate.Text) + ",'" + txtDescription.Text + "','" + filePath + "'," + minAllowed + ")");
        
          int sportID = dba.getMaxSportId();
          //insert values in to Sport_Venue table,if check box is checked.
          if (chkHotel1.Checked){
              dba.udiData("insert into Sport_Venue(VenueName,SportID,MaxMem) values ('" + chkHotel1.Text + "'," + sportID + "," + Convert.ToInt16(txtSportMaximum.Text) + ")");//convert string value to integer
          }
          if(chkHotel2.Checked){
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
              dba.udiData("insert into Sport_Venue(VenueName,SportID,MaxMem) values ('" + chkHotel5.Text + "'," + sportID + "," + Convert.ToInt16(txtSportMaximum.Text)+ ")");
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
          //Show Alert Box when successfully inserted.(from java script)then redirect to page.
          ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert(' Sport Item Added Successfully ');document.location='SportsManagement.aspx'", true);
      }
    
      protected void btnClear_Click(object sender, EventArgs e)// clear all feilds
      {
          txtDescription.Text = "";
          txtSportMaximum.Text = "";
          txtSportName.Text = "";
          txtRate.Text = "";
          cmbSportsCat.SelectedValue = "Water Sports";
      }
}
