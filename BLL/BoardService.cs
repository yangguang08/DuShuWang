using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entity;
using DAL;
using System.Collections;

namespace BLL
{
	public class BoardService
	{
		BoardInfoDAO boardInfoDAO = new BoardInfoDAO();
		
		//存储版块信息
		public int Save(BoardInfo boardInfo)
		{
			return boardInfoDAO.Save(boardInfo);
		}

		//得到所有的版块信息
		public ArrayList GetAll()
		{
			return boardInfoDAO.GetAll();
		}

		//根据类别号获取所有版块信息
		public ArrayList GetAllById(int id)
		{
			return boardInfoDAO.GetALLById(id);
		}

         //根据版块名得到所有板块信息
        public BoardInfo GetIdByName(string boardName)
        {
            return boardInfoDAO.GetIdByName(boardName);
        }

		//得到主题数最多的前五名板块信息
		public ArrayList GetTop()
		{
			return boardInfoDAO.GetTop();
		}
	}
}
