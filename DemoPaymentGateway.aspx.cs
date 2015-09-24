using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DemoPaymentGateway : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)  //  -- customer login
        {
            String[] paymentMethod = (String[])Session["payMethodDetails"];
            String payAmt = paymentMethod[2];
            txtAmount.Text = payAmt;
        }
        else if (Session["user"] == "Admin")  //  -- admin reuqest
        {
            String[] paymentMethod = (String[])Session["payMethodDetails"];
            String payAmt = paymentMethod[2]; // paing amt
            //String remAmt = paymentMethod[3];

            txtAmount.Text = payAmt;
            
        }
        else if (Session["user"] == "Reseption") // -- reseption request
        {
            String[] paymentMethod = (String[])Session["payMethodDetails"];
            String payAmt = paymentMethod[2]; // paing amt
            //String remAmt = paymentMethod[3];

            txtAmount.Text = payAmt;

        }
        else if (Session["user"] == "Agent") // -- agent request
        {
            String[] paymentMethod = (String[])Session["payMethodDetails"];
            String payAmt = paymentMethod[2]; // paing amt
            //String remAmt = paymentMethod[3];

            txtAmount.Text = payAmt;

        }



    }
    protected void btnPay_Click(object sender, EventArgs e)
    {
        Response.Redirect("confirmPayment.aspx");
    }
}