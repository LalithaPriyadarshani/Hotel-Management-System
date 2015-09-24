using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class view_New_Hotel : System.Web.UI.Page
{
    DbConnect db = new DbConnect();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DbConnect dc = new DbConnect();
            string qry = "select hotelname from hotels";
            DataTable dt = dc.select(qry);

            if (dt != null && dt.Rows.Count != 0)
            {
                int count = dt.Rows.Count;
                for (int i = 0; i < count; i++)
                {
                    ddlHotelName.Items.Add(dt.Rows[i][0].ToString());
                }
            }

            fillroomdetails();

        }

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("EditRoom.aspx");
        
    }
    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("Edit Halls.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void ddlHotelName_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable dt = db.select("select address,location,description from Hotels where hotelname='" + ddlHotelName.Text + "'");
        if (dt != null && dt.Rows.Count != 0)
        {
            txtAddress.Text = dt.Rows[0][0].ToString();
            txtLocation.Text = dt.Rows[0][1].ToString();
            txtLocation.Text = dt.Rows[0][2].ToString();
        }
        fillroomdetails();
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Add New Hotel.aspx");
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        string[] HotelDetails = { ddlHotelName .Text ,txtAddress.Text, txtLocation.Text, txtDescription.Text };
        Session["Hotel_De"] = HotelDetails;
        Response.Redirect("EditHotel.aspx");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddRoom.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditRoom.aspx");
    }


    public void fillroomdetails()
    {
        DbConnect dc = new DbConnect();
        string hotel = ddlHotelName.Text;
        String qry = "select * from Hotels where hotelname = '" + ddlHotelName.Text + "' ";
        DataTable dt = dc.select(qry);  // rooms


        if (dt != null && dt.Rows.Count != 0)  //hotel details
        {
            txtAddress.Text = dt.Rows[0][2].ToString();
            txtLocation.Text = dt.Rows[0][3].ToString();
            txtDescription.Text = dt.Rows[0][4].ToString();
        }
        else
        {
            txtDescription.Text = "error occured";
        }

        String hotelId = dt.Rows[0][0].ToString();
        String qry3 = "select RoomID,RoomNo,Roomtype,floor_num from room where hotelID = '" + hotelId + "' "; // room details
        DataSet ds = dc.getData(qry3);

        if (ds != null)
        {
            gvRoom.DataSource = ds.Tables["ss"];
            gvRoom.DataBind();
        }

        String qry4 = "select HallID,Hall_Name,Hall_Type,NoOfSeats from Halls where HotelID='" + hotelId + "'";
        DataSet ds2 = dc.getData(qry4);  // halls
        if (ds2 != null)
        {
            gvHalls.DataSource = ds2.Tables["ss"];
            gvHalls.DataBind();
        }
        else
        {
            txtAddress.Text = "error";
        }
        

    }


    protected void gvRoom_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {

            int index = Convert.ToInt32(e.CommandArgument);
            //GridViewRow selectedRow = gvRoom.Rows[index];
            string RoomNo = gvRoom.Rows[index].Cells[2].Text;
            string RoomType = gvRoom.Rows[index].Cells[3].Text;
          
            string floornum = gvRoom.Rows[index].Cells[4].Text;

            //pass by session
            Session["RoomID"] = gvRoom.Rows[index].Cells[1].Text;
            Session["RoomNo"] = RoomNo;
            Session["RoomType"] = RoomType;
          
            Session["Floornum"] = floornum;

          

        }
    }
   
    protected void gvHalls_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            //hall details
            int index1 = Convert.ToInt32(e.CommandArgument);
            // GridViewRow selectRow = gvHalls.Rows[index1];
            Session["HallId"] = gvHalls.Rows[index1].Cells[1].Text; ;
            Session["Hall_Name"] = gvHalls.Rows[index1].Cells[2].Text;
            Session["Hall_Type"] = gvHalls.Rows[index1].Cells[3].Text;
            Session["No_Of_Seats"] = gvHalls.Rows[index1].Cells[4].Text;
        }    
    }
}