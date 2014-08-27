using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using Entity;
using System.Collections;

namespace BLL
{
	public class ReplyService
	{
		ReplyInfoDAO replyInfoDAO = new ReplyInfoDAO();
		
		//存储回帖信息
		public int Save(ReplyInfo replyInfo)
		{
			return replyInfoDAO.Save(replyInfo);
		}
		//得到所有的回帖信息
		public ArrayList GetAll()
		{
			return replyInfoDAO.GetAll();
		}
		//根据对应主题号的所有回帖信息
		public ArrayList GetAllById(int postId)
		{
			return replyInfoDAO.GetAllById(postId);
		}
		//得到最近的回帖信息
		public ReplyInfo GetLatestById(int postId)
		{
			return replyInfoDAO.GetLatestById(postId);
		}
	}
}
