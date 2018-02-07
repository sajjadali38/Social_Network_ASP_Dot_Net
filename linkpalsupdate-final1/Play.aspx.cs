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

public partial class Play : System.Web.UI.Page
{
    string vid,vfname;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            vid = Request.QueryString["vid"].ToString();
            DataSet dst = (DataSet)Session["videods"];
            DataRow[] dw = dst.Tables[0].Select("Video_ID= '" + vid + "'");
            if (dw.Length > 0)
            {
                vfname = dw[0]["Video_File"].ToString();
            }

            string plyr = "<embed src='Players/flvplayer.swf' width='425' height='355' bgcolor='#FFFFFF' type='application/x-shockwave-flash' pluginspage='http://www.macromedia.com/go/g`````etflashplayer' flashvars='file=Video/SWF/" + vfname + "&autostart=false&frontcolor=0xCCCCCC&backcolor=0x000000&lightcolor=0x996600&showdownload=false&showeq=false&repeat=false&volume=100&useaudio=false&usecaptions=false&usefullscreen=true&usekeys=true'></embed>";
            p1h.Controls.Add(new LiteralControl(plyr));


        }
        catch (Exception) { }
    }


}
