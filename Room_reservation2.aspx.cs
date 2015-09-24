using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Room_reservation2 : System.Web.UI.Page
{

    DbConnect dc = new DbConnect();
    protected void Page_Load(object sender, EventArgs e)
    {
        BtnNext.Enabled = false;
        ASPxButton2.Enabled = false;
        ASPxButton3.Enabled = false;
        ASPxButton4.Enabled = false;
         
    }
    protected void btn_check_Click(object sender, EventArgs e)
    {
        
           DateTime dt1 = Convert.ToDateTime(date_checkin.Value);
            DateTime dt2 = Convert.ToDateTime(date_checkout.Value);

            BtnNext.Enabled = false;


            try
            {
                if ((dt1 < dt2))
                {


                    System.TimeSpan diff = dt2 - dt1;

                    txt_night.Text = diff.Days + " ";


                    String qry = "select ro.RoomNo,ro.RoomType,ro.Floor_num,h.hotelName from RoomReservation r,Hotels h ,room ro where ro.roomID=r.roomID and r.hotelID = h.hotelID and h.hotelName  = '" + dro_hotel.Text + "' and [res_id]" +
                            "not in ( select [res_id] from room ro, Hotels where r.hotelID = h.HotelID and [arrival_time] >= '" + dt1 + "' and [arrival_time]   <=  '" + dt2 + "' " +
                                "or [departure_time] >= '" + dt1 + "' and [departure_time]  <= '" + dt2 + "' or " +
                                     "[arrival_time] <= '" + dt1 + "' and [departure_time] >= '" + dt2 + "'   );";


                    DataTable dt = dc.select(qry);
                    if (dt == null || dt.Rows.Count == 0)
                    {

                        lbl_ho_na.Text = dro_hotel.Text;
                        lblcheckin.Text = date_checkin.Text;
                        lblcheckout.Text = date_checkout.Text;
                        lblnight.Text = txt_night.Text;

                        LblMsg.Text = "No Rooms Available";

                    }
                    else
                    {
                        LblMsg.Text = "Rooms Available";
                        BtnNext.Enabled = true;

                        lbl_ho_na.Text = dro_hotel.Text;
                        lblcheckin.Text = date_checkin.Text;
                        lblcheckout.Text = date_checkout.Text;
                        lblnight.Text = txt_night.Text;
                        // String sesstionName = this.Session.SessionID; // get sesstion name

                       // txt_night.Text = dt.Rows[0][6].ToString();*/

                        /*get room id */


                       int count = dt.Rows.Count;
                        String[] roomNOValues = new String[count];


                      
                        for (int i = 0; i < count; i++)
                        {
                            roomNOValues[i] = dt.Rows[i][0].ToString();
                        }

                        /*get room floor*/

                      String[] roomFloor = new String[count];
                        for (int j = 0; j < count; j++)
                        {
                            roomFloor[j] = dt.Rows[j][2].ToString();


                        }



                        String[] allData = { dro_hotel.Text, dt1.ToString(), dt2.ToString(), txt_night.Text }; // hotel , checkinDate , checkOutDate , nights

                        Session["roomNO"] = roomNOValues; // pass room id
                        Session["roomFloor"] = roomFloor; // pass room floors
                        Session["data"] = allData; // pass page data


                        Session["Hotel_Name"] = dro_hotel.Text;

                        if (dt != null)
                        {
                            Session["roomDet"] = dt;

                        }


                    }




                }

                else
                {
                    LblMsg.Text = "error";
                }


            }
            catch (Exception ex)
            {
            }


       









     }


    protected void date_checkin_DateChanged(object sender, EventArgs e)
    {

    }
    protected void BtnNext_Click(object sender, EventArgs e)
    {
        Response.Redirect("Room_Plan2.aspx");
    }
    protected void ASPxButton2_Click(object sender, EventArgs e)
    {

    }
    protected void ASPxButton3_Click(object sender, EventArgs e)
    {

    }
}

