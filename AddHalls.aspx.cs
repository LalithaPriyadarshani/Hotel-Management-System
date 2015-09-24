using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AddHalls : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtHotelName.Text = Session["hotel"].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String qry = "select hotelID from hotels where hotelName = '" + Session["hotel"].ToString() + "' ";
        DbConnect con = new DbConnect();
        DataTable dt = con.select(qry);

        String hotelId = dt.Rows [0][0].ToString ();


        String qry2 = "insert into halls values ('"+txtHallName.Text+"' , '"+txtHall_Type .Text+"' , '"+txtNoofSeat .Text+"' , '"+hotelId+"')";

        bool confirm = con.insert(qry2);
        if (confirm == true)
        {
            lblMessage.Text = "Successfully Added";

        }
        else
        {
            lblMessage.Text = "cannot be Added";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtHallName.Text = "";
        txtHall_Type.Text = "";
        txtNoofSeat.Text = "";
        txtHall_Type.Text = "";
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("view New Hotel.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        txtHallName.Text = "sea view A/C Hall";
        txtHall_Type.Text = "Banquet";
        txtNoofSeat.Text = "200";
    }
}