using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UpdateAgent1 : System.Web.UI.Page
{
    DB_access db = new DB_access();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillAgentID();

        }
    }
    
    protected void _search_Click1(object sender, EventArgs e)
    {
        DataSet ds = db.getDetails("select Firstname,Lastname,Address,Fax,TelNumber,Market,PassPortNumber,Country,Email from Agent where AgentID='" + ddSearch.Text + "'", "Agent");
       
        txt_name.Text = ds.Tables[0].Rows[0][0].ToString();
        txt_lastname.Text = ds.Tables[0].Rows[0][1].ToString();
        txt_add.Text = ds.Tables[0].Rows[0][2].ToString();
        txt_faxnum.Text= ds.Tables[0].Rows[0][3].ToString();
        txt_telenum.Text = ds.Tables[0].Rows[0][4].ToString();
        txt_market.Text = ds.Tables[0].Rows[0][5].ToString();
        txt_ppnum.Text = ds.Tables[0].Rows[0][6].ToString();
        txt_country.Text = ds.Tables[0].Rows[0][7].ToString();
       
     



    }
    protected void TxtSearch_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btn_edit_Click(object sender, EventArgs e)
    {
       
        bool result = db.udiData("update Agent set Firstname='" + txt_name.Text + "',Lastname='" + txt_lastname.Text + "',address='" + txt_add.Text + "',fax='" + txt_faxnum.Text + "',TelNumber='" + txt_telenum.Text + "',market='" + txt_market.Text + "',PassPortNumber='" + txt_ppnum.Text + "',country='" + txt_country.Text + "' where AgentID='"+ddSearch.Text+"'");

        if (result == true)
        {
            lbl_errormsg.Text=("successfully upadated");
        }
        else
        {
            lbl_errormsg.Text = ("not updated");
        }

    }
    protected void btn_remove_Click(object sender, EventArgs e)
    {
        Boolean result = db.udiData("delete from Agent where agentID='"+ddSearch.Text+"'");

        if (result == true)
        {
            lbl_errormsg.Text = ("Successfully removed");

        }
        else
        {
            lbl_errormsg.Text = ("Not removed");
        }
    }
    protected void lbadnwag_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddNewAgent1.aspx");
    }
    protected void lbEditRmv_Click(object sender, EventArgs e)
    {
        Response.Redirect("UpdateAgent1.aspx");
    }
    protected void lbView_Click(object sender, EventArgs e)
    {
        Response.Redirect("Viewdetails(Agent)1.aspx");
    }

    public void fillAgentID()
    {
        DbConnect db = new DbConnect();
        string qry = "select AgentID from Agent";
        DataTable dt = db.select(qry);

        int count = dt.Rows.Count;

        for (int i = 0; i < count; i++)
        {
            ddSearch.Items.Add(dt.Rows[i][0].ToString());
        }

    }

    protected void ddSearch_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataSet ds = db.getDetails("select Firstname,Lastname,Address,Fax,TelNumber,Market,PassPortNumber,Country,Email from Agent where AgentID='" + ddSearch.Text + "'", "Agent");

        txt_name.Text = ds.Tables[0].Rows[0][0].ToString();
        txt_lastname.Text = ds.Tables[0].Rows[0][1].ToString();
        txt_add.Text = ds.Tables[0].Rows[0][2].ToString();
        txt_faxnum.Text = ds.Tables[0].Rows[0][3].ToString();
        txt_telenum.Text = ds.Tables[0].Rows[0][4].ToString();
        txt_market.Text = ds.Tables[0].Rows[0][5].ToString();
        txt_ppnum.Text = ds.Tables[0].Rows[0][6].ToString();
        txt_country.Text = ds.Tables[0].Rows[0][7].ToString();
       
     
    }
}