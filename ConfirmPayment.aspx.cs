using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ConfirmPayment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)  // customer request
        {
            String[] paymentMethod = (String[])Session["payMethodDetails"];
            String payAmt = paymentMethod[2];
            lblPaidAmt.Text = payAmt;

            lblRemainAmt.Text = "0.00"; // paying amt also same here
            lblPaidDate.Text = DateTime.Today.Date.ToString();
            lblRemDateName.Visible = false;
            lblRemainDate.Visible = false;
        }
        else if (Session["user"].ToString() == "Admin")  // admin request ------
        {
            String[] paymentMethod = (String[])Session["payMethodDetails"];
            String payAmt = paymentMethod[2];
            String remAmt = paymentMethod[3];

            lblPaidAmt.Text = payAmt;  // paid amt
            lblRemainAmt.Text = remAmt; // rem amt
            lblPaidDate.Text = DateTime.Today.Date.ToString(); // paid date

            String remdate = paymentMethod[4];
            if (remdate == "null") // no remain date
            {
                lblRemDateName.Visible = false;
                lblRemainDate.Visible = false;
            }
            else
            {
                lblRemainDate.Text = remdate;
            }

        }
        else if (Session["user"].ToString() == "Reseption")  // Reseption request ------
        {
            String[] paymentMethod = (String[])Session["payMethodDetails"];
            String payAmt = paymentMethod[2];
            String remAmt = paymentMethod[3];

            lblPaidAmt.Text = payAmt;
            lblRemainAmt.Text = remAmt;

            String remdate = paymentMethod[4];
            if (remdate == "null") // no remain date
            {
                lblRemDateName.Visible = false;
                lblRemainDate.Visible = false;
            }
            else
            {
                lblRemainDate.Text = remdate;
            }

        }
        else if (Session["user"].ToString() == "Agent")  // agent request ------
        {
            String[] paymentMethod = (String[])Session["payMethodDetails"];
            String payAmt = paymentMethod[2];
            String remAmt = paymentMethod[3];

            lblPaidAmt.Text = payAmt;
            lblRemainAmt.Text = remAmt;

            String remdate = paymentMethod[4];
            if (remdate == "null") // no remain date
            {
                lblRemDateName.Visible = false;
                lblRemainDate.Visible = false;
            }
            else
            {
                lblRemainDate.Text = remdate;
            }
        }


        String[] billibgDet = (String[])Session["billingDetails"];
        String name = billibgDet[9] +" "+ billibgDet[1]+ " " +billibgDet[2];
        lblName.Text = name;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /* insert payment details first then insert reservation details according to the reservation type session variable */


        String[] customerD = (String[])Session["billingDetails"]; // all customer details (passport , fname , lname , country , Street add , city , postal code , 4n , mail , salute )

        String agentID = "null";
        String salute = customerD[9];
        String fName = customerD[1];
        String lName = customerD[2];
        String StateAdd = customerD[4];
        String city = customerD[5];
        String postelCode = customerD[6];
        String phone = customerD[7];
        String email = customerD[8];
        String country = customerD[3];
        String passport = customerD[0];
        String cusType = " ";



        // before insert check this customer added by sefl or by agent(check any agent is logged now)

        if (Session["user"] != null)
        {
            if (Session["user"].ToString() == "Agent") // agent logged in
            {
                //get agent id from db

                String mail = Session["email"].ToString();

                String qry = "select agentID from Agent where email = '" + mail + "'"; // select agent id
                dbConnect dc = new dbConnect();
                DataTable dt = dc.selectIt(qry);

                if (dt != null) // correct agent values are retriewed
                {
                    agentID = dt.Rows[0][0].ToString();

                    // now insert details to customer

                    //String salute = customerD[9];
                    //String fName = customerD[1];
                    //String lName = customerD[2];
                    //String StateAdd = customerD[4];
                    //String city = customerD[5];
                    //String postelCode = customerD[6];
                    //String phone = customerD[7];
                    //String email = customerD[8];
                    //String country = customerD[3];
                    //String passport = customerD[0];

                    cusType = "Agent Through"; // by agent customer if agent wise


                    String qry2 = "insert into customer (salutation,fname,lname,state_address,city,postelCode,phone,email,country,passport_NIC,customer_Type,Agent_id) " +
                                    " values ('" + salute + "' , '" + fName + "' , '" + lName + "' , '" + StateAdd + "' , '" + city + "' , '" + postelCode + "' , '" + phone + "' , '" + email + "' , '" + country + "' , '" + passport + "' , '" + cusType + "' , '" + agentID + "') ";

                    dbConnect dc2 = new dbConnect();
                    bool conf = dc2.insertIt(qry2); // customer details inserted
                }
            }
            else // reseption or admin logged (that means walk in customer)
            {
                //String agentID = "null";
                //String salute = customerD[9];
                //String fName = customerD[1];
                //String lName = customerD[2];
                //String StateAdd = customerD[4];
                //String city = customerD[5];
                //String postelCode = customerD[6];
                //String phone = customerD[7];
                //String email = customerD[8];
                //String country = customerD[3];
                //String passport = customerD[0];

                cusType = "Walk-in"; // walkin customer

                String qry2 = "insert into customer (salutation,fname,lname,state_address,city,postelCode,phone,email,country,passport_NIC,customer_Type,Agent_id) " +
                                " values ('" + salute + "' , '" + fName + "' , '" + lName + "' , '" + StateAdd + "' , '" + city + "' , '" + postelCode + "' , '" + phone + "' , '" + email + "' , '" + country + "' , '" + passport + "' , '" + cusType + "' , '" + agentID + "') ";

                dbConnect dc2 = new dbConnect();
                bool conf = dc2.insertIt(qry2); // customer details inserted if reseption or admin wise

            }
        }
        else // no login ( that means online customer)
        {
            //String agentID = "null";
            //String salute = customerD[9];
            //String fName = customerD[1];
            //String lName = customerD[2];
            //String StateAdd = customerD[4];
            //String city = customerD[5];
            //String postelCode = customerD[6];
            //String phone = customerD[7];
            //String email = customerD[8];
            //String country = customerD[3];
            //String passport = customerD[0];

            cusType = "Walk-in"; // walkin customer

            String qry2 = "insert into customer (salutation,fname,lname,state_address,city,postelCode,phone,email,country,passport_NIC,customer_Type,Agent_id) " +
                            " values ('" + salute + "' , '" + fName + "' , '" + lName + "' , '" + StateAdd + "' , '" + city + "' , '" + postelCode + "' , '" + phone + "' , '" + email + "' , '" + country + "' , '" + passport + "' , '" + cusType + "' , '" + agentID + "') ";

            dbConnect dc2 = new dbConnect();
            bool conf = dc2.insertIt(qry2); // customer details inserted if self reg

        }
        dbConnect dc22 = new dbConnect();
        // now add payment details

        //select added customer id

        String qry3 = "select customerID from customer where Passport_nic = '" + passport + "'";
        DataTable dt3 = dc22.selectIt(qry3);

        String cusID = dt3.Rows[0][0].ToString();

        String totAmt = ""; // total price
        String[] paymentD = new String[6];


        // get total amount

        if (Session["reservationType"].ToString() == "sport")// Sport reservation request
        {
            String[] sportD = (String[])Session["sportReservationDetails"];  // passed by sport reservation function
            totAmt = sportD[2];

        }
        else if (Session["reservationType"].ToString() == "wedding")// wedding reservation request
        {
            totAmt = Session["payAmount"].ToString();

        }
        else if (Session["reservationType"].ToString() == "Room")
        {
            String roomD = Session["tot_price"].ToString();
            totAmt = roomD;
        }
        else if (Session["reservationType"].ToString() == "tour")
        {
            String tourD = Session["price"].ToString();
            totAmt = tourD;
        }


        // get orther payment details from session

        paymentD = (String[])Session["payMethodDetails"];

        String paid = paymentD[2];
        String remAmt = paymentD[3];
        String resType = Session["reservationType"].ToString(); // sport , wedding , Room , tour 
        String remdate = paymentD[4];
        String payBy = paymentD[1];
        String agntID = paymentD[5];
        String reserveID = cusID; // we have to genarate a reservation id 

        // res id is identtity


        String qry4 = "insert into payment (totalAmount,paidAmount,remainamount,reservationType,remainingDate,pay_by,agentID,cusID,resID) " +
                        " values ('" + totAmt + "' , '" + paid + "' , '" + remAmt + "' , '" + resType + "' , '" + remdate + "' , '" + payBy + "' , '" + agntID + "' , '" + cusID + "' , '" + reserveID + "') ";



        dbConnect dc4 = new dbConnect();
        bool confpay = dc4.insertIt(qry4);


        if (Session["reservationType"].ToString() == "sport")// Sport reservation request
        {
            String[] sportReserveD = (String[])Session["sportReservationDetails"];

            String rid = reserveID;
            String sdate = sportReserveD[0];
            String edate = sportReserveD[1];
            String location = sportReserveD[4];
            String fee = sportReserveD[2];
            String noOfMem = sportReserveD[3];
            String sportID = sportReserveD[5];
            String cid = cusID;
            String hid;

            String qry = "insert into sportsReservation (rid,sdate,edate,location,fee,noofMem,sportId,cid) " +
                            " values ('" + rid + "' , '" + sdate + "' , '" + edate + "' , '" + location + "' , '" + fee + "' , '" + noOfMem + "' , '" + sportID + "' , '" + cid + "' )";

            dbConnect dc = new dbConnect();
            bool confSport = dc.insertIt(qry);

            if (confSport == true)
            {
                lblMessage.Visible = true;
            }
            else
            {
                lblMessage.Text = "Cannot insert";
                lblMessage.Visible = true; ;
            }

        }
        else if (Session["reservationType"].ToString() == "wedding")// wedding reservation request
        {


        }
        else if (Session["reservationType"].ToString() == "Room")
        {

        }
        else if (Session["reservationType"].ToString() == "tour")
        {

        }

                    


                


            
        











    }
}