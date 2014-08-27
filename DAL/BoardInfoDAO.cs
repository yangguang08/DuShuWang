using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entity;
using System.Data.SqlClient;
using System.Collections;
using System.Data;

namespace DAL
{
	public class BoardInfoDAO
	{
		//存储版块信息
		public int Save(BoardInfo boardInfo)
		{
			string sql = "insert into BoardInfo(";
			string parm = "(";
			SqlParameter[] objParams = new SqlParameter[5];
			int count = 0;

			if (boardInfo.Moderator != null)
			{
				sql += "Moderator";
				parm += "@Moderator";
				objParams[count] = new SqlParameter("@Moderator",boardInfo.Moderator);
				count++;
			}
			if (boardInfo.BoardName != null)
			{
				sql += ",BoardName";
				parm += ",@BoardName";
				objParams[count] = new SqlParameter("@BoardName", boardInfo.BoardName);
				count++;
			}
			if (boardInfo.ClassId != null)
			{
				sql += ",ClassId";
				parm += ",@ClassId";
				objParams[count] = new SqlParameter("@ClassId", boardInfo.ClassId);
				count++;
			}
			if (boardInfo.Description != null)
			{
				sql += ",Description";
				parm += ",@Description";
				objParams[count] = new SqlParameter("@Description", boardInfo.Description);
				count++;
			}
			sql += ") values";
			parm += ")";
			sql += parm;

			SqlParameter[] userParam = new SqlParameter[count];

			for (int i = 0; i < count; i++)
			{
				userParam[i] = objParams[i];
			}
			return SqlHelper.ExecuteNonQuery(sql, userParam);
		}

		//根据类别号得到所有板块信息
		public ArrayList GetALLById(int ClassId)
		{
			string sql = "select BoardId,Moderator,BoardName,ClassId,Description from BoardInfo where ClassId=@ClassId";
			SqlParameter parm = new SqlParameter("@ClassId",SqlDbType.Int);
			parm.Value = ClassId;
			ArrayList boardInfos = new ArrayList();
			using (SqlDataReader rdr = SqlHelper.ExecuteReader(SqlHelper.strConnectionString, CommandType.Text, sql, parm))
				while (rdr.Read())
				{
					BoardInfo boardInfo = new BoardInfo();
					if (rdr[0] != DBNull.Value)
					{
						boardInfo.BoardId = rdr.GetInt32(0);
					}
					if (rdr[1] != DBNull.Value)
					{
						boardInfo.Moderator = rdr.GetString(1).ToString().Trim();
					}
					if (rdr[2] != DBNull.Value)
					{
						boardInfo.BoardName = rdr.GetString(2).ToString().Trim();
					}
					if (rdr[3] != DBNull.Value)
					{
						boardInfo.ClassId = rdr.GetInt32(3);
					}
					if (rdr[4] != DBNull.Value)
					{
						boardInfo.Description = rdr.GetString(4).ToString().Trim();
					}
					boardInfos.Add(boardInfo);
				}
			return boardInfos;
		}

        //根据版块名得到所有板块信息
        public BoardInfo GetIdByName(string boardName)
        {
            string sql = "select BoardId,Moderator,BoardName,ClassId,Description from BoardInfo where BoardName=@BoardName";
            SqlParameter parm = new SqlParameter("@BoardName", SqlDbType.Char);
            parm.Value = boardName;
            BoardInfo boardInfo = new BoardInfo();
            using (SqlDataReader rdr = SqlHelper.ExecuteReader(SqlHelper.strConnectionString, CommandType.Text, sql, parm))
                while (rdr.Read())
                {
                   
                    if (rdr[0] != DBNull.Value)
                    {
                        boardInfo.BoardId = rdr.GetInt32(0);
                    }
                    if (rdr[1] != DBNull.Value)
                    {
                        boardInfo.Moderator = rdr.GetString(1).ToString().Trim();
                    }
                    if (rdr[2] != DBNull.Value)
                    {
                        boardInfo.BoardName = rdr.GetString(2).ToString().Trim();
                    }
                    if (rdr[3] != DBNull.Value)
                    {
                        boardInfo.ClassId = rdr.GetInt32(3);
                    }
                    if (rdr[4] != DBNull.Value)
                    {
                        boardInfo.Description = rdr.GetString(4).ToString().Trim();
                    } 
                }
            return boardInfo;
        }

		//得到所有的版块信息
		public ArrayList GetAll()
		{
			string sql = "select BoardId,Moderator,BoardName,ClassId,Description from BoardInfo";
			ArrayList boardInfos = new ArrayList();
			using(SqlDataReader rdr= SqlHelper.ExecuteReader(SqlHelper.strConnectionString,CommandType.Text,sql,null))
				while (rdr.Read())
				{
					BoardInfo boardInfo = new BoardInfo();
					if (rdr[0] != DBNull.Value)
					{
						boardInfo.BoardId = rdr.GetInt32(0);
					}
					if (rdr[1] != DBNull.Value)
					{
						boardInfo.Moderator = rdr.GetString(1).ToString().Trim();
					}
					if (rdr[2] != DBNull.Value)
					{
						boardInfo.BoardName = rdr.GetString(2).ToString().Trim();
					}
					if (rdr[3] != DBNull.Value)
					{
						boardInfo.ClassId = rdr.GetInt32(3);
					}
					if (rdr[4] != DBNull.Value)
					{
						boardInfo.Description = rdr.GetString(4).ToString().Trim();
					}
					boardInfos.Add(boardInfo);
				}
			return boardInfos;
		}

		//得到主题数最多的前五名板块信息
		public ArrayList GetTop()
		{
			string sql = "select BoardId,Moderator,BoardName,ClassId,Description from BoardInfo where BoardId in (select top 5 BoardId from PostsInfo group by BoardId order by count(*) desc)";
			ArrayList boardInfos = new ArrayList();
			using (SqlDataReader rdr = SqlHelper.ExecuteReader(SqlHelper.strConnectionString, CommandType.Text, sql, null))
				while (rdr.Read())
				{
					BoardInfo boardInfo = new BoardInfo();
					if (rdr[0] != DBNull.Value)
					{
						boardInfo.BoardId = rdr.GetInt32(0);
					}
					if (rdr[1] != DBNull.Value)
					{
						boardInfo.Moderator = rdr.GetString(1).ToString().Trim();
					}
					if (rdr[2] != DBNull.Value)
					{
						boardInfo.BoardName = rdr.GetString(2).ToString().Trim();
					}
					if (rdr[3] != DBNull.Value)
					{
						boardInfo.ClassId = rdr.GetInt32(3);
					}
					if (rdr[4] != DBNull.Value)
					{
						boardInfo.Description = rdr.GetString(4).ToString().Trim();
					}
					boardInfos.Add(boardInfo);
				}
			return boardInfos;
		}
	}
}
