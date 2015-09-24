using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class PaymentMethod : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        /* get the total amount from previous page and fill the total amount label here */
        

        if (Session["reservationType"].ToString() == "sport")// Sport reservation request
        {
            String[] sportD = (String[])Session["sportReservationDetails"];  // passed by sport reservation function
            String amount = sportD[2];
            lblTotalAmount.Text = amount; // print the total amount
        }
        else if (Session["reservationType"].ToString() == "wedding")// wedding reservation request
        {
            String weddingD = Session["payAmount"].ToString();
            lblTotalAmount.Text = weddingD; // total payment of wedding bucking
        }
        else if (Session["reservationType"].ToString() == "Room")
        {
            String roomD = Session["tot_price"].ToString() ;
            lblTotalAmount.Text = roomD;
        }
        else if (Session["reservationType"].ToString() == "tour")
        {
            String tourD = Session["price"].ToString();
            lblTotalAmount.Text = tourD;
        }



        /*  user privileges */

        if (Session["user"] == null) // customer login
        {
            rbtnHalfPay.Visible = false;
            rbtnAgent.Visible = false;
            rbtnDirect.Visible = false;
            lblRemainingDate.Visible = false;
            lblPaymentMessage.Visible = false;
        }
        else if (Session["user"].ToString() == "Admin") // admin login show all 
        {
            rbtnHalfPay.Visible = true;
            rbtnAgent.Visible = true;
            rbtnDirect.Visible = true;
            
        }
        else if (Session["user"].ToString() == "Reseption") // reseption login
        {
            rbtnHalfPay.Visible = true;
            rbtnAgent.Visible = true;
            rbtnDirect.Visible = true;
        }
        else if (Session["user"].ToString() == "Agent") // agent login
        {
            rbtnAgent.Visible = true;
            rbtnHalfPay.Visible = true;
        }




    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        String[] paymentMethod;

        if (Session["user"] == null) // customer login only 3 possible selections & must have to select all 3-----------
        {
            paymentMethod = new String[3]; // set array size to 3   -- (array for cus = [0]method , [1]pay by ,[2] paying amount)

            paymentMethod[0] = "Credit Card"; // method
            paymentMethod[1] = "Customer";  // pay by
            paymentMethod[2] = lblTotalAmount.Text; // full amount  

            Session["payMethodDetails"] = paymentMethod; // assign the array into a session variable
        }
        else if (Session["user"].ToString() == "Admin") // admin login show all ---------------------|
        {
            paymentMethod = new String[6];  // -- (array for admin = [0]method , [1]pay by , [2]paying amount , [3]remain , [4]remain date , [5]agent id )

            /*method*/
            if (rbtnDirect.Checked)
            {
                paymentMethod[0] = "Direct";
            }
            else
            {
                paymentMethod[0] = "Credit Card";
            }

            /*pay by*/
            if (rbtnAgent.Checked)
            {
                paymentMethod[1] = "Agent";
                paymentMethod[5] = ddlAgent.SelectedValue; //  get agent id later..got now
            }
            else
            {
                paymentMethod[1] = "Customer";
                paymentMethod[5] = "null";
            }

            /*full or half payment*/  
            if (rbtnHalfPay.Checked)
            {

                paymentMethod[2] = lblHalfPay.Text;
                paymentMethod[3] = lblHalfPay.Text; // same amount remaining
                paymentMethod[4] = lblRemainingDate.Text; //   get remaining date from label , before set date here in checked event of radio btn........
            }
            else
            {
                paymentMethod[2] = lblTotalAmount.Text; // full amount
                paymentMethod[3] = "0.00"; // remain zero
                paymentMethod[4] = "null"; // set date here..... no remain date
            }


            Session["payMethodDetails"] = paymentMethod; // assign the array into a session variable


        }
        else if (Session["user"].ToString() == "Reseption") // reseption login-----------------------|
        {

            paymentMethod = new String[6];  // -- (array for reseption = [0]method , [1]pay by , [2]paying amount , [3]remain , [4]remain date , [5]agent id )

            /*method*/
            if (rbtnDirect.Checked)
            {
                paymentMethod[0] = "Direct";
            }
            else
            {
                paymentMethod[0] = "Credit Card";
            }

            /*pay by*/
            if (rbtnAgent.Checked)
            {
                paymentMethod[1] = "Agent";
                paymentMethod[5] = ddlAgent.SelectedValue; //  get agent id later.......now k
            }
            else
            {
                paymentMethod[1] = "Customer";
                paymentMethod[5] = "null"; // no agent id
            }

            /*full or half payment*/
            if (rbtnHalfPay.Checked)
            {

                paymentMethod[2] = lblHalfPay.Text;
                paymentMethod[3] = lblHalfPay.Text; // same amount remaining
                paymentMethod[4] = ""; // set date here........
            }
            else
            {
                paymentMethod[2] = lblTotalAmount.Text; // full amount
                paymentMethod[3] = "0.00"; // remain zero
                paymentMethod[4] = "null"; // set date here..... no remain date
            }


            Session["payMethodDetails"] = paymentMethod; // assign the array into a session variable

            
        }
        else if (Session["user"].ToString() == "Agent") // agent login------------------------------|
        {

            paymentMethod = new String[6];  //    (array for agent = [0]method , [1]pay by [2]paying amount , [3]remain amount , [4]remaining date , [5]agent id )

            paymentMethod[0] = "Credit Card";

            if (rbtnAgent.Checked)
            {
                paymentMethod[1] = "Agent";
                paymentMethod[5] = ddlAgent.SelectedValue; // get agent id later......now k
            }
            else
            {
                paymentMethod[1] = "Customer";
                paymentMethod[5] = "null";
            }

            if (rbtnHalfPay.Checked)
            {
                paymentMethod[2] = lblHalfPay.Text;
                paymentMethod[3] = lblHalfPay.Text;
                paymentMethod[4] = lblRemainingDate.Text; // get remaining date from label
            }
            else
            {
                paymentMethod[2] = lblTotalAmount.Text;
                paymentMethod[3] = "0.00";  // no remaining amount
                paymentMethod[4] = "null"; // full payment no remain
            }

            Session["payMethodDetails"] = paymentMethod; // assign the array into a session variable


        }



        Response.Redirect("PaymentSelection.aspx");
    }
    protected void rbtnAgent_CheckedChanged(object sender, EventArgs e)
    {
        if (rbtnAgent.Checked) // in db there must be a column named pay by
        {
            // fill agent drop down list

            String qry = "select agentId , firstName from agent";
            DbConnect dc = new DbConnect();
            DataTable dt = dc.select(qry);

            ddlAgent.DataTextField = "firstname";
            ddlAgent.DataValueField = "agentId";
            ddlAgent.DataSource = dt;
            ddlAgent.DataBind();


            ddlAgent.Visible = true;  // write a method to fill agent combo
        }
        else
        {
            ddlAgent.Visible = false;
        }
    }
    protected void rbtnHalfPay_CheckedChanged(object sender, EventArgs e)
    {
        if (rbtnHalfPay.Checked)
        {
            double payment = Convert.ToInt32(lblTotalAmount.Text);
            double half = payment / 2;

            lblHalfPay.Text = half.ToString();
            lblHalfPay.Visible = true;

            // date

            DateTime paidDate = DateTime.Now;
            DateTime remainDate = DateTime.Now.AddDays(7);
           

            lblRemainingDate.Text = remainDate.Date.ToString(); 
            lblRemainingDate.Visible = true;
            lblPaymentMessage.Visible = true;

        }
        else
        {
            lblHalfPay.Visible = false;
        }
    }
}