using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class main_package_create : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       
        Session["mainPackage"] = txtmainpac_name.Text;

        Response.Redirect("sub_package_create.aspx");
    }
    protected void save_main_pac_Click(object sender, EventArgs e)
    {
        DbConnect db = new DbConnect();

       DataTable dt = db.select("Select max(package_id) from mainPackege");

       string id = dt.Rows[0][0].ToString();

       imageUpload1.SaveAs(Server.MapPath("tour_main/"+imageUpload1.PostedFile.FileName));
       string url = "tour_main/" + imageUpload1.PostedFile.FileName;
                      
       
        String sql1 = "insert into mainPackege(name,description,image_main) values('" + txtmainpac_name.Text + "','" + txtdescription_main.Text + "','" +url+ "')";
       
                 
        bool conf1 = db.insert(sql1);

        if (conf1 == true)
        {
            
            lblcon.Text = "Successfully added";
            
        }
        else
        {
            
            lblcon.Text = "Cannot be added";
        }

          //  Response.Redirect("Confirmation.aspx");
    }
    protected void refresh_Click(object sender, EventArgs e)
    {
        txtmainpac_name.Text = String.Empty;
        txtdescription_main.Text = String.Empty;

        txtmainpac_name.Focus();
    }
  //protected void delete_main_pac_Click(object sender, EventArgs e)
   // {
     /*   dbCOnnect db = new dbCOnnect();
        String sql1 = "delete from Packages where  = '" + txtmainpac_name.Text + "','" + imageUpload1.FileContent + "'  ";
        bool b = db.insertIt(sql1);
        bool conf1 = db.insertIt(sql1);
        if (conf1 == true)
        {
            lbldelete.Text = "succcesfully deleted ";
        }
        else
        {
            lbldelete.Text = "cannot be deleted ";
        }*/
   // }
   // protected void edit_main_pac_Click(object sender, EventArgs e)
   // {
      /*  dbCOnnect db = new dbCOnnect();
        String sql1 = "update Packages set Packages = '" + txtmainpac_name.Text + " ','" + imageUpload1.FileContent + "' ";
        bool b = db.insertIt(sql1);

       
        bool conf1 = db.insertIt(sql1);
        if (conf1 == true)
        {

            lbledit.Text = "Succesfully added ";
        }
        else
        {

            lbledit.Text = "Cannot be inserted";
        }*/

   // }
}