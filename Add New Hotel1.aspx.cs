using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Add_New_Hotel1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        txtHotelName.Text = "";
        txtAddress.Text = "";
        txtLocation.Text = "";
        txtDescription.Text = "";
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddRoom1.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        DbConnect con = new DbConnect();
        String qry = "insert into Hotels values ('" + txtHotelName.Text + "', '" + txtAddress.Text + "','" + txtLocation.Text + "','" + txtDescription.Text + "')";
        bool confirm = con.insert(qry);

        if (confirm == true && txtHotelName.Text != null)
        {
            LblMsg.Text = "Successfully Added";

            Session["hotel"] = txtHotelName.Text;
            //Response.Redirect("AddRoom.aspx");
        }
        else
        {
            LblMsg.Text = "cannot be Added";
        }
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        txtHotelName.Text = "benthota marina";
        txtAddress.Text = "102/benthota";
        txtLocation.Text = "Gall";
        txtDescription.Text = "Give the better service to the customer ";
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        DbConnect da = new DbConnect();
        fuFloorImage.SaveAs(Server.MapPath("room_img/" + fuFloorImage.PostedFile.FileName));
        string url = "room_img/" + fuFloorImage.PostedFile.FileName;

        // get hotel id
        String qry = "select max(hotelID) from hotels";
        DataTable dt = da.select(qry);
        String hotelID = dt.Rows[0][0].ToString();


        String qry2 = "insert into floor1 (hotel_ID , floorNum, floor_Image) values('" + hotelID + "' , '" + ddlFloorNum.Text + "' , '" + url + "')";

        bool conf = da.insert(qry2);

        if (conf == true)
        {
            lblMessage.Text = "successfully added";
        }
        else
        {
            lblMessage.Text = "error occured";
        }
    }
}