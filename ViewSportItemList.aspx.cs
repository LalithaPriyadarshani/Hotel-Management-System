using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;

public partial class ViewSportItemList : System.Web.UI.Page
{
    DbAccess dba = new DbAccess();
    private string sportCat;

    protected void Page_Load(object sender, EventArgs e)
    {
        //get the Sport category from the URL passed
        sportCat = Request.QueryString["cat"];

        //Get sports that belong to the sport category
        DataTable dt1 = dba.getSportList(sportCat);

        if (dt1.Rows.Count > 0)
        {
            dgvSportList.DataSource = dt1;
            dgvSportList.DataBind();
        }
    }
}