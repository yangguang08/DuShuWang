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

namespace hanxuange.bbs
{
	public partial class BBSsite : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if (Session["UserName"] != null)
            {
                LblWelcome.Text = "尊敬的会员  " + Session["UserName"].ToString().Trim() +"  ,您好！";
                LkbQuit.Visible = true;
            }
            else
            {
                LkbQuit.Visible =false;
                LblWelcome.Text = "<a href='../bbs/login.aspx'>登录</a>&nbsp;||&nbsp;<a href='../bbs/register.aspx'>注册</a>";
            }
		}

        protected void LkbQuit_Click(object sender, EventArgs e)
        {
            Session["UserName"] = null;
			Session["Power"] = null;
            LkbQuit.Visible = false;
			Response.Redirect("../bbs/main.aspx");
            LblWelcome.Text = "<a href='../bbs/login.aspx'>登录</a>&nbsp;||&nbsp;<a href='../bbs/register.aspx'>注册</a>";
        }
	}
}
