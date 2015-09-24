using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PaymentSelection : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)  // customer request
        {
            String[] paymentMethod = (String[])Session["payMethodDetails"];
            String payAmt = paymentMethod[2];
            lblPayingAmount.Text = payAmt;

            lblRemainAmt.Text = "0.00"; // paying amt also same here
        }
        else if (Session["user"].ToString() == "Admin")  // admin request ------
        {
            String[] paymentMethod = (String[])Session["payMethodDetails"];
            String payAmt = paymentMethod[2];
            String remAmt = paymentMethod[3];

            lblPayingAmount.Text = payAmt;
            lblRemainAmt.Text = remAmt;

        }
        else if (Session["user"].ToString() == "Reseption")  // Reseption request ------
        {
            String[] paymentMethod = (String[])Session["payMethodDetails"];
            String payAmt = paymentMethod[2];
            String remAmt = paymentMethod[3];

            lblPayingAmount.Text = payAmt;
            lblRemainAmt.Text = remAmt;

        }
        else if (Session["user"].ToString() == "Agent")  // Agent request ------
        {
            String[] paymentMethod = (String[])Session["payMethodDetails"];
            String payAmt = paymentMethod[2];
            String remAmt = paymentMethod[3];

            lblPayingAmount.Text = payAmt;
            lblRemainAmt.Text = remAmt;

        }



    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        if (chkTerms.Checked)
        {

            String[] billingAddress = {txtPassport.Text,txtFName.Text,txtLName.Text,txtCountry.Text,txtStreetAddress.Text,txtCity.Text,txtPostelCode.Text,txtPhone.Text,txtEmail.Text,ddlSalute.Text };
            Session["billingDetails"] = billingAddress;

            Response.Redirect("DemoPaymentGateway.aspx");
        }
        else
        {
            lblError.Visible = true;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       // Response.Redirect("TermsAndConditions.aspx");
        Page.ClientScript.RegisterStartupScript(
        this.GetType(), "OpenWindow", "window.open('TermsAndConditions.aspx','_newtab');", true);
    }
}