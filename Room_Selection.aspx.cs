using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Room_Selection : System.Web.UI.Page
{
    
    DbConnect db = new DbConnect();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Label42.Text = Session["room_no"].ToString();
      DataTable dt = db.select("select * from BedType");



        LblSingle.Text = dt.Rows[0][1].ToString();


        LblTripple.Text = dt.Rows[1][1].ToString();

        LblDouble.Text = dt.Rows[2][1].ToString();


        DataTable dt2 = db.select("select * from MealType");



        LblBB.Text = dt2.Rows[0][1].ToString();



        LblHB.Text = dt2.Rows[1][1].ToString();



        LblFB.Text = dt2.Rows[2][1].ToString();

        ASPxButton2.Enabled = true;
        ASPxButton3.Enabled = true;
        ASPxButton4.Enabled = false;



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        double meal_price = 0;
        if (RadioButton1.Checked)
        {
            LblBedPrice.Text = LblSingle.Text;

            if (CheckBox1.Checked)
            {
                meal_price = meal_price + Convert.ToDouble(LblBB.Text);
            }
            if (CheckBox2.Checked)
            {
                meal_price = meal_price + Convert.ToDouble(LblHB.Text);
            }

            if (CheckBox3.Checked)
            {
                meal_price = meal_price + Convert.ToDouble(LblFB.Text);
            }

        }

        else if (RadioButton2.Checked)
        {
            LblBedPrice.Text = LblDouble.Text;

            if (CheckBox1.Checked)
            {
                meal_price = meal_price + (Convert.ToDouble(LblBB.Text)) * 2;
            }
            if (CheckBox2.Checked)
            {
                meal_price = meal_price + (Convert.ToDouble(LblHB.Text)) * 2;
            }

            if (CheckBox3.Checked)
            {
                meal_price = meal_price + (Convert.ToDouble(LblFB.Text)) * 2;
            }

        }


        else
        {
            LblBedPrice.Text = LblTripple.Text;
            if (CheckBox1.Checked)
            {
                meal_price = meal_price + (Convert.ToDouble(LblBB.Text)) * 3;
            }
            if (CheckBox2.Checked)
            {
                meal_price = meal_price + (Convert.ToDouble(LblHB.Text)) * 3;
            }

            if (CheckBox3.Checked)
            {
                meal_price = meal_price + (Convert.ToDouble(LblFB.Text)) * 3;
            }


        }






        LblMealPrice.Text = meal_price.ToString();
        string[] arr = (string[])Session["data"];
        double total_price = (Convert.ToDouble(LblMealPrice.Text) + Convert.ToDouble(LblBedPrice.Text))*Convert.ToInt32(arr[3]);
        LblTotalPrice.Text = total_price.ToString();


        Session["tot_price"] = total_price;
        Session["reservationType"] = "Room";
    }
    protected void ASPxButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Room_Plan2.aspx");
    }
    protected void ASPxButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Room_reservation2.aspx");
    }
    protected void ASPxButton3_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("PaymentMethod.aspx");
    }
}