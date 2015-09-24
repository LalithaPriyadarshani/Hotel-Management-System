using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class sub_package_create : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillMainPackages();
            fillSubPackage();
        }
    }

    public void fillMainPackages()
    {
        DbConnect dcon = new DbConnect();
        String qry = "select name from mainpackege";
        DataTable dt = dcon.select(qry);

        int count = dt.Rows.Count;


        for (int i = 0; i < count; i++)
        {
            DDmainpac_name.Items.Add(dt.Rows[i][0].ToString());
        }
    }

    protected void save_sub_pack_Click(object sender, EventArgs e)
    {
               
       


        string sql1= "select subPack_ID from subPackege where subPacge_Name='"+ddlSubP.Text+"'";
        DbConnect db = new DbConnect();
        DataTable dt = db.select(sql1);
        // subpackage id
        string subpackge_id = dt.Rows[0][0].ToString();
        // package id 
        String qp = "select package_id from mainPackege  where name = '" + DDmainpac_name.Text + "'";// main pack id
        DataTable dt1 = db.select(qp);
        String package_id = dt1.Rows[0][0].ToString();

        ImageUpload2.SaveAs(Server.MapPath("tour_main/" + ImageUpload2.PostedFile.FileName));
        string url = "tour_main/" + ImageUpload2.PostedFile.FileName;

        String sql2 = "insert into days_ (packge_ID,subPcgId,day_no,description,accomodation,days_image) values ('"+package_id+"','" + subpackge_id + "','" + DDday.Text + "','" + txtdescription.Text + "','" + txtacommadation.Text + "','"+url+"')";
        bool conf = db.insert(sql2);

        if ( conf == true)
        {

            lblcon.Text = "Successfully added";
        }
        else
        {

            lblcon.Text = "Cannot be added";
        }

   }




    protected void refresh_Click(object sender, EventArgs e)
    {
      
       // DDmainpac_name.Text = " ";
        txtsubpackname.Text = String.Empty;
        txtnoofdays.Text = String.Empty;
        txtdescription.Text = String.Empty;
        txtacommadation.Text = String.Empty;
        txtprice.Text = String.Empty;
       // txtsubpackname.Focus();
    }

    protected void txtsubpackname_TextChanged(object sender, EventArgs e)
    {
        
    }


    public void fillSubPackage()
    {
        DbConnect dc = new DbConnect();
        String q = "select subPacge_name from subPackege";
        DataTable dt = dc.select(q);

        int c = dt.Rows.Count;

        for (int i = 0; i < c; i++)
        {
            ddlSubP.Items.Add(dt.Rows[i][0].ToString());
        }

    }





    protected void btnsave_Click(object sender, EventArgs e)
    {

        DbConnect dc = new DbConnect();
        String qp = "select package_id from mainPackege  where name = '" + DDmainpac_name.Text + "'";// main pack id
        DataTable dt = dc.select(qp);
        String mid = dt.Rows[0][0].ToString();

        /* insert sub package name */

        String q = "insert into subPackege (packge_ID , subPacge_Name,noofdays,price) values ('" + mid + "' , '" + txtsubpackname.Text + "','"+txtnoofdays.Text+"','"+txtprice.Text+"') ";
        DbConnect dc1 = new DbConnect();
        bool c = dc1.insert(q);

       

        if (c == true)
        {
            lblMessage.Text = "Successfully added";
            fillSubPackage();
        }
        else
        {
            lblMessage.Text = "Error occured";
        }

       

    }
    protected void ddlSubP_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txtdescription_TextChanged(object sender, EventArgs e)
    {

    }
}