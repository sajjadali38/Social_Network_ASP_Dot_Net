using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class DownloadFiles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string Filetype = ".exe";
            DownFile(Filetype);
        }
    }
public void DownFile(string Ftype)
        {
           
            string fileext = ".exe";
            string filename = "setup.exe";
            string path = "~/Downloads";
            
            try
            {

                Response.ContentType = fileext;
                
                Response.AddHeader("Content-Disposition", "attachment; filename=" + filename);


                string filepath = Server.MapPath(path);

                FileStream sourceFile = new FileStream(filepath, FileMode.Open);

                long FileSize;
                FileSize = sourceFile.Length;
                byte[] getContent = new byte[(int)FileSize];
                sourceFile.Read(getContent, 0, (int)sourceFile.Length);
                sourceFile.Close();

                Response.BinaryWrite(getContent);
            }

            catch (Exception em)
            {
            }


        }
    }

