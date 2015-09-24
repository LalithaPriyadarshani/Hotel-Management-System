using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class BookSport : System.Web.UI.Page
{
    DbAccess dba = new DbAccess();
    private int sportID;
    int minMem;
    int maxMem;
    double amt;

    protected void Page_Load(object sender, EventArgs e)
    {       
            sportID = Convert.ToInt32(Request.QueryString["Id"]);
            btnBookNow.Enabled = false;
            LoadDetails();     
    }

    public void LoadDetails()
    {
        DataTable dt1= dba.getSportDetails(sportID);
        lblSportName.Text = dt1.Rows[0]["SportNameCol"].ToString();
        lblRate.Text = dt1.Rows[0]["RateCol"].ToString();
        minMem = Convert.ToInt32(dt1.Rows[0]["MinMemCol"]);  

        DataTable dt2 = dba.getSportVenues(sportID);
        //dt2 returns multiple rows but dt1 returned only one row

        //Max mem value is same for all hotels
        //Therefore getting the oth row is enough
        maxMem = Convert.ToInt32(dt2.Rows[0]["MaxMemCol"]);

        //To get all the venues from dt 2
        cmbSportVenue.DataValueField = "VenueNameCol";
        cmbSportVenue.DataTextField = "VenueNameCol";
        cmbSportVenue.DataSource = dt2;
        cmbSportVenue.DataBind();

        //To load the number of allowed members to the number of members combo box
        //We multiply the minimum number till it is less than or equal to the maximum allowed
        //Those Generated values are then Added to the combo box/dropdown list
        if (!IsPostBack)
        {
            //Set today's date as default value
            dtpStartDate.Value = System.DateTime.Today;
            dtpEndDate.Value = System.DateTime.Today;

            while (minMem <= maxMem)
            {
                ListItem li = new ListItem();
                li.Text = minMem.ToString();
                li.Value = minMem.ToString();
                cmbNumberOfMem.Items.Add(li);
                minMem++;
            }
        }        
    }

    protected void cmbNumberOfMem_SelectedIndexChanged(object sender, EventArgs e)
    {
        int num = Convert.ToInt32(cmbNumberOfMem.SelectedValue);
    }

    protected void btnViewAmt_Click(object sender, EventArgs e)
    {
        setFeeAmt(); 
        txtAmount.Text = amt.ToString();        
    }

    protected void setFeeAmt()
    {
        //assign fee value to amt global variable        
        int num = Convert.ToInt32(cmbNumberOfMem.SelectedValue);
        double rate = Convert.ToDouble(lblRate.Text);
        amt = num * rate;
    }
    protected void btnBookNow_Click(object sender, EventArgs e)
    {
            DateTime today = System.DateTime.Today;
            DateTime sDate = Convert.ToDateTime(dtpStartDate.Value);
            DateTime eDate = Convert.ToDateTime(dtpEndDate.Value);
            setFeeAmt();
        String members = cmbNumberOfMem.SelectedValue;
        String strtDate = sDate.ToString();
        String endDate = eDate.ToString();
        String amount = amt.ToString();
        String venues = cmbSportVenue.SelectedValue;
        String sport = sportID.ToString();

        String [] SportDet = {strtDate,endDate,amount,members,venues,sport};
        Session["sportReservationDetails"] = SportDet;

            //if (checkAvailability())//Insert reservation only if reservation is not full
            //{
            //    dba.udiData("Insert into SportsReservation (SDate,Edate,Fee,NoOfMem,Location,SportID) values ('" + sDate + "','" + sDate + "'," + amt + "," + Convert.ToInt32(cmbNumberOfMem.SelectedValue) + ",'" + cmbSportVenue.SelectedValue.ToString() + "'," + sportID + ")");
            //}

        Session["reservationType"] = "sport";
            Response.Redirect("PaymentMethod.aspx");
    }
    protected void btnCheckAvail_Click(object sender, EventArgs e)
    {
		checkAvailability();
    }
	
	protected bool checkAvailability()
    {
       //get the sum of current bookings
        int sumMem = dba.CheckSportAvailability(sportID, Convert.ToDateTime(dtpStartDate.Value), Convert.ToDateTime(dtpEndDate.Value));
       // check if the selected amount+current booking sum exceed the maximum allowed amount
        int selectedAmt = sumMem+ (Convert.ToInt32(cmbNumberOfMem.SelectedValue));
        if (selectedAmt <= maxMem)
        {
            txtAvail.Text = "Reservation Available";
            btnBookNow.Enabled = true;
            return true;
        }
        else
        {
            txtAvail.Text = "Reservation Full";
            btnBookNow.Enabled = false;
            return false;
        }
    }
}