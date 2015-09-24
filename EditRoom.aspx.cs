using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditRoom : System.Web.UI.Page
{
    //DbConnect db = new DbConnect();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //pass session values
            txtRoomNo.Text = Session["RoomNo"].ToString();
            txtRoomtype.Text = Session["RoomType"].ToString();
            txtfloorNo.Text = Session["Floornum"].ToString();
          

        }
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        dbConnect db = new dbConnect();
        string RoomID = Session["RoomID"].ToString();
        string qry = "update Room set RoomNO='" + txtRoomNo.Text + "',roomType='" + txtRoomtype.Text + "',floor_num='" + txtfloorNo.Text + "' where RoomID='"+RoomID+"'";

        bool conf = db.insert(qry);

        if (conf == true)
        {

            LblMsg.Text = "successful";
        }
        else
        {
            LblMsg.Text = "unSuccessful";
        }
      
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("view New Hotel.aspx");
    }
   
}