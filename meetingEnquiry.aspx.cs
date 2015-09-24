using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data;
using System.Data.SqlClient;

public partial class Default3 : System.Web.UI.Page
{
    DB_connect db = new DB_connect();

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            fillHotel();
        }
    }
        
     private void fillHotel()
    {
        DB_connect dc = new DB_connect();
        String hotelqry = "select hotelID,Hotelname from hotels";
        DataTable dt = dc.select(hotelqry);
        ddlHotel.DataValueField = "hotelID";
        ddlHotel.DataTextField = "hotelname";
        ddlHotel.DataSource = dt;
        ddlHotel.DataBind();    
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string hallIDqry = "select hallid from Halls where Hall_Name='" + ddlVenue.Text + "' ";
        string[] meetArray = { ddlHotel.Text, ddlLocation.Text, deDay.Date.ToString(), ddlTime.Text, hallIDqry, txtboxNoOfSeats.Text, ddlTableArrange.Text};
      //  string[] meetCustArray = { ddlSalutation.Text, txtboxFirstName.Text, txtboxLastName.Text, txtboxNationality.Text, txtboxAddress.Text, txtboxCountry.Text, txtboxTelephone.Text, txtboxEmail.Text, txtboxPassortNIC.Text };
        
        Session["meetArray"] = meetArray;
     //   Session["meetCustArrayList"] = meetCustArray;
              
        // string payAmountqry = "select price from MeetingPayments where hotelID=hotelIDqry and inOutVenue='"+ddlLocation+"' and hallId=hallID and Decoration='Yes' and ";
        string payAmountqry = "select mp.price from Meeting mp,Halls h,Hotels hl where hl.hotelname='"+ddlHotel+"' and h.hall_type='" + ddlLocation + "' and h.hallname='"+ddl_Venue+"' and mp.tableArrangement='"+ddlTableArrange.Text+"' ";
        DB_connect db = new DB_connect();
        DataTable dt = db.select(payAmountqry);
        string payAmount = dt.Rows[0][0].ToString();
        Session["payAmount"] = payAmount;

        Response.Redirect("PaymentMethod.aspx");               
    }

    public void fillVenue()
    {
        ddl_Venue.Items.Clear();
        DB_connect dc = new DB_connect();
        String qry = "select h.hall_Name from Halls h,Hotels hl,MeetingReservation mr where h.hallid= mr.hallNum and h.hotelId=hl.hotelID and hl.hotelID='" + ddlHotel.Text + "' and h.hall_Type='" + ddlLocation.Text + "' and h.hallid in(select mr.hallid from MeetingReservation mr,Halls h where h.hallid=mr.hallid and mr.Date='" + deDay.Date + "' and mr.Time != '" + ddlTime.Text + "' or  mr.Date !='" + deDay.Date + "')";
        DataTable dt = dc.select(qry);

        ddl_Venue.DataValueField = "hall_Name";

        int count = dt.Rows.Count;
        if (count != 0)
        {
            for (int i = 0; i < count; i++)
            {
                ddl_Venue.Items.Add(dt.Rows[i][0].ToString());
            }
        }
        else
        {
            lblAvailabilty.Visible = true;
        }
    }

    protected void ddlTime_SelectedIndexChanged(object sender, EventArgs e)
    {
        fillVenue();
    }
}