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
	public class ReplyInfoDAO
	{
		//存储回帖信息
		public int Save(ReplyInfo replyInfo)
		{
			string sql = "insert into ReplyInfo(";
			string parm = "(";
			SqlParameter[] objParams = new SqlParameter[4];
			int count = 0;

			if (replyInfo.PostId>=0)
			{
				sql += "PostId";
				parm += "@PostId";
				objParams[count] = new SqlParameter("@PostId", replyInfo.PostId);
				count++;
			}
			if (replyInfo.ReplyTime != null)
			{
				sql += ",ReplyTime";
				parm += ",@ReplyTime";
				objParams[count] = new SqlParameter("@ReplyTime", replyInfo.ReplyTime);
				count++;
			}
			if (replyInfo.UserName != null)
			{
				sql += ",UserName";
				parm += ",@UserName";
				objParams[count] = new SqlParameter("@UserName", replyInfo.UserName);
				count++;
			}
			if (replyInfo.Contents != null)
			{
				sql += ",Contents";
				parm += ",@Contents";
				objParams[count] = new SqlParameter("@Contents", replyInfo.Contents);
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

		//得到所有的回帖信息
		public ArrayList GetAll()
		{
			string sql = "select ReplyId,PostId,ReplyTime,UserName,Contents from ReplyInfo";
			ArrayList replyInfos = new ArrayList();
			using (SqlDataReader rdr = SqlHelper.ExecuteReader(SqlHelper.strConnectionString, CommandType.Text, sql, null))
				while (rdr.Read())
				{
					ReplyInfo replyInfo = new ReplyInfo();
					if (rdr[0] != DBNull.Value)
					{
						replyInfo.ReplyId = rdr.GetInt32(0);
					}
					if (rdr[1] != DBNull.Value)
					{
						replyInfo.PostId = rdr.GetInt32(1);
					}
					if (rdr[2] != DBNull.Value)
					{
						replyInfo.ReplyTime = rdr.GetDateTime(2);
					}
					if (rdr[3] != DBNull.Value)
					{
						replyInfo.UserName= rdr.GetString(3).ToString().Trim();
					}
					if (rdr[4] != DBNull.Value)
					{
						replyInfo.Contents = rdr.GetString(4).ToString().Trim();
					}
					replyInfos.Add(replyInfo);
				}
			return replyInfos;
		}

		//根据对应主题号的所有回帖信息
		public ArrayList GetAllById(int postId)
		{
			string sql = "select ReplyId,PostId,ReplyTime,UserName,Contents from ReplyInfo where PostId=@PostId";
			SqlParameter parm = new SqlParameter("@PostId",SqlDbType.Int);
			parm.Value = postId;
			ArrayList replyInfos = new ArrayList();
			using (SqlDataReader rdr = SqlHelper.ExecuteReader(SqlHelper.strConnectionString, CommandType.Text, sql, parm))
				while (rdr.Read())
				{
					ReplyInfo replyInfo = new ReplyInfo();
					if (rdr[0] != DBNull.Value)
					{
						replyInfo.ReplyId = rdr.GetInt32(0);
					}
					if (rdr[1] != DBNull.Value)
					{
						replyInfo.PostId = rdr.GetInt32(1);
					}
					if (rdr[2] != DBNull.Value)
					{
						replyInfo.ReplyTime = rdr.GetDateTime(2);
					}
					if (rdr[3] != DBNull.Value)
					{
						replyInfo.UserName = rdr.GetString(3).ToString().Trim();
					}
					if (rdr[4] != DBNull.Value)
					{
						replyInfo.Contents = rdr.GetString(4).ToString().Trim();
					}
					replyInfos.Add(replyInfo);
				}
			return replyInfos;
		}

		//得到最近的回帖信息
		public ReplyInfo GetLatestById(int postId)
		{
			string sql = "select top 1 ReplyId,PostId,ReplyTime,UserName,Contents from ReplyInfo where PostId=@PostId order by ReplyTime desc";
			SqlParameter parm = new SqlParameter("@PostId", SqlDbType.Int);
			parm.Value = postId;
			ReplyInfo replyInfo = new ReplyInfo();
			using (SqlDataReader rdr = SqlHelper.ExecuteReader(SqlHelper.strConnectionString, CommandType.Text, sql, parm))
				while (rdr.Read())
				{	
					if (rdr[0] != DBNull.Value)
					{
						replyInfo.ReplyId = rdr.GetInt32(0);
					}
					if (rdr[1] != DBNull.Value)
					{
						replyInfo.PostId = rdr.GetInt32(1);
					}
					if (rdr[2] != DBNull.Value)
					{
						replyInfo.ReplyTime = rdr.GetDateTime(2);
					}
					if (rdr[3] != DBNull.Value)
					{
						replyInfo.UserName = rdr.GetString(3).ToString().Trim();
					}
					if (rdr[4] != DBNull.Value)
					{
						replyInfo.Contents = rdr.GetString(4).ToString().Trim();
					}
				}
			return replyInfo;
		}

	}
}
