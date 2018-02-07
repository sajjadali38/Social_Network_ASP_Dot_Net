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

public partial class Photos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string albumid = Request.QueryString["AlbumID"];           
            hfAlbumID.Value = albumid;
            string query = "SELECT DefaultPhotID, AlbumName,photo FROM [Album] INNER JOIN PhotAlbum ON [Album].[DefaultPhotID] = PhotAlbum.PhotoID WHERE Album.[AlbumID] =" + hfAlbumID.Value;
            GetAlbumDetails(query);
        }       
    }
    public void GetAlbumDetails(string query)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Link"].ConnectionString);
        con.Open();
        SqlCommand com = new SqlCommand(query, con);
        SqlDataReader dr = com.ExecuteReader();
        while (dr.Read())
        {
            lblAlbumName.Text = dr["AlbumName"].ToString();
            imAlbumPhoto.ImageUrl = "ThumbNail.ashx?ImURL=" + dr["photo"].ToString();
        }
    }
   protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        lblNoofPicz.Text = e.AffectedRows.ToString();
    }   
    protected void lbUploadPhotos_Click(object sender, EventArgs e)
    {
        HttpContext.Current.Items.Add("AlbumID", hfAlbumID.Value);
        Server.Transfer("ImageUpload.aspx");
    }
}
