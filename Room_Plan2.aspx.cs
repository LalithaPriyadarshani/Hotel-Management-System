using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data ;


public class lblch
{
    public lblch()
    {
        
    }
}
public partial class Room_Plan2 : System.Web.UI.Page
{
    private DataTable data;

    string RoomNo;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            fillFLoor();
           fillGrid();
            retriveImage();

            string[] arr = (string[])Session["data"];

            lblHname.Text = arr[0];
            lblCheckin.Text = arr[1];
            lblCheckout.Text = arr[2];
            lblnights.Text = arr[3] ;
        
        }

        ASPxButton2.Enabled = true;
        ASPxButton3.Enabled = false;
        ASPxButton4.Enabled = false;



    }


    public void fillGrid()
    {

        DataSet ds = new DataSet();
        DataTable dt1 = new DataTable();
        dt1 = (DataTable)Session["roomDet"];//get data table from session
        

        String[][] roomDetails = new String[dt1.Rows.Count][];
        DataTable dt2 = new DataTable();

        String floorNum = ddFloors.Text;

        //for (int i = 0; i < dt1.Rows.Count; i++)

        dt2 = dt1.Clone();
        foreach (DataRow row in dt1.Select("floor_num='" + ddFloors.Text + "'"))
        {

            dt2.ImportRow(row);


        }

        gAvailableRooms.DataSource = dt2;
        gAvailableRooms.DataBind();

    }

    public void fillFLoor()
    {

        String[] floors = (String[]) Session["roomFloor"];
        int count = floors.Length;
        for (int i = 0; i < count; i++)
        {
            ddFloors.Items.Add(floors[i]);
        }

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        retriveImage();

        fillGrid();
    }

    public void retriveImage()
    {
        DbConnect db = new DbConnect();

        string qry = "select floor_image from floor1 where floornum='" + ddFloors.Text + "'";

        DataTable dt = db.select(qry);

        string path = dt.Rows[0][0].ToString();
        Floor_img.ImageUrl = path;
    }
    

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Room_Selection.aspx");
    }
    protected void ASPxButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Room_reservation2.aspx");
    }
    protected void ASPxButton3_Click(object sender, EventArgs e)
    {

    }
    protected void gAvailableRooms_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label10.Text = RoomNo;
    }
    protected void gAvailableRooms_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            int index = Convert.ToInt32(e.CommandArgument);
          
             RoomNo = gAvailableRooms.Rows[index].Cells[1].Text;

             Session["room_no"] = RoomNo;

            

        }
    }
}