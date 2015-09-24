using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class EmployeeManagement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fillGrid();
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (txtFName.Text == "" || txtLName.Text == "" || txtAddress.Text == "" || txtEMail.Text == "" || !fuEmp.HasFile)
        {
            lblError.Text = "Please enter all values";
            lblError.Visible = true;
        }
        else if (txtAddress.Text != "" && txtEMail.Text != "" && txtFName.Text != "" && txtLName.Text != "" && fuEmp.HasFile) // validate controls
        {
        
            lblError.Visible = false;// initially no message

            DbConnect dc = new DbConnect();

            try
            {
                if (fuEmp.PostedFile.ContentType.ToString() == "image/jpeg") // check the image format
                {
                    fuEmp.SaveAs(Server.MapPath("EmpImage/" + fuEmp.PostedFile.FileName));// upload image to a folder
                    String url = "EmpImage/" + fuEmp.PostedFile.FileName;

                    String qry1 = "insert into login (username,password,status) values ('" + txtEMail.Text + "' , 'reseption' , 'reseption')";
                    String qry = "insert into Employee(fname,lname,address,email,Picture) values ('" + txtFName.Text + "' , '" + txtLName.Text + "' , '" + txtAddress.Text + "' , '" + txtEMail.Text + "' , '" + url + "');";
                    bool conf1 = dc.insertIt(qry1);
                    bool conf = dc.insertIt(qry);
                    

                    if (conf == false || conf1 == false)
                        lblError.Text = "Cannot be added";
                    else
                        lblError.Text = "Successfully added";

                    
                    fillGrid();//refresh the grid
                }
                else
                {
                    lblError.Text = "Please insert JPG images only";
                }
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }

        lblError.Visible = true;//set visible the message
    }


    public void fillGrid()// fill the grid view
    {
        DbConnect dc = new DbConnect();
        String qry = "select empid, fname , lname , address , email , Picture from employee";
        DataSet ds = dc.getData(qry);


        if (ds == null)
        {
            bool b = false;
        }

        gvReceptionist.DataSource = ds.Tables["ss"].DefaultView;
        gvReceptionist.DataBind();

    }















    protected void gvReceptionist_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = Convert.ToInt32(e.CommandArgument);
        lblID.Text = gvReceptionist.Rows[index].Cells[1].Text;
        txtFName.Text = gvReceptionist.Rows[index].Cells[2].Text;
        txtLName.Text = gvReceptionist.Rows[index].Cells[3].Text;
        txtAddress.Text = gvReceptionist.Rows[index].Cells[4].Text;
        txtEMail.Text = gvReceptionist.Rows[index].Cells[5].Text;
        //fuEmp. = gvReceptionist.Rows[index].Cells[5].Text;

        /* set visibilities */

        lblID.Visible = true; // id value holder
        lblEmpId.Visible = true; // "ID" name holder
        btnEdit.Enabled = true;
        btnDelete.Enabled = true;
        chkUpdateImage.Visible = true;
        btnAdd.Enabled = false;// make add button disable
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        DbConnect dc = new DbConnect();

        if (chkUpdateImage.Checked && txtAddress.Text != "" && txtEMail.Text != "" && txtFName.Text != "" && txtLName.Text != "" && fuEmp.HasFile) // update with image
        {
            try // try to upload a image
            {
                if (fuEmp.PostedFile.ContentType.ToString() == "image/jpeg") // check the image format
                {
                    fuEmp.SaveAs(Server.MapPath("EmpImage/" + fuEmp.PostedFile.FileName));// upload image to a folder
                    String url = "EmpImage/" + fuEmp.PostedFile.FileName;


                    String sql = "update employee set fname = '" + txtFName.Text + "' ,lname = '" + txtLName.Text + "', address = '" + txtAddress.Text + "' ,email = '" + txtEMail.Text + "' , Picture = '" + url + "'   where empID = '" + lblID.Text + "'    ";
                    bool conf = dc.insert(sql);
                    fillGrid();

                    if (conf == true)
                    {
                        lblError.Text = "Successfully Updated";
                    }
                    else
                    {
                        lblError.Text = "Error occured while updating";
                    }
                }
                else
                {
                    lblError.Text = "Please insert JPG images only";
                }
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }
        else if (!chkUpdateImage.Checked && txtAddress.Text != "" && txtEMail.Text != "" && txtFName.Text != "" && txtLName.Text != "")
        {
            String sql = "update employee set fname = '" + txtFName.Text + "' ,lname = '" + txtLName.Text + "', address = '" + txtAddress.Text + "' ,email = '" + txtEMail.Text + "' where empID = '" + lblID.Text + "'    ";
            bool conf = dc.insert(sql);
            fillGrid();

            if (conf == true)
            {
                lblError.Text = "Successfully Updated";
            }
            else
            {
                lblError.Text = "Error occured while updating";
            }
        }
        

        lblError.Visible = true;

    }
   
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtFName.Text = "";
        txtLName.Text = "";
        txtAddress.Text = "";
        txtEMail.Text = "";

        lblError.Visible = false;
        lblEmpId.Visible = false;
        lblID.Visible = false;

        btnEdit.Enabled = false;
        btnDelete.Enabled = false;

        chkUpdateImage.Visible = false;

        btnAdd.Enabled = true;
    }

    protected void btnClear0_Click(object sender, EventArgs e)
    {
        DbConnect dc = new DbConnect();
        String sql = "delete from employee where empid = '" + lblID.Text + "'  ";
        bool conf = dc.insert(sql);
        fillGrid();

        if (conf == true)
        {
            lblError.Text = "Successfully deleted";
        }
        else
        {
            lblError.Text = "Error occured while deleting";
        }

        lblError.Visible = true;
    }
}