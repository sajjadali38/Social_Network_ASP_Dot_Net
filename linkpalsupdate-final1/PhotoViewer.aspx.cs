
using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class PhotViewer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string photoID = Request.QueryString["PhotoID"];
            string albumID = Request.QueryString["AlbumID"];
            ViewState["hfAlbumID"] = albumID;
            //Get Page number by passing photo id
            int index = GetPageNumber(int.Parse(photoID), int.Parse(albumID));
            DataPager1.SetPageProperties(index, 1, true);          
        }
    }
    /// <summary>
    /// Since the pagesize is 1 the row number can be taken as page number
    /// </summary>
    /// <param name="PhotoID"></param>
    /// <param name="AlbumID"></param>
    /// <returns></returns>
    public int GetPageNumber(int PhotoID,int AlbumID)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Link"].ConnectionString);
        con.Open();
        SqlCommand com = new SqlCommand("SELECT PageNumber FROM (SELECT row_number() Over (order by photoid asc) AS PageNumber,photoid,Albumid FROM PhotAlbum where Albumid=" + AlbumID.ToString() + ") As Photos where photoid=" + PhotoID.ToString() + " and Albumid=" + AlbumID.ToString(), con);
        SqlDataReader dr = com.ExecuteReader();
        int pageno = 1;
        if (dr.Read())
        {
            pageno = int.Parse(dr["PageNumber"].ToString());
        }
        dr.Close();
        con.Close();
        return (pageno - 1);       
    }
    public DataTable GetPhoto(string query)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Link"].ConnectionString);
        SqlDataAdapter ada = new SqlDataAdapter(query, con);
        DataTable dtEmp = new DataTable();
        ada.Fill(dtEmp);
        return dtEmp;
    }   
    protected void DataPager1_PreRender(object sender, EventArgs e)
    {
        lvPhotoViewer.DataSource = GetPhoto("Select * from PhotAlbum where AlbumID = " + ViewState["hfAlbumID"].ToString());
        lvPhotoViewer.DataBind();
    }    
}
