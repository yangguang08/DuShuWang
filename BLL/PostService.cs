using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using Entity;
using System.Collections;

namespace BLL
{
	public class PostService
	{
		PostsInfoDAO postInfoDAO= new PostsInfoDAO();

		//存储主题帖的信息
		public int Save(PostsInfo postsInfo)
		{
			return postInfoDAO.Save(postsInfo);
		}

		//得到所有主题帖信息
		public ArrayList GetAll()
		{
			return postInfoDAO.GetAll();
		}

        //根据主题号的到对应信息
        public PostsInfo GetById(int postId)
        {
            return postInfoDAO.GetById(postId);
        }

		//得到对应版块的所有主题帖信息
		public ArrayList GetAllById(int boardId)
		{
			return postInfoDAO.GetAllById(boardId);
		}

		//得到对应版块的最近主题帖信息
		public PostsInfo GetLatest(int BoardId)
		{
			return postInfoDAO.GetLatest(BoardId);
		}
	}
}
