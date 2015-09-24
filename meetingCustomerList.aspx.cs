using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;



public partial class Default2 : System.Web.UI.Page
{
    DbConnect dc = new DbConnect();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillGrid();
        }
    }
      
     public void fillGrid()
    {
         DbConnect dc = new DbConnect();

         String customerFillQuery = "select c.CustomerID, c.salutation,c.fname,c.lname,c.state_address,c.city,c.postelCode,c.country,c.phone,c.email,c.passport_NIC from Customer c,MeetingReservation mr where c.CustomerID=mr.custID and mr.custID  in (select mr.custID from MeetingReservation mr)";
         DataSet ds = dc.getData(customerFillQuery);

          //what is done by this if condition
          if (ds == null)
          {
              bool b = false;
          }
                
          gv_meetingCustomer.DataSource = ds.Tables["ss"];
          gv_meetingCustomer.DataBind();
    }



    protected void gv_meetingCustomer_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gv_meetingCustomer.EditIndex = e.NewEditIndex;
        fillGrid();
    }


    protected void gv_meetingCustomer_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = (GridViewRow)gv_meetingCustomer.Rows[e.RowIndex];
        Label lblCustomerID = (Label)row.FindControl("lblid");
        Label lblSalutation = (Label)row.FindControl("lblid1");
        TextBox textFname = (TextBox)row.FindControl("textbox1");
        TextBox textLname = (TextBox)row.FindControl("textbox2");
        TextBox textstate_Address = (TextBox)row.FindControl("textbox3");
        TextBox textCity=(TextBox)row.FindControl("textbox4");
        TextBox textPostelCode=(TextBox)row.FindControl("textbox5");
        TextBox textPhone = (TextBox)row.FindControl("textbox6");
        TextBox textEmail = (TextBox)row.FindControl("textbox7");
       
        TextBox textCountry = (TextBox)row.FindControl("textbox8");
        TextBox textPassport_num = (TextBox)row.FindControl("textbox9");



        gv_meetingCustomer.EditIndex = -1;
        String customerUpdateQuery = "update Customer set fname = '" + textFname.Text + "',lname = '" + textLname.Text + "',state_address='"+textstate_Address.Text+"',city='"+textCity.Text+"',postelCode='"+textPostelCode.Text+"',phone='"+textPhone.Text+"',email='"+textEmail.Text+"',passport_NIC='"+textPassport_num.Text+"',country='"+textCountry.Text+"' where CustomerID = " + lblCustomerID.Text + " ";

        bool updateResult = dc.insert(customerUpdateQuery);

        lblUpdateMsg.Visible = true;
        if (updateResult == true)
        {
            lblUpdateMsg.Text = "Details of Customer with ID '" + lblCustomerID.Text + "' was sucessly updated!";
        }
        else
        {
            lblUpdateMsg.Text = "Sorry!Unable to be update Details of Customer with ID '" + lblCustomerID.Text + "'!";
        }
        fillGrid();  
    }
    protected void gv_meetingCustomer_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gv_meetingCustomer.EditIndex = -1;
        fillGrid();
    }
    
    protected void  gv_meetingCustomer_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

       /* GridViewRow row = (GridViewRow)gv_meetingCustomer.Rows[e.RowIndex];
        Label lbldeleteID = (Label)row.FindControl("lblid");
        String customerDeleteQuery = "delete Customer where ID ='" + lbldeleteID.Text + "'";
        bool deleteResult = dc.insertIt(customerDeleteQuery);

        lblDeleteMsg.Visible = true;
        if (deleteResult == true)
            lblDeleteMsg.Text = "Customer with ID '" + lbldeleteID.Text + "'was sucessfully Deleted";
        else
            lblDeleteMsg.Text = "Sorry!Couldn't delete the Customer with ID '" + lbldeleteID.Text + "' ";
        fillGrid(); */
    }

      
    protected void  gv_meetingCustomer_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void gv_meetingCustomer_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

    }
    protected void gv_meetingCustomer_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void gv_meetingCustomer_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv_meetingCustomer.PageIndex = e.NewPageIndex;
        fillGrid();
    }

    protected void gv_meetingCustomer_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}