using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Diagnostics;
using System.Data.SqlClient;
public partial class Video : System.Web.UI.Page 
{
    string postedfilename, SavePath, Filenamewithpath;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Text = "";
       
    }
    protected void btnsub_Click(object sender, EventArgs e)
    {
        if (FileUpload1 != null || FileUpload1.PostedFile != null)
        {
            postedfilename = FileUpload1.PostedFile.FileName;
            SavePath = AppDomain.CurrentDomain.BaseDirectory + "Video\\";
            string NewFName = postedfilename;
            NewFName = NewFName.Substring(NewFName.LastIndexOf("\\") + 1, NewFName.Length - NewFName.LastIndexOf(".")) +"."+ NewFName.Substring(NewFName.LastIndexOf(".") + 1);
            Filenamewithpath = SavePath + NewFName;

            //Save The file
            FileUpload1.PostedFile.SaveAs(Filenamewithpath);

            //Start Converting
            string inputfile, outputfile, filargs;
            string withoutext;

            //Get the file name without Extension
            withoutext = Path.GetFileNameWithoutExtension(Filenamewithpath);

            //Input file path of uploaded image
            inputfile = SavePath + NewFName;

            //output file format in swf
            outputfile = SavePath + "SWF\\"  + withoutext + ".swf";
            Session["outputfile"] = withoutext + ".swf";
            //file orguments for FFMEPG
          //  filargs = "-i " + inputfile + " -ar 22050 " + outputfile;
            filargs = "-i \"" + inputfile + "\" -deinterlace -ab 32 -r 15 -ar 22050 -ac 1 \"" + outputfile + "\"";
            string spath;
            spath = Server.MapPath(".");
            Process proc;
            proc = new Process();
            proc.StartInfo.FileName = spath + "\\ffmpeg\\ffmpeg.exe";
            proc.StartInfo.Arguments = filargs;
            proc.StartInfo.UseShellExecute = false;
            proc.StartInfo.CreateNoWindow = false;
            proc.StartInfo.RedirectStandardOutput = false;
            try
            {

                proc.Start();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            proc.WaitForExit();
            proc.Close();




            //Create Thumbs 

            string thumbpath, thumbname;
            string thumbargs;
            //string thumbre;
            thumbpath = AppDomain.CurrentDomain.BaseDirectory + "Video\\Thumb\\";

            thumbname = thumbpath + withoutext + "%d" + ".jpg";
            Session["thumbname"] = withoutext + "1" + ".jpg";
           // thumbargs = "-i " + inputfile + " -vframes 1 -ss 00:00:07 -s 150x150 " + thumbname;
            thumbargs = "-i \"" + inputfile + "\" -f image2 -vframes 1 -ss 3 -s 150x130 \"" + thumbname + "\"";
            Process thumbproc = new Process();
            thumbproc = new Process();
            thumbproc.StartInfo.FileName = spath + "\\ffmpeg\\ffmpeg.exe";
            thumbproc.StartInfo.Arguments = thumbargs;
            thumbproc.StartInfo.UseShellExecute = false;
            thumbproc.StartInfo.CreateNoWindow = false;
            thumbproc.StartInfo.RedirectStandardOutput = false;
            try
            {

                thumbproc.Start();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            thumbproc.WaitForExit();
            thumbproc.Close();

            File.Delete(inputfile);
            Savedetails();
            lblmsg.Text = "Video Uploaded Successfully";
            hyp.Visible = true;
            hyp.NavigateUrl = "Video_DataList.aspx";
        }
    }

    private void Savedetails()
    {
        string filename, imgname;
        filename = Session["outputfile"].ToString();
        imgname = Session["thumbname"].ToString();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Link"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into video(Video_File,Video_Image) values('" + filename + "','" + imgname  + "')", con);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }
}