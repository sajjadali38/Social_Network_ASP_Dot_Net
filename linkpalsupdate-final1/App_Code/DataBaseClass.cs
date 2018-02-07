using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for DataBaseClass
/// </summary>
public class DataBaseClass
{
    SqlDataAdapter da;
    SqlConnection con;
    SqlCommand cmd = new SqlCommand();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();

    public DataBaseClass()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public void ConnectDataBaseToInsert(string Query)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["Link"].ConnectionString);
        con.Open();
        cmd.CommandText = Query;
        cmd.Connection = con;
        da = new SqlDataAdapter(cmd);
        cmd.ExecuteNonQuery();  
        con.Close();

    }
    public DataSet ConnectDataBaseReturnDS(string Query)
    {
        ds = new DataSet();
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["Link"].ConnectionString);
        con.Open();
        cmd.CommandText = Query;
        cmd.Connection = con;
        da = new SqlDataAdapter(cmd);
        da.Fill(ds);
       cmd.ExecuteNonQuery();  
        con.Close();        
        return ds;
    }
   public DataTable ConnectDataBaseReturnDT(string Query)
    {
       // dt = new DataTable();
        DataSet _ds = new DataSet();
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["Link"].ConnectionString);
        con.Open();
       cmd.CommandText = Query;
      cmd.Connection = con;
        da = new SqlDataAdapter(cmd);
        da.Fill(_ds);
      cmd.ExecuteNonQuery();  
        con.Close();
        return _ds.Tables[0];
    }
}
