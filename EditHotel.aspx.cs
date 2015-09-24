using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class EditHotel : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            String[] EditHotel = (string[])Session["Hotel_De"];
            txtHotelName.Text = EditHotel[0];
            txtAddress.Text = EditHotel[1];
            txtLocation.Text = EditHotel[2];
            txtDescription .Text = EditHotel [3];

            String hName = EditHotel[0];
            string qry1 = "select * from hotels where hotelname = '" + hName + "'  ";
            DbConnect dc = new DbConnect();
            DataTable dt = dc.select(qry1);
            if (dt == null )
            {
                LblMsg.Text = "load error";
            }
            else
            {
                txtHotelName.Text = dt.Rows[0][1].ToString();
                txtAddress.Text = dt.Rows[0][2].ToString();
                txtLocation.Text = dt.Rows[0][3].ToString();
                txtDescription.Text = dt.Rows[0][4].ToString();

            }

        }
        

        

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        
        DbConnect dc = new DbConnect();
        String getHID = "select hotelID from Hotels where hotelname = '"+txtHotelName .Text+"'";
        DataTable hID = dc.select(getHID );  // get hotel id
        //txtLocation.Text = hID.Rows[0][0].ToString();
        String hotelId = hID.Rows[0][0].ToString();

        

        if (hotelId == null)
        {
            LblMsg.Text = "error id";
        }
        else
        {

           
            String query = "update Hotels set hotelname = '" + txtHotelName.Text + "' , address = '" + txtAddress.Text + "' , location = '" + txtLocation.Text + "' , description = '" + txtDescription.Text + "' where hotelID ='"+hotelId+"' ";
            //String updateHotel = "update hotels set hotel_name = '" + txtHotelName.Text + "'  , address = '" + txtAddress.Text + "' , location = '" + txtLocation.Text + "' , description = '" + txtDescription.Text + "' where hotelid = '" + hotelId + "' ";
            bool conf = dc.insert(query);


            if (conf == true)
            {
                LblMsg.Text = "Successful";

            }
            else
            {
                LblMsg.Text = "error";
            }

            //Response.Redirect(Request.RawUrl);
        }
    }
    protected void txtNext_Click(object sender, EventArgs e)
    {
        Response.Redirect("view new hotel.aspx");
    }
}