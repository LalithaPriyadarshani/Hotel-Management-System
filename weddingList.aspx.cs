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
    DbConnect dc = new DbConnect();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillGrid();
        }
    }

    public void fillGrid()
    {
        DbConnect dc = new DbConnect();

        String wedFillQuery = "select wr.RID,wr.date,wr.time,wr.themeColor,h.hall_name,custID,hl.hotelname,wp.price,wp.Decoration from BanquetReservation wr,Halls h,Hotels hl,Banquet wp where wr.hallID=h.hallID and h.hotelID=hl.hotelID and wp.hallID=h.hallID";        
        DataSet ds = dc.getData(wedFillQuery);

        if (ds == null)
        {
            bool b = false;
        }
        
        gv_weddingList.DataSource = ds.Tables["ss"];
        gv_weddingList.DataBind();
    }

    protected void gv_weddingCustomer_RowEditing(object sender, GridViewEditEventArgs e)
    {
       // gv_weddingList.EditIndex = e.NewEditIndex;
       // fillGrid();
    }
}