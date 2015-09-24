using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class lsroriginaltour3 : System.Web.UI.Page
{
    DbConnect db = new DbConnect();
   

    protected void Page_Load(object sender, EventArgs e)
    {
       if (!IsPostBack)
        {
            fillgrid();
            lblsubpack.Text = Session["subname"].ToString();
        }
        
       	       
    }

    public void fillgrid()
    {
        DbConnect db = new DbConnect();
        string subPackage = Session["subname"].ToString();
        string query = "select d.Day_no,d.accomodation,d.description,days_image from days_ d,subPackege s where s.subPacge_Name='"+subPackage+"' and d.subPcgId=s.subPack_ID ";
        DataSet ds = db.getData(query);
        gdvdays.DataSource = ds.Tables["ss"];
        gdvdays.DataBind();
       
    }
    protected void Button19_Click(object sender, EventArgs e)
    {

        Response.Redirect("ApplicationForm.aspx"); 
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
    }


    protected void gdvdays_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gdvdays.PageIndex = e.NewPageIndex;
        fillgrid();
    }
}