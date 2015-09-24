using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Runtime.InteropServices;

public partial class viewdetails_Agent_1 : System.Web.UI.Page
{


    DbConnect dc = new DbConnect();

    protected void Page_Load(object sender, EventArgs e)
    {
        fillGrid();
    }
    protected void Button6_Click(object sender, EventArgs e)
    {

    }
    protected void btn_ok_Click(object sender, EventArgs e)
    {

    }


    public void fillGrid()
    {
        String market = "";
        if (rb_french.Checked)
        {
             market = "French";
        }
        else if (rb_chinese.Checked)
        {
            market = "Chinese";
        }
        else if (rb_japanese.Checked)
        {
            market = "Japanese";
        }
      
        String qry = "select AgentID,Firstname,Lastname,Address,Gender,Fax,TelNumber,PassPortNumber,Country,Email from Agent where Market = '"+market+"' ";
      DataSet ds = dc.getData(qry);


        if (ds == null)
        {
            bool b = false;    
        }



        GridMarcket .DataSource = ds .Tables ["ss"];
        GridMarcket.DataBind();

        
        
        
    }
    protected void GridMarcket_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void lbaddnewagent_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddNewAgent1.aspx");
    }
    
    protected void lbeditrmv_Click1(object sender, EventArgs e)
    {
        Response.Redirect("UpdateAgent1.aspx");
    }
}