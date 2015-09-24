using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data;
using System.Data.SqlClient;
using System.Collections;

public partial class meetingEnqiruy2 : System.Web.UI.Page
{
    DbConnect db = new DbConnect();

     protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillHotel();
        }              
    }
    
     protected void btn_submit_Click(object sender, EventArgs e)
     {
        string hallIDqry = "select hallID from Halls where Hall_name='" + ddlVenue.Text + "' ";
         string[] wedArray = { ddlHotel.Text, ddlLocation.Text, deDay.Date.ToString(), ddlTime.Text, hallIDqry, txtboxNoOfSeats.Text, ddlThemeColour.Text };
         string[] wedCustArray = { ddlSalutation.Text, txtboxFirstName.Text, txtboxLastName.Text, txtboxNationality.Text, txtboxAddress.Text, txtboxCountry.Text, txtboxTelephone.Text, txtboxEmail.Text, txtboxPassortNIC.Text };


         Session["wedArray"] = wedArray;
         Session["wedCustArrayList"] = wedCustArray;
               
         if (rbDecoYes.Checked)
         {
             string payAmountqry = "select wp.price from Banquet wp,Hotels hl,Halls h where hl.hotelName='" + ddlHotel.Text + "' and h.HallID=hallIDqry and Decoration='Yes' and wp.hallID=h.HallID";
             
             Session["payAmount"] = payAmountqry;             
         }

         if (rbDecoNo.Checked)
         {
             string payAmountqry = "select wp.price from Banquet wp,Hotels hl,Halls h where hl.hotelname='" + ddlHotel.Text + "' and h.hallID=hallIDqry and Decoration='No' and wp.hallID=h.hallID";
             
             Session["payAmount"] = payAmountqry;                
         }
         Response.Redirect("PaymentMethod.aspx");
     }     
      
     public void fillHotel()
    {
       DbConnect dc = new DbConnect();
        String qry = "select hotelID,hotelname from Hotels";
        DataTable dt = dc.select(qry);
        ddlHotel.DataValueField = "hotelID";
        ddlHotel.DataTextField = "hotelname";
        ddlHotel.DataSource = dt;
        ddlHotel.DataBind();
    }

    /*  fill available venues   */
    public void fillVenue()
    {
       ddlVenue.Items.Clear();
        DbConnect dc = new DbConnect();      
        //String qry = "select h.name from Hall h,Hotels hl,WeddingReservation wr where h.ID=wr.hallID and h.hotelID=hl.hotelID and hl.hotelID='"+ddlHotel.Text+"' and h.type='"+ddlLocation.Text+"' and h.ID in(select wr.hallID from WeddingReservation wr,Hall h where h.ID=wr.hallID and wr.Date='"+deDay.Date+"' and wr.Time != '"+ddlTime.Text+"' or  wr.Date !='"+deDay.Date+"')";
        String qry = "select h.hall_Name from Halls h,Hotels hl where h.HotelID=hl.hotelID and hl.hallID='" + ddlHotel.Text + "' and h.hall_type='" + ddlLocation.Text + "' and h.hallID in(select wr.hallID from BanquetReservation wr,Halls h where h.hallID=wr.hallID and wr.date='" + deDay.Date + "' and wr.time != '" + ddlTime.Text + "' or  wr.date !='" + deDay.Date + "')";
        
        DataTable dt = dc.select(qry);
                
        ddlVenue.DataValueField = "hall_name";//chk for error.
        
        int count = dt.Rows.Count;
        if (count != 0)
        {
            for (int i = 0; i < count; i++)
            {
                ddlVenue.Items.Add(dt.Rows[i][0].ToString());
            }
        }
        else
        {
            lblAvailabilty.Visible = true;
        }
    }
          
    protected void ddl_InOutVenue_SelectedIndexChanged(object sender, EventArgs e)
    {
        fillVenue();       
    } 
}