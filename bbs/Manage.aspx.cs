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

namespace ShuXiangShuiNing.bbs
{
	public partial class WebForm2 : System.Web.UI.Page
	{
		BoardService boardService = new BoardService();
		PostService postService = new PostService();
		ReplyService replyService = new ReplyService();
		UserService userService = new UserService();

		private void SetBind()
		{
            ArrayList datas = new ArrayList();
            switch (DropDownList1.SelectedIndex)
            {
                case 0:
                    datas = userService.GetAll();
                    break;
                case 1:
                    datas = boardService.GetAll();
                    break;
                case 2:
                    datas = postService.GetAll();
                    break;
                case 3:
                    datas = replyService.GetAll();
                    break;
            }
			count.Text = datas.Count.ToString();
			if (datas.Count >= 0)
			{
				bcount.Visible = true;
				acount.Visible = true;
			}
			else
			{
				bcount.Visible = false;
				acount.Visible = false;
			}
			GridView1.DataSource = datas;
			GridView1.DataBind();
		}
		//private int GetLargeID()
		//{
		//    CourseService courseService = new CourseService();
		//    ArrayList courses = service.GetAll(new Course());
		//    ExceptionHandler.exceptionHandler(service.Eros, Session, Response);
		//    int MaxID;
		//    if (courses.Count >= 1)
		//    {
		//        MaxID = Convert.ToInt32(((Course)courses[courses.Count - 1]).CourseNo);
		//    }
		//    else
		//    {
		//        MaxID = 0;
		//    }
		//    for (int num1 = courses.Count - 2; num1 >= 0; num1--)
		//    {
		//        int ID = Convert.ToInt32(((Course)courses[num1]).CourseNo);
		//        if (MaxID < ID)
		//        {
		//            MaxID = ID;
		//        }
		//    }
		//    return MaxID;

		//}

		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				SetBind();
				InsertButton.Visible = true;
			}
		}
		protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
		{
			int now = e.NewPageIndex;
			GridView1.PageIndex = now;
			SetBind();
		}
		protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
		{
			string ID = GridView1.DataKeys[e.RowIndex].Value.ToString();

			UpdatePanel.Visible = false;
			InsertButton.Visible = true;
			SetBind();
		}
		protected void InsertButton_Click(object sender, EventArgs e)
		{
			UpdatePanel.Visible = true;
			//int NewCourseNo = GetLargeID() + 1;
			//UpCourseNo.Text = NewCourseNo.ToString();
			UpCourseNo.Enabled = false;
			UpCourseName.Text = "";
			UpCourseDscription.Value = "";
			UpButton.Text = "Insert";
			InsertButton.Visible = false;
			CancelButton.Visible = true;
			ChangeState.Visible = true;
			ChangeState.Checked = false;
		}
		protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
		{
			UpdatePanel.Visible = true;
			PostsInfo p=new PostsInfo();
			//p.CourseNo = GridView1.DataKeys[e.RowIndex].Value.ToString();
			//p = (Course)p.Get(p);
			//ExceptionHandler.exceptionHandler(service.Eros, Session, Response);
			//UpCourseNo.Text = course.CourseNo;
			//UpCourseName.Text = course.CourseName;
			//UpCourseDscription.Value = course.Description;
			//UpButton.Text = "Update";
			//ChangeState.Visible = false;
		}
		protected void UpButton_Click(object sender, EventArgs e)
		{
			//Course course = new Course();
			//course.CourseNo = UpCourseNo.Text.ToString().Trim();
			//course.CourseName = UpCourseName.Text.ToString().Trim();
			//course.Description = UpCourseDscription.Value.ToString().Trim();
			//if (course.CourseNo == "")
			//{
			//    Response.Write("<script language = javascript>alert('The ID of course can not be null character string');</script>");
			//    return;
			//}
			//else
			//{
			//    if (UpButton.Text == "Insert")
			//    {
			//        service.Save(course);
			//        ExceptionHandler.exceptionHandler(service.Eros, Session, Response);
			//    }
			//    else if (UpButton.Text == "Update")
			//    {
			//        service.Update(course);
			//        ExceptionHandler.exceptionHandler(service.Eros, Session, Response);
			//    }
			//}
			UpdatePanel.Visible = false;
			InsertButton.Visible = true;
			SetBind();
		}
		protected void ChangeState_CheckedChanged(object sender, EventArgs e)
		{
			if (ChangeState.Checked == true)
			{
				UpCourseNo.Enabled = true;
			}
			else
			{
				UpCourseNo.Enabled = false;
			}
		}
		protected void CancelButton_Click(object sender, EventArgs e)
		{
			UpdatePanel.Visible = false;
			CancelButton.Visible = false;
			InsertButton.Visible = true;
		}

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SetBind();
        }
	}
}
