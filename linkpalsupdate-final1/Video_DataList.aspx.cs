using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Video_DataList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            BindList();
        }
    }

    private void BindList()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Link"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from Video",con);
        cmd.ExecuteNonQuery();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds, "Video");
        Session["videods"] = ds;
        dtlstVideo.DataSource = ds;
        dtlstVideo.DataBind();
    }
}
