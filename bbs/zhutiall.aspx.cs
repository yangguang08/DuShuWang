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

namespace 汉轩阁.bbs
{
	public partial class WebForm2 : System.Web.UI.Page
	{
		public void ShowTableHeader()
		{
			DataTable ds = new DataTable();
			GridView1.DataSource = ds;
			GridView1.DataBind();
		}
		
		private void SetBind()
		{
			PostService postService = new PostService();
			ArrayList postsInfos = new ArrayList();
			ReplyService replyService = new ReplyService();
			ArrayList replyInfos = new ArrayList();
			ReplyInfo replyInfo = new ReplyInfo();
            BoardService boardService = new BoardService();
            BoardInfo boardInfo = new BoardInfo();
            boardInfo = boardService.GetIdByName(Session["BoardName"].ToString().Trim());
			postsInfos=postService.GetAllById(boardInfo.BoardId);
            
            #region //判断是否有回帖信息，并对应显示数据
            foreach (PostsInfo posts in postsInfos)
			{ 
				replyInfos = replyService.GetAllById(posts.PostsId);
				posts.ReplyNum = replyInfos.Count;
				replyInfo = replyService.GetLatestById(posts.PostsId);
				if (replyInfo.PostId>0)
				{
					posts.Latest = replyInfo.ReplyTime.ToString().Trim() + "  ||  " + replyInfo.UserName.ToString().Trim();
				}
				else
				{
					posts.Latest = "无回帖！";
				}
			}
            #endregion

			if (postsInfos.Count >= 0)
			{
				GridView1.DataSource = postsInfos;
				GridView1.DataBind();
			}
			else
			{
				ShowTableHeader();
			}	
		}

		protected void Page_Load(object sender, EventArgs e)
		{
			SetBind();
		}

		protected void GridView_RowEditing(object sender,GridViewEditEventArgs e)
		{
			string ID = GridView1.DataKeys[e.NewEditIndex].Value.ToString();
			Session["Topics"] = ID;
			Response.Redirect("../bbs/zhutiehuitie001.aspx");
		}
		
		
	}
}
