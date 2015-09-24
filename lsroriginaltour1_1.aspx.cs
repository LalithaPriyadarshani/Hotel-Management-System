using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class lsroriginaltour1_1 : System.Web.UI.Page
{
    DbConnect db = new DbConnect();
   

    protected void Page_Load(object sender, EventArgs e)
    {
        fillgrid();
        lblmainpackage.Text = Session["name"].ToString();

    }

    public void fillgrid()
    {

        DbConnect db = new DbConnect();
        string mainPackage = Session["name"].ToString();
        string query = " select s.subPacge_Name ,s.noofdays,s.price from subPackege s,mainPackege p where  s.packge_ID=p.package_id and p.name='" + mainPackage + "' ";
        DataSet ds = db.getData(query);
        gdvsubpac.DataSource = ds.Tables["ss"];
        gdvsubpac.DataBind();

    }

    protected void gdvsubpac_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("lsroriginaltour3.aspx");
    }
    protected void gdvsubpac_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            /// GridViewRow selectedRow = gdvsubpac.Rows[index];
            string subname = gdvsubpac.Rows[index].Cells[1].Text;
            Session["subname"] = subname;
            Session["price"] = gdvsubpac.Rows[index].Cells[3].Text;

        }
    }


}