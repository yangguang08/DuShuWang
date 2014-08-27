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
using BLL;
namespace ShuXiangShuiNing.songci
{
	public partial class dielianhua : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				if (Session["UserName"] == null)
				{
					Login1.Visible = true;
					welcome.Style["display"] = "none";
				}
				else
				{
					Login1.Visible = false;
					welcome.Style["display"] = "block";
					Label1.Text = Session["UserName"].ToString().Trim() + " 欢迎您来到书香水凝 ";
				}
			}
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			if (Session["UserName"] != null)
			{
				Application.Lock();
				string speak = tbSpeak.Text;
				if (speak.IndexOf('<') != -1 && speak.IndexOf('>') != -1)
				{
					speak = speak.Replace('<', '_');
					speak = speak.Replace('>', '_');

				}
				Application["ChatSongCi"] = Application["ChatSongCi"] + "[" + Session["UserName"].ToString().Trim() + "]    " + speak + "<br/>";
				string chats = Application["ChatSongCi"].ToString();
				string[] chat = new string[chats.Length];
				chat = chats.Split(new char[] { '[' });
				int len = chat.Length;
				if (len > 10)
				{
					int index = chats.IndexOf('>');
					Application["ChatSongCi"] = Application["ChatSongCi"].ToString().Substring(index + 1, chats.Length - index - 1);
				}
				Application.UnLock();
				tbSpeak.Text = "";//将发言框清空
			}
			else
			{
				System.Windows.Forms.MessageBox.Show("请先登录再发表评论！");
				return;
			}
		}

		protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
		{
			string name = Login1.UserName.Trim();
			string pw = Login1.Password.Trim();
			LoginService loginService = new LoginService();
			if (loginService.login(name, pw))
			{
				Session["UserName"] = name;
				Session["Power"] = loginService.Power.ToString().Trim();
				welcome.Style["display"] = "block";
				Login1.Visible = false;
				Label1.Text = name + " 欢迎您来到书香水凝 ";
			}
			else
			{
				Login1.FailureText = "用户名和密码不正确，请重新登陆！";
				Session["Error"] = "";
			}
		}

		protected void LinkButton1_Click(object sender, EventArgs e)
		{
			Session["UserName"] = null;
			Login1.Visible = true;
			welcome.Style["display"] = "none";
		}
	}
}
