using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Agentrpt1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=LALITHA-PC;Initial Catalog=LSR;Integrated Security=True";

        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select a.firstname,c.customerID from Customer c,Agent a", con);

        DataSet1 dt = new DataSet1();
        da.Fill(dt, "Customer,Agent");

        CrystalReportSource1.ReportDocument.SetDataSource(dt.Tables[0]);
    }
}