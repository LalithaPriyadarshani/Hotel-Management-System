using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class roomRpt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fillFloors();
    }
    
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=LALITHA-PC;Initial Catalog=LSR;Integrated Security=True";

        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select roomNo,roomType from room r where floor_num='"+floor_num.Text+"'" , con);

        roomDs dt = new roomDs();
        da.Fill(dt, "Room");

        CrystalReportSource1.ReportDocument.SetDataSource(dt.Tables[0]);

    }

    public void fillFloors()
    {
        DbConnect dc = new DbConnect();
        String q = "select floornum from floor1";
        DataTable dt = dc.select(q);

        int c = dt.Rows.Count;

        for (int i = 0; i < c; i++)
        {
            floor_num.Items.Add(dt.Rows[i][0].ToString());
        }

    }

}