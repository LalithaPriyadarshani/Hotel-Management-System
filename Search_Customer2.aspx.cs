using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;


public partial class Search_Customer2 : System.Web.UI.Page
{
    DbConnect db = new DbConnect(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillCustomerID();
        }
    }
    public void fillCustomerID()
    {
        DbConnect db = new DbConnect();
        string qry = "select CustomerID from Customer";
        DataTable dt = db.select(qry);

        int count = dt.Rows.Count;

        for (int i = 0; i < count; i++)
        {
            ddCustomerID.Items.Add(dt.Rows[i][0].ToString());
        }
        
    }

    public void fillCustomerDetails()
    {
        string qry = "select customerID,salutation,fname,lname,state_address,phone,country,email,passport_NIC from Customer where customerID='"+ddCustomerID.Text+"'";

        DataSet ds = db.getData(qry);
        gvCustomerDetails.DataSource = ds.Tables["ss"];
        gvCustomerDetails.DataBind();

    }

    protected void ddCustomerID_SelectedIndexChanged(object sender, EventArgs e)
    {
        fillCustomerDetails();
    }
   
    protected void Button3_Click(object sender, EventArgs e)
    {
        fillByCustomerName();
    }

    public void fillByCustomerName()
    {
        string fullName = TxtName.Text;
        string[] name = fullName.Split(' ');
        string fname = name[0];
        string lname = name[1];

        string qry = "select customerID,salutation,fname,lname,address,phone,country,email,passport_NIC from Customer where fname='"+fname+"' and lname='"+lname+"'";

        DataSet ds = db.getData(qry);
        gvCustomerDetails.DataSource = ds.Tables["ss"];
        gvCustomerDetails.DataBind();

    }
    protected void gvCustomerDetails_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("Edit_Customer.aspx");
    }


    protected void gvCustomerDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow selectedRow = gvCustomerDetails.Rows[index];

            string CustomerID = gvCustomerDetails.Rows[index].Cells[1].Text;
            string fname = gvCustomerDetails.Rows[index].Cells[3].Text;
            string lname = gvCustomerDetails.Rows[index].Cells[4].Text;
            string address = gvCustomerDetails.Rows[index].Cells[5].Text;
            string phone = gvCustomerDetails.Rows[index].Cells[6].Text;
            string country = gvCustomerDetails.Rows[index].Cells[7].Text;
            string email = gvCustomerDetails.Rows[index].Cells[8].Text;



            string[] customerArr = { CustomerID,fname, lname, address, country, phone, email };
            Session.Add("customerArr", customerArr);
        
        }
    }
    protected void gvCustomerDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvCustomerDetails.PageIndex = e.NewPageIndex;
        fillCustomerDetails();
    }
    protected void BtnEdit_Click(object sender, EventArgs e)
    {
        Response.Redirect("Edit_Customer.aspx");
    }
}
