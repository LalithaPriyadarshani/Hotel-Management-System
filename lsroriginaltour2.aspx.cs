using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing.Imaging;
using System.Drawing;
using System.IO;


public partial class lsroriginaltour2 : System.Web.UI.Page
{
    DbConnect db = new DbConnect();
    SqlConnection con;
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        fillgrid();
       

    }
    protected void Button15_Click(object sender, EventArgs e)
    {
        Response.Redirect("ApplicationForm.aspx");

    }

   public void fillgrid()
    {
        DbConnect db = new DbConnect();
        String qry = "select name,description,image_main from mainPackege";
        DataSet ds = db.getData(qry);
        gdvmain_pac.DataSource = ds.Tables["ss"];
        gdvmain_pac.DataBind();

    }

    protected void Button16_Click(object sender, EventArgs e)
    {
        Response.Redirect("lsroriginaltour3.aspx");
    }
    protected void gdvmain_pac_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("lsroriginaltour1_1.aspx");

    }
    protected void gdvmain_pac_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gdvmain_pac.PageIndex = e.NewPageIndex;
    }
    protected void gdvmain_pac_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            //GridViewRow selectedRow = gdvmain_pac.Rows[index];
            string name = gdvmain_pac.Rows[index].Cells[1].Text;
            Session["name"] = name;

        }
    }



    protected void gdvmain_pac_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

    }
}