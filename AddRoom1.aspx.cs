using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AddRoom1 : System.Web.UI.Page
{
    DbConnect db=new DbConnect();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillBedType();
            fillMealType();

            fillMealPrice();
            fillBedPrice();

        }
        if (Session["hotel"] != null)
        {
            txtHotelName.Text = Session["hotel"].ToString();
        }
    

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        string qry1 = "update mealType set price='" + txtMealPrice.Text + "' where meal_type='" + ddMealType.Text + "'";

        string qry2 = "update bedType set price='" + TxtBedPrice.Text + "' where bed_type='" + ddBedType.Text + "'";

        bool conf1 = db.insert(qry1);
        bool conf2 = db.insert(qry2);

        if (conf1 == true && conf2 == true)
        {
            LblMsg.Text = "successfully edited";

        }

        else
        {
            LblMsg.Text = "error";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DbConnect con = new DbConnect();
        String qry1 = "select hotelid from hotels where hotelname = '" + Session["hotel"].ToString() + "'";
        DataTable dt1 = con.select(qry1);
        String hotelId = dt1.Rows[0][0].ToString();
        // lblMessage.Text = hotelId;

        String qry = "insert into Room(RoomNo, Roomtype , floor_num ,hotelID ) values ( '" + txtRoomNo.Text + "', '" + txtType.Text + "'  ,  '" + txtfloorNo.Text + "' ,'" + hotelId + "' )";
        bool confirm = con.insert(qry);

        if (confirm == true)
        {
            lblMessage.Text = "Successfully Added , Add more rooms";

        }
        else
        {
            lblMessage.Text = "can not be Added";
        }
    }

    public void fillMealPrice()
    {
        string qry = "select price from mealType where meal_type='" + ddMealType.Text + "'";
        DataTable dt = db.select(qry);

        txtMealPrice.Text = dt.Rows[0][0].ToString();
    }

    public void fillBedPrice()
    {
        string qry = "select price from bedType where bed_type='" + ddBedType.Text + "'";
        DataTable dt = db.select(qry);

        TxtBedPrice.Text = dt.Rows[0][0].ToString();
    }

      public void fillBedType()
    {
        string qry = "select bed_type from BedType";
         DataTable dt= db.select(qry);

         int count = dt.Rows.Count;
        for(int i=0;i<count;i++)
        {
            ddBedType.Items.Add(dt.Rows[i][0].ToString());
        }


    }

      public void fillMealType()
      {
          string qry = "select meal_type from mealType";
          DataTable dt = db.select(qry);

          int count = dt.Rows.Count;
          for (int i = 0; i < count; i++)
          {
              ddMealType.Items.Add(dt.Rows[i][0].ToString());
          }
      }
      protected void ddBedType_SelectedIndexChanged(object sender, EventArgs e)
      {
          fillBedPrice();
      }
      protected void ddMealType_SelectedIndexChanged(object sender, EventArgs e)
      {
          fillMealPrice();
      }
      protected void Button4_Click(object sender, EventArgs e)
      {
          Response.Redirect("AddHalls.aspx");
      }

      protected void Button6_Click(object sender, EventArgs e)
      {
          txtRoomNo.Text = "105";
          txtType.Text = "Sea view";
          txtfloorNo.Text = "1";
      }
}