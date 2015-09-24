using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

public class dbCOnnect
{
     String conStr = "";


        public dbCOnnect ()
        {
            conStr = @"Data Source=DHANANJI-PC\SQLEXPRESS;Initial Catalog=LSR_HOTELS;Integrated Security=True";
        }



        /*  Update  */


        public bool insertIt(String query)
        {
            SqlConnection conn = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand(query , conn);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                return true;
            }
            catch(Exception ex)
            {
               
                return false;
            }
            finally
            {
                conn.Close();
                cmd.Dispose();
            }
 
        }



        /* Select */

        public DataTable selectIt(String query)
        {
            SqlDataAdapter da = new SqlDataAdapter(query , conStr);
            DataTable dt = new DataTable("Info");

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



    /* Grid view select */


        public DataSet getData(String query)
        {
            SqlConnection conn = new SqlConnection(conStr );
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
            finally
            {
                conn.Close();
            }
        }





    
}
