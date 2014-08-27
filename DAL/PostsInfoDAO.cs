using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Collections;
using Entity;
using System.Data;

namespace DAL
{
	public class PostsInfoDAO
	{
	    //存储主题帖的信息
		public int Save(PostsInfo postsInfo)
		{
			string sql = "insert into PostsInfo(";
			string parm = "(";
			SqlParameter[] objParams = new SqlParameter[6];
			int count = 0;

			if (postsInfo.BoardId >= 0)
			{
				sql += "BoardId";
				parm += "@BoardId";
				objParams[count] = new SqlParameter("@BoardId", postsInfo.BoardId);
				count++;
			}
			if (postsInfo.Contents != null)
			{
				sql += ",Contents";
				parm += ",@Contents";
				objParams[count] = new SqlParameter("@Contents", postsInfo.Contents);
				count++;
			}
			if (postsInfo.PostingTime != null)
			{
				sql += ",PostingTime";
				parm += ",@PostingTime";
				objParams[count] = new SqlParameter("@PostingTime", postsInfo.PostingTime);
				count++;
			}
			if (postsInfo.Topics != null)
			{
				sql += ",Topics";
				parm += ",@Topics";
				objParams[count] = new SqlParameter("@Topics", postsInfo.Topics);
				count++;
			}
			if (postsInfo.UserName != null)
			{
				sql += ",UserName";
				parm += ",@UserName";
				objParams[count] = new SqlParameter("@UserName", postsInfo.UserName);
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

		//得到所有主题帖信息
		public ArrayList GetAll()
		{
			string sql = "select PostId,UserName,PostingTime,Topics,Contents,BoardId from PostsInfo";
			ArrayList postsInfos = new ArrayList();
			using (SqlDataReader rdr = SqlHelper.ExecuteReader(SqlHelper.strConnectionString, CommandType.Text, sql, null))
				while (rdr.Read())
				{
					PostsInfo postsInfo = new PostsInfo();
					if (rdr[0] != DBNull.Value)
					{
						postsInfo.PostsId = rdr.GetInt32(0);
					}
					if (rdr[1] != DBNull.Value)
					{
						postsInfo.UserName = rdr.GetString(1).ToString().Trim();
					}
					if (rdr[2] != DBNull.Value)
					{
						postsInfo.PostingTime = rdr.GetDateTime(2);
					}
					if (rdr[3] != DBNull.Value)
					{
						postsInfo.Topics = rdr.GetString(3).ToString().Trim();
					}
					if (rdr[4] != DBNull.Value)
					{
						postsInfo.Contents = rdr.GetString(4).ToString().Trim();
					}
					if (rdr[5] != DBNull.Value)
					{
						postsInfo.BoardId = rdr.GetInt32(5);
					}
					postsInfos.Add(postsInfo);
				}
			return postsInfos;
		}

		//得到对应版块的所有主题帖信息
		public ArrayList GetAllById(int boardId)
		{
			string sql = "select PostId,UserName,PostingTime,Topics,Contents,BoardId from PostsInfo where BoardId=@BoardId";
			SqlParameter parm = new SqlParameter("@BoardId",SqlDbType.Int);
			parm.Value = boardId;
			ArrayList postsInfos = new ArrayList();
			using (SqlDataReader rdr = SqlHelper.ExecuteReader(SqlHelper.strConnectionString, CommandType.Text, sql, parm))
				while (rdr.Read())
				{
					PostsInfo postsInfo = new PostsInfo();
					if (rdr[0] != DBNull.Value)
					{
						postsInfo.PostsId = rdr.GetInt32(0);
					}
					if (rdr[1] != DBNull.Value)
					{
						postsInfo.UserName = rdr.GetString(1).ToString().Trim();
					}
					if (rdr[2] != DBNull.Value)
					{
						postsInfo.PostingTime = rdr.GetDateTime(2);
					}
					if (rdr[3] != DBNull.Value)
					{
						postsInfo.Topics = rdr.GetString(3).ToString().Trim();
					}
					if (rdr[4] != DBNull.Value)
					{
						postsInfo.Contents = rdr.GetString(4).ToString().Trim();
					}
					if (rdr[5] != DBNull.Value)
					{
						postsInfo.BoardId = rdr.GetInt32(5);
					}
					postsInfos.Add(postsInfo);
				}
			return postsInfos;
		}

		//得到对应版块的最近主题帖信息
		public PostsInfo GetLatest(int BoardId)
		{
			string sql = "select top 1 PostId,UserName,PostingTime,Topics,Contents,BoardId from PostsInfo where BoardId=@BoardId order by PostingTime desc";
			SqlParameter parm = new SqlParameter("@BoardId", SqlDbType.Int);
			parm.Value = BoardId;
			PostsInfo postsInfo = new PostsInfo();
			using (SqlDataReader rdr = SqlHelper.ExecuteReader(SqlHelper.strConnectionString, CommandType.Text, sql, parm))
			{
				while (rdr.Read())
				{
					if (rdr[0] != DBNull.Value)
					{
						postsInfo.PostsId = rdr.GetInt32(0);
					}
					if (rdr[1] != DBNull.Value)
					{
						postsInfo.UserName = rdr.GetString(1).ToString().Trim();
					}
					if (rdr[2] != DBNull.Value)
					{
						postsInfo.PostingTime = rdr.GetDateTime(2);
					}
					if (rdr[3] != DBNull.Value)
					{
						postsInfo.Topics = rdr.GetString(3).ToString().Trim();
					}
					if (rdr[4] != DBNull.Value)
					{
						postsInfo.Contents = rdr.GetString(4).ToString().Trim();
					}
					if (rdr[5] != DBNull.Value)
					{
						postsInfo.BoardId = rdr.GetInt32(5);
					}
				}
				return postsInfo;
			}
		}

        //得到对应主题号的主题帖信息
        public PostsInfo GetById(int poardId)
        {
            string sql = "select PostId,UserName,PostingTime,Topics,Contents,BoardId from PostsInfo where PostId=@PostId";
            SqlParameter parm = new SqlParameter("@PostId", SqlDbType.Int);
            parm.Value = poardId;
            PostsInfo postsInfo = new PostsInfo();
            using (SqlDataReader rdr = SqlHelper.ExecuteReader(SqlHelper.strConnectionString, CommandType.Text, sql, parm))
                while (rdr.Read())
                {
                    if (rdr[0] != DBNull.Value)
                    {
                        postsInfo.PostsId = rdr.GetInt32(0);
                    }
                    if (rdr[1] != DBNull.Value)
                    {
                        postsInfo.UserName = rdr.GetString(1).ToString().Trim();
                    }
                    if (rdr[2] != DBNull.Value)
                    {
                        postsInfo.PostingTime = rdr.GetDateTime(2);
                    }
                    if (rdr[3] != DBNull.Value)
                    {
                        postsInfo.Topics = rdr.GetString(3).ToString().Trim();
                    }
                    if (rdr[4] != DBNull.Value)
                    {
                        postsInfo.Contents = rdr.GetString(4).ToString().Trim();
                    }
                    if (rdr[5] != DBNull.Value)
                    {
                        postsInfo.BoardId = rdr.GetInt32(5);
                    }
                }
            return postsInfo;
        }

	}
}
