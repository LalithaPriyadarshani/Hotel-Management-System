using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Edit_Packages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillmainpac(ddmaintours_main);
            fillmainpac(ddmain_sub);
            fillmainpac(ddmain_day);
            fillsubpack(ddsubtour, ddmain_sub);
            fillsubpack(ddsub_day, ddmain_day);
            filldays();

            fillMainTours();
            fillSubTours();
            filldaysTours();

          


        }
    }
    public void fillmainpac(DropDownList name)
    {
        //dbCOnnect db = new dbCOnnect();
        DbConnect db = new DbConnect();
        String qry = "select name ,package_id from mainpackege";
        DataTable dt = db.selectIt(qry);



        int count = dt.Rows.Count;
     
        for (int i = 0; i < count; i++)
        {
            name.Items.Add(dt.Rows[i][0].ToString());
        }
    }
 public void fillsubpack(DropDownList subname,DropDownList main)
        {
            //dbCOnnect db = new dbCOnnect();
            DbConnect db = new DbConnect();

            String qry = "select s.subPacge_name,subPack_ID from subPackege s , mainPackege p where s.packge_ID=p.package_id and p.name='"+main.Text+"'";
            DataTable dt = db.selectIt(qry);

            subname.DataValueField = "subPack_ID";
            int c = dt.Rows.Count;

            for (int i = 0; i < c; i++)
            {
                subname.Items.Add(dt.Rows[i][0].ToString());
            }
        }
 public void filldays()
 {
     //dbCOnnect db = new dbCOnnect();
     DbConnect db = new DbConnect();

     String qry=" select d.day_no from days_ d , subPackege s , mainPackege p  where s.packge_ID=p.package_id and d.subPcgId=s.subPack_ID and s.subPacge_Name='"+ddsub_day.Text+"' and p.name='"+ddmain_day.Text+"' ";
     DataTable dt = db.selectIt(qry);

     int c = dt.Rows.Count;

     for (int i = 0; i < c; i++)
     {
         ddday_no.Items.Add(dt.Rows[i][0].ToString());
     }
 }

 protected void ddmaintours_main_SelectedIndexChanged(object sender, EventArgs e)// fill main tours
 {
     fillMainTours();

    
 }
 protected void ddsubtour_SelectedIndexChanged(object sender, EventArgs e) // fill sub tours
 {
     fillSubTours();
 }
 protected void ddday_no_SelectedIndexChanged(object sender, EventArgs e)// fill days
 {
     filldaysTours();
 }
 protected void btn_edit_main_Click(object sender, EventArgs e)
 {
     //dbCOnnect db = new dbCOnnect();
     DbConnect db = new DbConnect();



     if (CheckBox1.Checked)
     {
         FileUpload1.Visible = true;
         FileUpload1.SaveAs(Server.MapPath("tour_main/" + FileUpload1.PostedFile.FileName));
         String url = "tour_main/" + FileUpload1.PostedFile.FileName;
         String qry = "update mainPackege set description='" + txtdescription_main.Text + "',image_main='" + url + "' where name='" + ddmaintours_main.Text + "'";
         bool conf = db.insertIt(qry);

         if (conf == true)
         {
             lblmain_edit.Text = "Successfully edited";
             fillMainTours();
         }

         else
         {
             lblmain_edit.Text = "Cannot be edited";
         }
     }
     else
     {
         String qry = "update  mainPackege set description='" + txtdescription_main.Text + "' where name='" + ddmaintours_main.Text + "'";
         bool conf = db.insertIt(qry);

         if (conf == true)
         {
             lblmain_edit.Text = "Successfully edited";
             fillMainTours();
         }

         else
         {
             lblmain_edit.Text = "Cannot be edited";
         }

     }
 }
 protected void btn_edit_sub_Click(object sender, EventArgs e)
 {
     //dbCOnnect db = new dbCOnnect();

     DbConnect db = new DbConnect();


     String qry1 = "select Package_id from mainPackege where name='" + ddmain_sub.Text + "'";
     DataTable dt = db.selectIt(qry1);
     string package_id=dt.Rows[0][0].ToString();

     String qry2 = "update subPackege  set noofdays='" + txtnoofdays.Text + "',price='" + txtprice.Text + "' where  subPacge_Name='" + ddsubtour.Text + "' and packge_ID='"+package_id+ "'";

     
     bool conf = db.insertIt(qry2);

     if (conf == true)
     {
         lblsub_edit.Text = "Successfully edited";
     }
     else
     {
         lblsub_edit.Text = "Cannot be edited";
     }
 }
 protected void btn_edit_days_Click(object sender, EventArgs e)
 {
     //dbCOnnect db = new dbCOnnect();
     DbConnect db = new DbConnect();


     string qry1 = "select Package_id from mainPackege where name='" + ddmain_day.Text + "'";
     DataTable dt = db.selectIt(qry1);
     string package_id = dt.Rows[0][0].ToString();

     string qry2 = "select subPack_ID from subPackege where subPacge_name='" + ddsub_day.Text + "'";
     DataTable dt2 = db.selectIt(qry2);
     string subpackage_id = dt2.Rows[0][0].ToString();

     if (CheckBox2.Checked)
     {
         FileUpload2.Visible = true;

         FileUpload2.SaveAs(Server.MapPath("tour_main/" + FileUpload2.PostedFile.FileName));
         String url = "tour_main/" + FileUpload2.PostedFile.FileName;

         String qry = "update days_  set days_image='" + url + "',accomodation='" + txtday_accomodation.Text + "',description='" + txtdescription_days.Text + "' where day_no='" + ddday_no.Text + "' and subPcgId='" + subpackage_id + "' and packge_ID='" + package_id + "'";
         bool conf = db.insertIt(qry);

         if (conf == true)
         {
             lblday_edit.Text = "Successfully edited";
             filldaysTours();
         }
         else
         {
             lblday_edit.Text = "Cannot be edited";
         }
     }
     else
     {
         String qry = "update days_  set accomodation='" + txtday_accomodation.Text + "',description='" + txtdescription_days.Text + "' where day_no='" + ddday_no.Text + "' and subPcgId='" + subpackage_id + "' and packge_ID='" + package_id + "'";
         bool conf = db.insertIt(qry);

         if (conf == true)
         {
             lblday_edit.Text = "Successfully edited";
             filldaysTours();
         }
         else
         {
             lblday_edit.Text = "Cannot be edited";
         }

     }
 }

 public void fillMainTours()
 {

     dbCOnnect db = new dbCOnnect();
     String qry = "select description,image_main from mainPackege where name='" + ddmaintours_main.Text + "'";
     DataTable dt = db.selectIt(qry);
     txtdescription_main.Text = dt.Rows[0][0].ToString();
     image_main.ImageUrl = dt.Rows[0][1].ToString();
 }
 protected void ddmain_sub_SelectedIndexChanged(object sender, EventArgs e)
 {
     fillsubpack(ddsubtour,ddmain_sub);
 }

 public void fillSubTours()
 {
     dbCOnnect db = new dbCOnnect();
     String qry = "select noofdays,price from subPackege where subPacge_Name='" + ddsubtour.Text + "'";
     DataTable dt = db.selectIt(qry);
     txtnoofdays.Text = dt.Rows[0][0].ToString();
     txtprice.Text = dt.Rows[0][1].ToString();
 }
 public void filldaysTours()
 {
     dbCOnnect db = new dbCOnnect();
     String qry = "select accomodation,description,days_image from days_ where day_no='" + ddday_no.Text + "'";
     DataTable dt = db.selectIt(qry);
     txtday_accomodation.Text = dt.Rows[0][0].ToString();
     txtdescription_days.Text = dt.Rows[0][1].ToString();
     image_day.ImageUrl = dt.Rows[0][2].ToString();
 }
}