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
using Entity;

namespace hanxuange.bbs
{
	public partial class WebForm2 : System.Web.UI.Page
	{
		BoardService boardService = new BoardService();
		PostService postService = new PostService();
		ReplyService replyService = new ReplyService();
		BoardInfo boardInfo=new BoardInfo();
		ArrayList boardInfos=new ArrayList();
		PostsInfo postsInfo = new PostsInfo();
		ArrayList postsInfos = new ArrayList();
		ReplyInfo replyInfo = new ReplyInfo();
		ArrayList replyInfos = new ArrayList();

		public void dataBind( Repeater repeater,ArrayList boardInfos)
		{
			foreach (BoardInfo boardinfo in boardInfos)
			{
				int boardId = boardinfo.BoardId;
				postsInfos = postService.GetAllById(boardId);
				postsInfo = postService.GetLatest(boardId);
				boardinfo.Topicsnum = postsInfos.Count;
				boardinfo.LatestUserName = postsInfo.UserName;
				boardinfo.Latesttopic = postsInfo.Topics;
				boardinfo.LatestTime = postsInfo.PostingTime;
			}
			repeater.DataSource = boardInfos;
			repeater.DataBind();
		}
		
		protected void Page_Load(object sender, EventArgs e)
		{
			boardInfos = boardService.GetTop();
			dataBind(RPHottopics, boardInfos);
			boardInfos.Clear();
			ArrayList[] boardInfoList=new ArrayList[5];
			for (int i = 0; i < 5; i++)
			{
				boardInfoList[i] = boardService.GetAllById(i+2);
			}
			dataBind(RPShuSKB,boardInfoList[0]);
			dataBind(RPXiangCXY, boardInfoList[1]);
			dataBind(RPShuiMZD, boardInfoList[2]);
			dataBind(RPNingSLC, boardInfoList[3]);
			dataBind(RPGuanSYL, boardInfoList[4]);
		}

        protected void Lkb_Click(object sender, EventArgs e)
        {
			if (Session["UserName"] != null && Session["Power"]=="2")
			{
				Response.Redirect("../bbs/Manage.aspx.aspx");
			}
			else
			{
				Response.Redirect("../bbs/adminLogin.aspx");
			}
        }
	}
}
