using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Home : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {

        ibtnHotelManagement.Attributes.Add("onmouseover", "src='TileImage/Hotel Management02.jpg'");
        ibtnHotelManagement.Attributes.Add("onmouseout", "src='TileImage/Hotel Management01.jpg'");

        ibtnMail.Attributes.Add("onmouseover", "src='TileImage/Mail02.jpg'");
        ibtnMail.Attributes.Add("onmouseout", "src='TileImage/Mail02.jpg'");

        ibtnCustomer.Attributes.Add("onmouseover", "src='TileImage/Customer02.jpg'");
        ibtnCustomer.Attributes.Add("onmouseout", "src='TileImage/Customer01.jpg'");

        ibtnReceptionist.Attributes.Add("onmouseover", "src='TileImage/Reception02.jpg'");
        ibtnReceptionist.Attributes.Add("onmouseout", "src='TileImage/Reception01.jpg'");

        
        

        ibtnRoom.Attributes.Add("onmouseover", "src='TileImage/Rooms02.jpg'");
        ibtnRoom.Attributes.Add("onmouseout", "src='TileImage/Rooms01.jpg'");

        ibtnSport.Attributes.Add("onmouseover", "src='TileImage/Sports02.jpg'");
        ibtnSport.Attributes.Add("onmouseout", "src='TileImage/Sports01.jpg'");

        ibtnTravel.Attributes.Add("onmouseover", "src='TileImage/Travel02.jpg'");
        ibtnTravel.Attributes.Add("onmouseout", "src='TileImage/Travel01.jpg'");

        //ibtnManage.Attributes.Add("onmouseover", "src='TileImage/Management01.jpg'");
        //ibtnManage.Attributes.Add("onmouseout", "src='TileImage/Management.jpg'");

        ibtnChangePassword.Attributes.Add("onmouseover", "src='TileImage/Change Password02.jpg'");
        ibtnChangePassword.Attributes.Add("onmouseout", "src='TileImage/Change Password01.jpg'");

        ibtnEvent.Attributes.Add("onmouseover", "src='TileImage/Events02.jpg'");
        ibtnEvent.Attributes.Add("onmouseout", "src='TileImage/Events01.jpg'");

        ibtnAgen.Attributes.Add("onmouseover", "src='TileImage/Agent02.jpg'");
        ibtnAgen.Attributes.Add("onmouseout", "src='TileImage/Agent01.jpg'");


        if (Session["user"] == null) // not logged in
        {
            ibtnAgen.Visible = false;
            //ibtnManage.Visible = false;
            ibtnChangePassword.Visible = false;
            lbtnLogout.Visible = false; // logout invisible
        }
        else if(Session["user"] == "Admin")// any user (developing item) logged in
        {
            imgUser.ImageUrl = "EmpImage/admin.jpg";
            txtPassword.Visible = false; // after login make invisible login controls
            txtUserName.Visible = false;
            btnLogin.Visible = false;
            lblUserName.Visible = false;
            lblPassword.Visible = false;
            lblMessage.Visible = false;

            //lbtnLogout.Visible = true;
            //lblLoggedUser.Text = eName; // display name of user
            //imgUser.ImageUrl = url; // and img

            ibtnChangePassword.Visible = true; // set visible all controls
            ibtnMail.Visible = true;
            ibtnCustomer.Visible = true;
            ibtnReceptionist.Visible = true;
            ibtnHotelManagement.Visible = true;

            ibtnAgen.Visible = true;
            //ibtnManage.Visible = true;
            ibtnChangePassword.Visible = true;


            if (Session["userFname"] != null)
            {
                lblLoggedUser.Text = Session["userFname"].ToString();
            }
        }









    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    { 
        dbConnect dc = new dbConnect();
        string qry = "select password , status from login where userName = '" + txtUserName.Text + "'";
        DataTable dt = dc.selectIt(qry);

        try
        {


            if (dt == null || dt.Rows.Count == 0) // username error
            {
                lblMessage.Text = "Incorrect Username";
                lblMessage.Visible = true;
            }
            else // username correct
            {
                String pw = dt.Rows[0][0].ToString(); // get password 

                if (pw != txtPassword.Text) // password not match
                {

                    lblMessage.Text = "incorrect password";
                    lblMessage.Visible = true;

                }
                else // password match
                {
                    txtPassword.Visible = false; // after login make invisible login controls
                    txtUserName.Visible = false;
                    btnLogin.Visible = false;
                    lblUserName.Visible = false;
                    lblPassword.Visible = false;
                    lblMessage.Visible = false;

                    lbtnLogout.Visible = true; // visible logout btn

                    String status = dt.Rows[0][1].ToString(); // get the status
                    String email = txtUserName.Text;  // get username
                    String qryUserName = "";
                    String sessionStatus = null;
                    Session["user"] = null;


                    if (status == "admin") // admin login
                    {
                        lblLoggedUser.Text = "Admin";

                        Session["user"] = "Admin"; // user status
                        Session["userFname"] = "Admin";// user's name
                        String url = "EmpImage/admin.jpg"; 
                        imgUser.ImageUrl = "EmpImage/admin.jpg";

                        ibtnAgen.Visible = true;
                        //ibtnManage.Visible = true;
                        ibtnChangePassword.Visible = true; // set visible all controls
                        ibtnMail.Visible = true;
                        ibtnCustomer.Visible = true;
                        ibtnReceptionist.Visible = true;
                        ibtnHotelManagement.Visible = true;


                    }
                    else if (status == "reseption") // employee login
                    {
                        qryUserName = "select fname , picture from Employee where Email = '"+email+"'";
                        DataTable empNameImg = dc.selectIt(qryUserName);
                        String eName = empNameImg.Rows[0][0].ToString(); // user fname
                        String url = empNameImg.Rows[0][1].ToString(); // user img

                        lblLoggedUser.Text = eName; // display name of user
                        imgUser.ImageUrl = url;

                        Session["userFname"] = eName;
                        Session["user"] = "Reseption";

                       // Response.Redirect("Home.aspx");

                    }
                    else if (status == "agent") // agent login
                    {
                        qryUserName = "select fname from Agent where Email = '" + email + "'";
                        DataTable empNameImg = dc.selectIt(qryUserName);
                        String eName = empNameImg.Rows[0][0].ToString(); // user fname
                        String url = empNameImg.Rows[0][1].ToString(); // user img

                        lblLoggedUser.Text = eName; // display name of user
                        imgUser.ImageUrl = url;

                        Session["userFname"] = eName;
                        Session["user"] = "Agent";
                    }


                    

                }

            }

        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
            lblMessage.Visible = true;
        }


    } 
    protected void lbtnLogout_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        txtPassword.Visible = true; // after login make invisible login controls
        txtUserName.Visible = true;
        btnLogin.Visible = true;
        lblUserName.Visible = true;
        lblPassword.Visible = true;

        
        Response.Redirect("Home.aspx");
    }
    protected void ibtnManage_Click(object sender, ImageClickEventArgs e)
    {
        //Response.Redirect("EmployeeManagement.aspx");
    }
    protected void ibtnAgen_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("AddNewAgent1.aspx");
    }
    protected void ibtnRoom_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Room_reservation2.aspx");
    }
    protected void ibtnEvent_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("eventHome.aspx");

    }
    protected void ibtnSport_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("SportsManagement.aspx");

    }
    protected void ibtnTravel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Home_Tour.aspx");

    }
    protected void ibtnCustomer_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("search_customer2.aspx");
    }
    protected void ibtnMail_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("email_cus2.aspx");
    }
    protected void ibtnReceptionist_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("EmployeeManagement.aspx");
    }
    protected void ibtnHotelManagement_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Add New Hotel1.aspx");
    }
}