using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ViewDetails : System.Web.UI.Page
{
    DbAccess dba = new DbAccess();
    private string sportID;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.fillSportsNameCombo(cmbSportsCat.Text);
        }
        if (IsPostBack)
        {
            sportID = getSlectedSportsID();
        } 
    }   

    public void fillSportsNameCombo(string sportCat)
    {
        DataTable dt1 = dba.getSportNames(sportCat);
        cmbSportName.DataSource = dt1;
        cmbSportName.DataValueField = "SportIDCol";
        cmbSportName.DataTextField = "SportNameCol";
        cmbSportName.DataBind();
    }
    protected void cmbSportsCat_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.fillSportsNameCombo(cmbSportsCat.Text);
    }

    protected void btnSearchSelectedSport_Click(object sender, EventArgs e)
    {
        //Get sport ID and pass it through the URL
        Response.Redirect("~/SportsDetails.aspx?Id=" + sportID);
    }
    protected void cmbSportName_SelectedIndexChanged(object sender, EventArgs e)
    {
        sportID = cmbSportName.SelectedValue;
    }

    public string getSlectedSportsID()
    {
        sportID = cmbSportName.SelectedValue;
        return sportID;
    }
}