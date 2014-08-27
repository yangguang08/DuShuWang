using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using BLL;

namespace hanxuange.bbs
{
	public partial class WebForm1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void Submit_Click(object sender, EventArgs e)
        {
            LoginService loginService = new LoginService();
            string UserName=TxtUNo.Text.ToString().Trim();
            string PassWord=TxtPw.Text.ToString().Trim();
            if (loginService.login(UserName, PassWord))
            {
                Session["UserName"] = UserName;
				Session["Power"] = loginService.Power.ToString().Trim();
                Response.Redirect("../bbs/main.aspx");
            }
            else
            {
				Session["Error"] = "用户名和密码不正确，请重新登陆！";
				Response.Redirect("../Error.aspx");
            }
        }

        protected void Resert_Click(object sender, EventArgs e)
        {
            TxtPw.Text = "";
            TxtUNo.Text = "";
        }
	}
}
