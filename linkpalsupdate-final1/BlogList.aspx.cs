using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.IO;

namespace DotNetBlog
{
	/// <summary>
	/// Summary description for BlogList.
	/// </summary>
	public partial class BlogList : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here
		

		
				// initialize Blog and read it into a dataset
				DataSet ds = ReadBlogIntoTable();

				// if we created a new entry, append it to the BlogList
				// and save it to the xml file
				if ( (bool)Session["Changed"])
				{
					AppendComments(ds);
					WriteXmlComments(ds);
					Session["Changed"] = false;
				}

				// Dynamically build the blog into a WebControls.Table
				RebuildTableView(ds);
			
		}

		DataSet ReadBlogIntoTable()
		{
			return ReadXmlComments();
		}

		private DataSet ReadXmlComments()
		{
			// construct the DataSet
			DataSet ds = new DataSet();

			// form the server path of the feedback database
			string filename = Server.MapPath(".\\") + "comments.xml";

			// if the file exists, read  the blog database into the data set
			if (File.Exists(filename))
			{
				ds.ReadXml(filename);
			}
			else
			{
				// otherwise we need to create a new new in-memory 
				// Database table from scratch
				DataTable theTable = new DataTable("Comments");
				ds.Tables.Add(theTable);

				// add a name, time, title, and blog columns to our mock-up blog database
				theTable.Columns.Add("Name", Type.GetType("System.String"));
				theTable.Columns.Add("Time", Type.GetType("System.DateTime"));
				theTable.Columns.Add("Title", Type.GetType("System.String"));
				theTable.Columns.Add("Blog", Type.GetType("System.String"));
			}

			return ds;
		}

		private void WriteXmlComments(DataSet ds)
		{
			string filename = Server.MapPath(".\\") + "comments.xml";
			ds.WriteXml(filename);
		}

		/// <summary>
		///  Append comments to xml file
		/// </summary>
		/// <param name="ds"></param>
		void AppendComments(DataSet ds)
		{
			// create a new DataRow
			DataRow dr = ds.Tables["Comments"].NewRow();
			// Populate the row from the text boxes filled by the user
			dr[0] = Session["Name"];
			dr[1] = DateTime.Now;
			dr[2] = Session["Title"];
			dr[3] = Session["Blog"];

			// add the row to the DataSet
			ds.Tables["Comments"].Rows.InsertAt(dr, 0);

			WriteXmlComments(ds);
		}

		void RebuildTableView(DataSet ds)
		{
			string previousUser = "";  // track previous

			// loop through each row in the data set and create
			// the row on the web page in a web table
			foreach (DataRow dr in ds.Tables[0].Rows)
			{
					// add title (use a single column)
					TableRow tr = new TableRow();
					tr.Cells.Add(new TableCell());

					// change title color slightly
					tr.Cells[0].ForeColor = Color.Navy;
					tr.Cells[0].Width = 400;
					
				//  make the text title big and purple
					tr.Cells[0].Text = "<FONT SIZE=5 COLOR=purple FACE=Rockwell><B>" + dr[2].ToString() + "</B></FONT>";
					this.BlogTable.Rows.Add(tr);

					// add blog in a single column and span 2 columns
					tr = new TableRow();
					tr.Cells.Add(new TableCell());
					tr.Cells[0].Width = 550;
					tr.Cells[0].ColumnSpan = 2;
					tr.Cells[0].Text = dr[3].ToString();
					this.BlogTable.Rows.Add(tr);

					// add user who posted and date (use two columns in the row)
					tr = new TableRow();
					tr.Height = 50;
					tr.HorizontalAlign = HorizontalAlign.Left;
					tr.VerticalAlign = VerticalAlign.Bottom;
					tr.Cells.Add(new TableCell());
					tr.Cells.Add(new TableCell());
					

					tr.Cells[0].Text = "Posted by " + dr[0].ToString();
					DateTime postTime = DateTime.Parse(dr[1].ToString());
					tr.Cells[1].HorizontalAlign = HorizontalAlign.Right;
					
					tr.Cells[1].Text = String.Format("<i>{0}</i>", postTime.ToString("MMM dd, 2011 @ hh:mm"));
					this.BlogTable.Rows.Add(tr);

					// add separtor graphic and span 2 columns
					tr = new TableRow();
					tr.Cells.Add(new TableCell());
					tr.Cells.Add(new TableCell());
					tr.Cells[0].ColumnSpan  = 2;
					
					this.BlogTable.Rows.Add(tr);

					string imageFile = this.ResolveUrl( @".\images\separator.jpg");
					System.Web.UI.WebControls.Image separator = new System.Web.UI.WebControls.Image();
					separator.ImageUrl = imageFile;
					separator.Width = 600;
					separator.Height = 32;
					separator.Visible = true;
					
					tr.Cells[0].Controls.Add(separator);
					tr.Cells[0].HorizontalAlign = HorizontalAlign.Center;
					

				}

		}


		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    

		}
		#endregion

		protected void btnOpenEntry_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("BlogEntry.aspx");
		}
	}
}
