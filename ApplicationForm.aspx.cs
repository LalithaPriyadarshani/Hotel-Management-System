using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ApplicationForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtselectedtour.Text = Session["subname"].ToString();
        txtprice.Text = Session["price"].ToString();

    }
  /*  protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    } */
    
    protected void Button6_Click(object sender, EventArgs e)
    {
       

        

        String d = txtfromDD.Text;
        String m = txtfromMM.Text;
        String y = txtfromYY.Text;
        String date = m + "/" + d + "/" + y;
        String d1 = txttoDD.Text;
        String m1 = txttoMM.Text;
        String y1 = txttoYY.Text;
        String date1 = m1 + "/" + d1 + "/" + y1;
        

        String[] arr = {txtselectedtour.Text , date,date1,txtadults.Text ,txtchildren.Text,txtprice.Text};

        Session["tourDetails"] = arr;
        Response.Redirect("Paymentsonline.aspx");

        Session["reservation"] = "tour";


      



    }
    protected void TextBox13_TextChanged(object sender, EventArgs e)
    {

    }
}