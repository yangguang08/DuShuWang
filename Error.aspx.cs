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

namespace ShuXiangShuiNing
{
	public partial class Error : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			Label1.Text=Session["Error"].ToString().Trim();
		}

		protected void LinkButton2_Click(object sender, EventArgs e)
		{
			Response.Redirect("bbs/main.aspx");
		}

		protected void LinkButton3_Click(object sender, EventArgs e)
		{
			Response.Redirect("Default.aspx");
		}

		protected void LinkButton1_Click(object sender, EventArgs e)
		{
			Response.Write(" <script language='javascript'> history.go(-1); </script> "); 
		}

	}
}
