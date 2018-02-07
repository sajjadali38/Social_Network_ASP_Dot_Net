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

namespace DotNetBlog
{
	/// <summary>
	/// Summary description for BlogEntry.
	/// </summary>
	public partial class BlogEntry : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here
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

		protected void btnSubmit_Click(object sender, System.EventArgs e)
		{
			// record the blog data in the Session State
			Session["Title"] = this.txtTitle.Text;
			Session["Blog"] = this.txtBlog.Text;
			Session["Name"] = this.txtName.Text;
			Session["Changed"] = true;

			// redirect backt to the main blog page
			this.Response.Redirect("BlogList.aspx");
		}

		protected void btnClear_Click(object sender, System.EventArgs e)
		{
			this.txtTitle.Text = "";
			this.txtBlog.Text = "";
			this.txtName.Text = "";
//			this.Response.Redirect("BlogEntry.aspx");
		}
	}
}
