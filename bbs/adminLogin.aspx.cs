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

namespace ShuXiangShuiNing.bbs
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
			LoginService loginService = new LoginService();
			string userName = TxtUNo.Text.ToString().Trim();
			string passWord = TxtPw.Text.ToString().Trim();
			if (loginService.Adminlogin(userName, passWord))
			{
				Session["UserName"] = null;
				Session["UserName"] = loginService.UserName.ToString().Trim();
				Response.Redirect("../bbs/Manage.aspx");
			}
			else
			{
				Session["Error"] = "您的用户名和密码错误或您的权限不够，无权进入管理界面！";
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
