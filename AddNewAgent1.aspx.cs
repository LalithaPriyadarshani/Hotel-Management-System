



using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AddNewAgent1 : System.Web.UI.Page
{
    DB_access db =new DB_access();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
      
        DbConnect dc = new DbConnect();
        string q2="insert into Login values('"+txt_email.Text+"','"+txt_pswd.Text+"','agent')";
        String q = "insert into Agent(Firstname,Lastname,Address,Gender,Fax,TelNumber,Market,PassPortNumber,Country,Email) values('" + txt_name.Text.Trim() + "','" + txt_lastname.Text.Trim() + "','" + txt_add.Text + "','" + txt_gender.Text.Trim() + "','" + txt_fax.Text.Trim() + "','" + txt_telenum.Text.Trim() + "','" + ddl_marcket.Text.Trim() + "','" + txt_ppnum.Text.Trim() + "','" + txt_country.Text.Trim() + "','" + txt_email.Text.Trim() + "')";

        bool conf1=dc.insert(q2);
        bool conf = dc.insert(q);
        if (conf1 == true && conf==true)
        {
            lblmsg.Text = "Successfully added";
        }
        else
        {
            lblmsg.Text = "Operation is  successfull";
        }
    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {

    }
    protected void iewDetails_Click(object sender, EventArgs e)
    {
        Response.Redirect("Viewdetails(Agent)1.aspx");
    }
    
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("UpdateAgent1.aspx");
    }
    protected void txt_name_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button6_Click(object sender, EventArgs e)
    {


        txt_name.Text = "Yenisha";
        txt_lastname.Text = "Fernando";
        txt_add.Text = "Tokyo";
        txt_country.Text = "Japan";
        txt_gender.Text = "Female";
        txt_ppnum.Text = "002255454";
        txt_telenum.Text = "0642233631";
        txt_pswd.Text = "123";
        txt_cnfrmpswd.Text = "123";
        txt_fax.Text = "225236998";
        txt_email.Text = "yeni@gmail.com";
    }

      
}                    