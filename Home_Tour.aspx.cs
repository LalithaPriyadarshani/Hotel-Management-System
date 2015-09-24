using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home_Tour : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_book_Click(object sender, EventArgs e)
    {
        Response.Redirect("lsroriginaltour2.aspx");
    }
}