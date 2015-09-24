using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


using System.Xml;



public partial class Edit_Customer : System.Web.UI.Page
{
    dbCOnnect db = new dbCOnnect();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string[] arr = (string[])Session["customerArr"];
            TxtFname.Text = arr[1];
            TxtLname.Text = arr[2];
            TxtAddress.Text = arr[3];
            TxtCountry.Text = arr[4];
            TxtPhne.Text = arr[5];
            TxtEmail.Text = arr[6];
        }
        
    }




    protected void Button6_Click1(object sender, EventArgs e)
    {

         string[] arr = (string[])Session["customerArr"];
        string qry="update customer set fname='"+TxtFname.Text+"',lname='"+TxtLname.Text+"',state_address='"+TxtAddress.Text+"',phone='"+TxtPhne.Text+"',email='"+TxtEmail.Text+"',country='"+TxtCountry.Text+"' where customerID='"+arr[0]+"'";

        bool rslt = db.insertIt(qry);

        if (rslt == true)
        {
            LblMsg.Text = "Successfully Updated";

        }
        else
        {
            LblMsg.Text = "Error Occured";
        }
    }
}