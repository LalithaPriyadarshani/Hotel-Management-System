using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;


public partial class email_cus2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       FillGrid();
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        TxtTo.Text = GridEmail.SelectedRow.Cells[4].Text;
    }
    protected void TxtTo_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        MailMessage msg = new MailMessage();

        msg.From = new MailAddress(TxtEmail.Text, "LSR HOTELS");
        msg.To.Add(new MailAddress(TxtTo.Text));
        msg.Subject = TxtSub.Text;
        msg.Body = TxtMsg.Text;
        msg.IsBodyHtml = true;

        if (FileUpload1.HasFile)
        {
            msg.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileUpload1.FileName));
        }
        string input = TxtEmail.Text;
        int index1 = input.IndexOf('@');
        int index2 = input.IndexOf('.');

        int length = index2 - index1;
        string email_type = input.Substring(index1+1,length-1);
        SmtpClient smtp = new SmtpClient();
        if (email_type == "gmail")
            smtp.Host = "smtp.gmail.com";
        else if (email_type == "yahoo" || email_type=="ymail")
            smtp.Host = "smtp.mail.yahoo.com";
        else if (email_type == "Hotmail")
            smtp.Host = "smtp.live.com";

        smtp.Credentials = new NetworkCredential(TxtEmail.Text, TxtPassword.Text);
        smtp.EnableSsl = true;

        try
        {
            smtp.Send(msg);
            LblMsg.Text = "email send Successfully";

        }
        catch (Exception ex)
        {

            LblMsg.Text = "email send failed";



        }



    }

    public void FillGrid()
    {
        DbConnect db = new DbConnect();

        string qry = "select CustomerID,fname,lname,email from Customer";

        DataSet ds=db.getData(qry);
        GridEmail.DataSource = ds.Tables["ss"];
        GridEmail.DataBind();

    }


    protected void GridEmail_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridEmail.PageIndex = e.NewPageIndex;
        FillGrid();
    }
}