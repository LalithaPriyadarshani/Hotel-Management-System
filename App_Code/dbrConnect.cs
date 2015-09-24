using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DbConnect
/// </summary>
public class dbConnect
{

    String conStr = "";
	public dbConnect()
	{
        conStr = @"Data Source=LALITHA-PC;Initial Catalog=LSR;Integrated Security=True"; 
	}
    public bool insertIt(String query)
    {
        SqlConnection conn = new SqlConnection(conStr);
        SqlCommand cmd = new SqlCommand(query, conn);

        try
        {
            conn.Open();
            cmd.ExecuteNonQuery();
            return true;
        }
        catch (Exception ex)
        {
            return false;
        }
        finally
        {
            conn.Close();
            cmd.Dispose();
            conn.Dispose();
        }


    }

    /* Select */

    public DataTable selectIt(String query)
    {
        SqlDataAdapter da = new SqlDataAdapter(query, conStr);
        DataTable dt = new DataTable("info");

        try
        {
            da.Fill(dt);
            return dt;
        }
        catch (Exception ex)
        {
            return null;
        }
        finally
        {
            da.Dispose();
            dt.Dispose();
        }

    }



    /* select for gridview */

    public DataSet getData(string query)
    {
        SqlConnection conn = new SqlConnection(conStr);
        SqlCommand cmd = new SqlCommand(query , conn);
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();

        try
        {
            conn.Open();
            da.Fill(ds, "ss");
            return ds;

        }
        catch (Exception e)
        {
            return null;
        }
    }


    public bool insert(String query)
    {
        SqlConnection conn = new SqlConnection(conStr);
        SqlCommand cmd = new SqlCommand(query, conn);

        try
        {
            conn.Open();
            cmd.ExecuteNonQuery();
            return true;
        }
        catch (Exception ex)
        {
            return false;
        }
        finally
        {
            conn.Close();
            cmd.Dispose();
            conn.Dispose();
        }


    }

    /* Select */

    public DataTable select(String query)
    {
        SqlDataAdapter da = new SqlDataAdapter(query, conStr);
        DataTable dt = new DataTable("info");

        try
        {
            da.Fill(dt);
            return dt;
        }
        catch (Exception ex)
        {
            return null;
        }
        finally
        {
            da.Dispose();
            dt.Dispose();
        }

    }








}
