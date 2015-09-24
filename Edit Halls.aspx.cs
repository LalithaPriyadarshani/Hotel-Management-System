using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Edit_Halls : System.Web.UI.Page
{
   DbConnect db = new DbConnect();
    protected void Page_Load(object sender, EventArgs e)
    {//take hall details

        if (!IsPostBack)
        {
            txtHallName.Text = Session["Hall_Name"].ToString();
            txtHall_type.Text = Session["Hall_Type"].ToString();
            lblNoofseat.Text = Session["No_Of_Seats"].ToString();
           
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        string hallId=Session["HallId"].ToString();
        string qry = "update Halls set Hall_Name='" + txtHallName.Text + "',Hall_Type='" + txtHall_type.Text + "',NoOfSeats='" + lblNoofseat.Text + "' where HallID='" + hallId + "'";

        bool conf = db.insert(qry);

        if (conf == true)
        {
            lblMsg.Text = "Successful";
        }
        else
        {
            lblMsg.Text = "Unsuccessful";
        }

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("view New Hotel.aspx");
    }
}