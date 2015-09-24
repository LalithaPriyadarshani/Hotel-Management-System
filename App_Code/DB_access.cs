using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DB_access
/// </summary>
public class DB_access
{
    String connectionString = "Data Source=LALITHA-PC;Initial Catalog=LSR;Integrated Security=True";
	public DB_access()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public bool udiData(string uquery)
    {
        bool status = false;
        SqlConnection conn = new SqlConnection(connectionString);

        if (conn.State.ToString() == "Closed")
        {
            conn.Open();
        }

        SqlCommand newCmd = conn.CreateCommand();
        newCmd.Connection = conn;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = uquery;
        newCmd.ExecuteNonQuery();

        status = true;

        return status;
    }

    public DataSet getDetails(String query, String table)
    {
        SqlConnection con = new SqlConnection(connectionString);
       
        SqlCommand cmd = new SqlCommand(query, con);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, table);
        return ds;



    }

    public DataSet agent_graph(String qry)
    {
        SqlConnection con = new SqlConnection(connectionString);
        qry = "select count(c.customerID)as total,a.market from Customer c,Agent a where c.Agent_id=A.agentID group by a.market";


        SqlCommand cmd = new SqlCommand(qry, con);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;

    }
}
