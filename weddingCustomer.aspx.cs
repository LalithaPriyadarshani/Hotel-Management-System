using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

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
       // String customerFillQuery = "select c.ID, c.salutation,c.fname,c.lname,c.address,c.nationality,c.country,c.phone,c.email,c.passportNum from Customer c,WeddingReservation wr e where c.ID=wr.custID and wr.custID  in (select wr.custID from WeddingReservation wr)";
       String customerFillQuery = "select c.CustomerID, c.salutation,c.fname,c.lname,c.state_address,c.city,c.postelCode,c.country,c.phone,c.email,c.passport_NIC from Customer c,BanquetReservation wr where c.CustomerID=wr.custID and wr.custID  in (select wr.custID from BanquetReservation wr)";
        DataSet ds = dc.getData(customerFillQuery);

        if (ds == null)
        {
            bool b = false;
        }

        gv_weddingCustomer.DataSource = ds.Tables["ss"];
        gv_weddingCustomer.DataBind();
    }

    protected void gv_weddingCustomer_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gv_weddingCustomer.EditIndex = e.NewEditIndex;
        fillGrid();
    }

    protected void gv_weddingCustomer_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = (GridViewRow)gv_weddingCustomer.Rows[e.RowIndex];
        Label lblCustomerID = (Label)row.FindControl("lblid");
        Label lblSalutation = (Label)row.FindControl("lblid1");
        TextBox textFname = (TextBox)row.FindControl("textbox1");
        TextBox textLname = (TextBox)row.FindControl("textbox2");
        TextBox textstate_Address = (TextBox)row.FindControl("textbox3");
        TextBox textCity = (TextBox)row.FindControl("textbox4");
        TextBox textPostelCode = (TextBox)row.FindControl("textbox5");
        TextBox textPhone = (TextBox)row.FindControl("textbox6");
        TextBox textEmail = (TextBox)row.FindControl("textbox7");

        TextBox textCountry = (TextBox)row.FindControl("textbox8");
        TextBox textPassport_num = (TextBox)row.FindControl("textbox9");
    
        

        gv_weddingCustomer.EditIndex = -1;
        String customerUpdateQuery = "update Customer set fname = '" + textFname.Text + "',lname = '" + textLname.Text + "' where CustomerID = " + lblCustomerID.Text + " ";
              
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


    protected void  gv_weddingCustomer_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gv_weddingCustomer.EditIndex = -1;
        fillGrid();
    }


    protected void  gv_weddingCustomer_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {      
        /*GridViewRow row = (GridViewRow)gv_weddingCustomer.Rows[e.RowIndex];
        Label lbldeleteID = (Label)row.FindControl("lblid");
        String customerDeleteQuery = "delete Customer where ID ='"+ lbldeleteID.Text + "'";
        bool deleteResult = dc.insertIt(customerDeleteQuery);

        lblDeleteMsg.Visible = true;
        if (deleteResult == true)
            lblDeleteMsg.Text = "Customer with ID '" + lbldeleteID.Text + "'was sucessfully Deleted";
        else
            lblDeleteMsg.Text = "Sorry!Couldn't delete the Customer with ID '"+lbldeleteID.Text+"' ";
        fillGrid();*/
       
    }
    protected void  gv_weddingCustomer_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void  gv_weddingCustomer_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

    }
    protected void  gv_weddingCustomer_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void  gv_weddingCustomer_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv_weddingCustomer.PageIndex = e.NewPageIndex;
        fillGrid();
    }
    protected void gv_weddingCustomer_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}
