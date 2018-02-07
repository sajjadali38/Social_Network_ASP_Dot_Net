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

public partial class CreateAlbum : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCreate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Link"].ConnectionString);
        con.Open();
        string query = "Insert into Album (AlbumName) values ('" + txtAlbumName.Text + "');SELECT ident_Current('Album') AS 'AlbumID'";
        SqlCommand com = new SqlCommand(query, con);
        object obj = com.ExecuteScalar();
        int res = int.Parse(obj.ToString());
        Response.Write("<script>alert('Album Created!!')</script>");
        HttpContext.Current.Items.Add("AlbumID",res);
        Server.Transfer("ImageUpload.aspx");
    }
}

