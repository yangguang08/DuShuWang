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
using Entity;
using BLL;

namespace hanxuange.bbs
{
	public partial class WebForm3 : System.Web.UI.Page
	{
		public void SavePhoto()
		{
			if (photoupload.HasFile)
			{
				Session["filename"] = photoupload.FileName;
				//指定上传文件在服务器上的保存路径 
				string savePath = Server.MapPath("~/img/photo/");
				//检查服务器上是否存在这个物理路径，如果不存在则创建 
				savePath = savePath + photoupload.FileName;
				photoupload.SaveAs(savePath);//保存文件
				photo.ImageUrl = savePath;
				photo.ImageUrl = "~/img/photo/" + Session["filename"];
			}
			else
			{
				Session["filename"] = null;
			}
		}
		protected void BtnRegister_Click(object sender, EventArgs e)
		{
			#region //用户名的判断
			if (user.Text.Length >=1)
			{
				username.ForeColor = System.Drawing.Color.Blue;
				username.Text = "用户名可用";
			}
			else
			{
				username.ForeColor = System.Drawing.Color.Red;
				username.Text = "用户名不能为空，请重新输入！";
				return;
			}
			#endregion
			#region //密码的检测
			if (key1.Text == "")
			{
				chkey.ForeColor = System.Drawing.Color.Red;
				chkey.Text = "密码不能为空，请重新输入！";
				return;
			}
			else
			{
				if (String.Compare(key1.Text, key2.Text, false) != 0)
				{
					chkey.ForeColor = System.Drawing.Color.Red;
					chkey.Text = "两次输入的密码不相同，请重新输入！";
					return;
				}
				else
				{
					chkey.ForeColor = System.Drawing.Color.Blue;
					chkey.Text = "密码可用！";
					key1.Attributes["value"] = key1.Text;
					key2.Attributes["value"] = key2.Text;
				}
			}
			#endregion		
			#region //确认性别是否选择
			if (RadioButton1.Checked == false && RadioButton2.Checked == false)
			{
				sex.ForeColor = System.Drawing.Color.Red;
				sex.Text = "请选择您的性别！";
				return;
			}
			else
			{
				sex.ForeColor = System.Drawing.Color.Blue;
				sex.Text = "您已选择性别";
			}
			#endregion
			#region  //判断邮箱地址是否合法
			string strEmail = mailad.Text;
			if (strEmail.IndexOf('@') > 0)
			{
				if (strEmail.Length >= 9 && (strEmail.IndexOf(".net") > 0 || strEmail.IndexOf(".com") > 0 || strEmail.IndexOf(".edu") > 0 || strEmail.IndexOf(".gov") > 0 || strEmail.IndexOf(".cn") > 0))
				{
					mail.ForeColor = System.Drawing.Color.Blue;
					mail.Text = "邮箱地址合法。";
				}
				else
				{
					mail.ForeColor = System.Drawing.Color.Red;
					mail.Text = "邮箱地址不合法，请重新输入！";
					return;
				}
			}
			else if (strEmail.IndexOf('@') < 0)
			{
				mail.ForeColor = System.Drawing.Color.Red;
				mail.Text = "邮箱地址不合法，请重新输入！";
				return;
			}
			else
			{
				mail.ForeColor = System.Drawing.Color.Red;
				mail.Text = "邮箱地址不能为空，请输入邮箱地址！";
				return;
			}
			#endregion

			UserInfo userInfo = new UserInfo();
			userInfo.UserName = user.Text.ToString().Trim();
			userInfo.Email = mailad.Text.ToString().Trim();
			userInfo.Gender = (RadioButton1.Checked == true) ? "0" : "1";
			userInfo.Password = key2.Text.ToString().Trim();
			SavePhoto();
			if (Session["filename"] != null)
			{
				userInfo.Photo = Session["filename"].ToString().Trim();
			}
			userInfo.Power = "0";
			userInfo.RegTime = System.DateTime.Today;
			userInfo.Signature = TxtSignature.Value.ToString().Trim();
			UserService userService = new UserService();
			try
			{
				userService.Save(userInfo);
			}
			catch(Exception ex)
			{
                System.Windows.Forms.MessageBox.Show("'由于服务器异常，注册失败，请重试！");
				return;
			}
		}

		protected void reset_Click(object sender, EventArgs e)
		{
			user.Text = "";
			//key1.Text = "";
			//key2.Text = "";
			mailad.Text = "";
			username.ForeColor = System.Drawing.Color.Black;
			chkey.ForeColor = System.Drawing.Color.Black;
			mail.ForeColor = System.Drawing.Color.Black;
			sex.ForeColor = System.Drawing.Color.Black;
			username.Text = "*请输入不小于六位字母或数字的用户名";
			chkey.Text = "*再次输入密码确认";
			mail.Text = "*请填入正确的邮箱地址";
			sex.Text = "*选择性别";
			RadioButton1.Checked = false;
			RadioButton2.Checked = false;
			key1.Attributes["value"] = "";
			key2.Attributes["value"] = "";
		}

        protected void photoupload_Disposed(object sender, EventArgs e)
        {
            if (photoupload.HasFile)
            {
                Session["filename"] = photoupload.FileName;
                photo.ImageUrl = photoupload.FileName;
                ////指定上传文件在服务器上的保存路径 
                //string savePath = Server.MapPath("~/img/photo/");
                ////检查服务器上是否存在这个物理路径，如果不存在则创建 
                //savePath = savePath + photoupload.FileName;
                //photoupload.SaveAs(savePath);//保存文件
                //photo.ImageUrl = savePath;
                //photo.ImageUrl = "~/img/photo/" + Session["filename"];
            }
        }

        protected void photoupload_Unload(object sender, EventArgs e)
        {
            if (photoupload.HasFile)
            {
                Session["filename"] = photoupload.FileName;
                photo.ImageUrl = photoupload.FileName;
                ////指定上传文件在服务器上的保存路径 
                //string savePath = Server.MapPath("~/img/photo/");
                ////检查服务器上是否存在这个物理路径，如果不存在则创建 
                //savePath = savePath + photoupload.FileName;
                //photoupload.SaveAs(savePath);//保存文件
                //photo.ImageUrl = savePath;
                //photo.ImageUrl = "~/img/photo/" + Session["filename"];
            }
        }


	}
}
