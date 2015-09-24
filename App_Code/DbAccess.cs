using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

public class DbAccess
{
    public static SqlConnection con;//create an object from SqlConnection Class
    public static string ConStr = @"Data Source=LALITHA-PC;Initial Catalog=LSR;Integrated Security=True";

    public DbAccess()
    {
        con = new SqlConnection(ConStr);//assign values to con object by calling the parametarised constructer
        if (con.State.ToString() == "Closed")//open the connection if it is closed
        {
            con.Open();
        }
    }
    
    public bool udiData(string query)//for update delete insert quries. . .
    {
        if (con.State.ToString() == "Closed")//open the connection if it is closed
        {
            con.Open();
        }
        bool status = false;
        SqlCommand newCmd = con.CreateCommand();
        newCmd.Connection = con;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = query;
        newCmd.ExecuteNonQuery();
        status = true;
        con.Close();
        return status;
    }

    public int getMaxSportId()//get the last inserted sportID  to insert into SportVenue table(Add new Sport)
    {
        if (con.State.ToString() == "Closed")
        {
            con.Open();
        }
        SqlCommand newCmd = con.CreateCommand();
        newCmd.Connection = con;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "SELECT max(SportID) FROM Sport";      

        //We get only one value, We do not need a data reader
        //Therefore best method to use is ExecuteScalar and then we convert and assign that value
        int sportId = Convert.ToInt32(newCmd.ExecuteScalar());
        con.Close();
        return sportId;
    }

    public DataTable getSportNames(string sportCat)//get all sports when sport category is given - (search form)
    {
        if (con.State.ToString() == "Closed")
        {
            con.Open();
        }
        DataTable dt = new DataTable();
        dt.Columns.Add("SportIDCol", typeof(int));
        dt.Columns.Add("SportNameCol", typeof(string));
        SqlCommand newCmd = con.CreateCommand();
        newCmd.Connection = con;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select * from Sport where SportCat='" + sportCat + "'";
        SqlDataReader dr = newCmd.ExecuteReader();
        while (dr.Read())
        {
            dt.Rows.Add(dr["SportID"], dr["SportName"]);
        }
        con.Close();
        return dt;
    }

    public DataTable getSportList(string sportCat)//get all sports when category is given(Fill gerid view )
    {
        if (con.State.ToString() == "Closed")
        {
            con.Open();
        }
        DataTable dt = new DataTable();
        dt.Columns.Add("SportIDCol", typeof(int));
        dt.Columns.Add("SportNameCol", typeof(string));
        dt.Columns.Add("DescriptionCol", typeof(string));
        dt.Columns.Add("ImageUrlCol", typeof(string));//
        dt.Columns.Add("SportItemUrlCol", typeof(string));//we have to give the url of the sport's page.so we create new colum for that 
        SqlCommand newCmd = con.CreateCommand();
        newCmd.Connection = con;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select SportID,SportName,Description,Image from Sport where SportCat='" + sportCat + "'";
        SqlDataReader dr = newCmd.ExecuteReader();
        while (dr.Read())
        {
            dt.Rows.Add(dr["SportID"], dr["SportName"], dr["Description"], dr["Image"], "SportsDetails.aspx?Id=" + dr["SportID"]);
        }
        con.Close();
        return dt;
    }

    public DataTable getSportDetails(int sportID) //get all sports when ID is given(Sports Details page)
    {
        if (con.State.ToString() == "Closed")
        {
            con.Open();
        }
        //Create data table
        DataTable dt = new DataTable();
        dt.Columns.Add("SportIDCol", typeof(string));
        dt.Columns.Add("SportNameCol", typeof(string));
        dt.Columns.Add("SportCatCol", typeof(string));
        dt.Columns.Add("RateCol", typeof(float));
        dt.Columns.Add("DescriptionCol", typeof(string));
        dt.Columns.Add("ImageCol", typeof(string));
        dt.Columns.Add("MinMemCol", typeof(string));

        SqlCommand newCmd = con.CreateCommand();
        newCmd.Connection = con;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select s.SportID,s.SportName,s.SportCat,s.Rate,s.Description,s.Image,s.MinMem from Sport s where SportID=" + sportID;

        SqlDataReader dr = newCmd.ExecuteReader();
        while (dr.Read())
        {
            dt.Rows.Add(dr["SportID"], dr["SportName"], dr["SportCat"], dr["Rate"], dr["Description"], dr["Image"], dr["MinMem"]);
        }
        con.Close();
        return dt;
    }

    public DataTable getSportVenues(int sportID)//(edit Sports - SportDEtails - book Sport - )
    {
        if (con.State.ToString() == "Closed")
        {
            con.Open();
        }
        DataTable dt = new DataTable();
        dt.Columns.Add("VenueNameCol", typeof(string));
        dt.Columns.Add("MaxmemCol", typeof(int));

        SqlCommand newCmd = con.CreateCommand();
        newCmd.Connection = con;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "select VenueName,MaxMem from Sport_Venue where SportID=" + sportID;

        SqlDataReader dr = newCmd.ExecuteReader();

        while (dr.Read())
        {
            dt.Rows.Add(dr["VenueName"], dr["MaxMem"]);
        }
        con.Close();
        return dt;
    }

    public bool DeleteSport(int sportID)//(Sport Details Page - Remove Button)
    {
        bool status = false;
        //There is a foreign key constraint
        //Sports Venue must be deleted first and booked sports can't be deleted
        //This is done using the trigger
            try
            {
                if (con.State.ToString() == "Closed")
                {
                    con.Open();
                }

                SqlCommand newCmd = con.CreateCommand();
                newCmd.Connection = con;
                newCmd.CommandType = CommandType.Text;
                newCmd.CommandText = "delete from Sport where SportID=" + sportID;
                newCmd.ExecuteNonQuery();
                status = true;
            }
            catch (Exception e)
            {
                //If the trigger rollsback the transaction code comes here
                status = false;
            }

            con.Close();
        
        return status;
    }

    /*public bool DeleteSportVenue(int sportID)//()
    {
        bool status = false;

        if (con.State.ToString() == "Closed")
        {
            con.Open();
        }
        try
        {
            SqlCommand newCmd = con.CreateCommand();
            newCmd.Connection = con;
            newCmd.CommandType = CommandType.Text;
            newCmd.CommandText = "delete from Sport_Venue where SportID=" + sportID;
            newCmd.ExecuteNonQuery();
            status = true;
        }
        catch (Exception e)
        {
            status = false;
        }
        con.Close();
        return status;
    }*/
	
	public int CheckSportAvailability(int sportID,DateTime sDate,DateTime eDate)//Get the number of current bookings and check availability(Book Sport) 
    {
        int sum;

        if (con.State.ToString() == "Closed")
        {
            con.Open();
        }
        SqlCommand newCmd = con.CreateCommand();
        newCmd.Connection = con;
        newCmd.CommandType = CommandType.Text;
        newCmd.CommandText = "SELECT SUM(NoOfMem) FROM SportsReservation where SportID="+sportID+" AND SDate='"+sDate+"' AND Edate='"+eDate+"'";

        //We get only one value, We do not need a data reader
        //Therefore best method to use is ExecuteScalar and then we convert and assign that value
        try
        {
            sum = Convert.ToInt32(newCmd.ExecuteScalar());
        }
        catch (Exception)//If the above statement returns null then this does not have any bookings
        {
            sum = 0;
            
        }
        con.Close();
        return sum;
    }
}