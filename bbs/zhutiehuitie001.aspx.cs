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
using System.Text;
using System.IO;
using Entity;
using BLL;

namespace 汉轩阁.bbs
{
	public partial class WebForm1 : System.Web.UI.Page
	{
        public string  level(DateTime dateTime)
        {
            return dateTime.ToString().Trim().Substring(0,10);
        //    DateTime totaltime = new DateTime();
        //    totaltime= DateTime.Now - dateTime;
        //    if (totaltime > 100)
        //    {
        //        return 10;
        //    }
        //    else if (totaltime > 90)
        //    {
        //        return 9;
        //    }
        //    else if (totaltime > 80)
        //    {
        //        return 8;
        //    }
        //    else if (totaltime > 70)
        //    {
        //        return 7;
        //    }
        //    else if (totaltime > 60)
        //    {
        //        return 6;
        //    }
        //    else if (totaltime > 50)
        //    {
        //        return 5;
        //    }
        //    else if (totaltime > 40)
        //    {
        //        return 4;
        //    }
        //    else if (totaltime > 30)
        //    {
        //        return 3;
        //    }
        //    else if (totaltime > 20)
        //    {
        //        return 2;
        //    }
        //    else
        //    {
        //        return 1;
        //    }
        }
        public void SetBind()
		{
			ArrayList replyInfos = new ArrayList();
			ReplyService replyService = new ReplyService();
			ArrayList invatations = new ArrayList();
			
			replyInfos = replyService.GetAllById(Convert.ToInt32(Session["Topics"].ToString()));
			int count=2;

            #region  //补全对应的帖子信息
            foreach (ReplyInfo reply in replyInfos)
			{
				Invitation invatation = new Invitation();
				UserInfo userInfo = new UserInfo();
				UserService userService = new UserService();
				userInfo=userService.Get(reply.UserName);
				invatation.Content = reply.Contents;
				invatation.Floor = count.ToString()+"楼";
                invatation.Identity = userInfo.Power.Trim() == "0" ? "会员" : "版主";
				invatation.InvitationNum = "4";
				invatation.Level =level( userInfo.RegTime).ToString();
				invatation.NickName = userInfo.UserName;
				invatation.PostTime = reply.ReplyTime.ToString();
				invatation.Sex = userInfo.Gender.ToString() == "0" ? "男" : "女";
				invatation.Signature = userInfo.Signature;
				invatation.UId = userInfo.UserId.ToString();
				invatations.Add(invatation);
            }
            #endregion

            #region  //得到主题帖的全部信息
            PostService postService = new PostService();
            PostsInfo postsInfo = new PostsInfo();
            postsInfo = postService.GetById(Convert.ToInt32(Session["Topics"].ToString()));
            Invitation invatation1 = new Invitation();
            UserInfo userInfo1 = new UserInfo();
            UserService userService1 = new UserService();
            userInfo1 = userService1.Get(postsInfo.UserName);
            invatation1.Content = postsInfo.Contents;
            invatation1.Floor ="1楼";
            invatation1.Identity = userInfo1.Power.Trim()=="0" ? "会员" :"版主";
            invatation1.InvitationNum = "4";
            invatation1.Level = level(userInfo1.RegTime).ToString();
            invatation1.NickName = userInfo1.UserName;
            invatation1.PostTime = postsInfo.PostingTime.ToString();
            invatation1.Sex = userInfo1.Gender.ToString() == "0" ? "男" : "女";
            invatation1.Signature = userInfo1.Signature;
            invatation1.UId = userInfo1.UserId.ToString();
            ArrayList invatations1 = new ArrayList();
            invatations1.Add(invatation1);
            #endregion
            Repeater1.DataSource = invatations1;
            Repeater1.DataBind();
            Repeater2.DataSource = invatations;
			Repeater2.DataBind();
		}

		protected void Page_Load(object sender, EventArgs e)
		{
            if (!IsPostBack)
            {
                SetBind();
            }
		}

		protected void Button1_Click(object sender, EventArgs e)
		{
            if (Session["UserName"] != null)
            {
                ReplyService replyServiceAdd = new ReplyService();
                ReplyInfo replyInfoAdd = new ReplyInfo();
                replyInfoAdd.Contents = editor1.Txt;
                replyInfoAdd.PostId = Convert.ToInt32(Session["Topics"]);
                replyInfoAdd.ReplyTime = DateTime.Now;
                replyInfoAdd.UserName = Session["UserName"].ToString().Trim();
                replyServiceAdd.Save(replyInfoAdd);
                SetBind();
                editor1.Txt = "";
            }
            else
            {
                System.Windows.Forms.MessageBox.Show("对不起，请登陆后再发帖！");
                return;
            }
		}


		//public static string RangerUsControl(string controlName)
		//{
		//    StringBuilder build = new StringBuilder();
		//    HtmlTextWriter htmlWriter = new HtmlTextWriter(new StringWriter(build));
		//    UserControl uc = new UserControl();
		//    Control ctrl=uc.LoadControl(controlName+".ascx");//加载用户定义控件

		//   Label label1=ctrl.FindControl("Label1") as Label;
		//   Label label2=ctrl.FindControl("louceng") as Label;
		//   label1.Text="阳光";
		//   label2.Text="楼主";
		//    string result;
		//    try 
		//    { 
		//        ctrl.RenderControl(htmlWriter);
		//    }
		//    catch { }
		//    finally 
		//    { 
		//        htmlWriter.Flush();
		//        result=build.ToString();
		//    }

		//    return result;//返回控件的HTML代码
            
		//}
	}
}
