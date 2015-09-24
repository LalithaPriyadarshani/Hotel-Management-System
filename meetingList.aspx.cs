using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DbConnect dc = new DbConnect();

        if (!IsPostBack)
        {
            fillGrid();
        }
    }

    public void fillGrid()
    {
       DbConnect dc = new DbConnect();
        String MFillQuery = "select mr.rID,mr.date,mr.time, h.hall_Name,custID,hl.Hotelname,mp.price,mp.tableArrangement from MeetingReservation mr,Halls h,Hotels hl,Meeting mp where mr.hallID=h.HallID and h.hotelID=hl.hotelID and mp.hallID=h.HallID";
        DataSet ds = dc.getData(MFillQuery);

        if (ds == null)
        {
            bool b = false;
        }

        gv_meetingList.DataSource = ds.Tables["ss"];
        gv_meetingList.DataBind();
    }

    protected void btn_addEvent_Click(object sender, EventArgs e)
    {

    }
}