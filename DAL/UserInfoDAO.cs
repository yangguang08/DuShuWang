using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entity;
using System.Data.SqlClient;
using System.Data;
using System.Collections;

namespace DAL
{
    public	class UserInfoDAO
	{
		//存储用户注册信息
		public int Save(UserInfo userInfo)
		{
			String sql = "insert into UserInfo(";
			String param = "(";
			SqlParameter[] objParams = new SqlParameter[9];
			int count = 0;

			if (userInfo.UserName != null)
			{
				sql += " UserName";
				param += " @UserName";
				objParams[count] = new SqlParameter("@UserName", userInfo.UserName);
				count++;
			}

			if (userInfo.Password != null)
			{
				sql += ",Password";
				param += ",@Password";
				objParams[count] = new SqlParameter("@Password", userInfo.Password);
				count++;
			}

			if (userInfo.Photo != null)
			{
				sql += ",Photo";
				param += ",@Photo";
				objParams[count] = new SqlParameter("@Photo", userInfo.Photo);
				count++;
			}

			if (userInfo.RegTime != null)
			{
				sql += ",RegTime";
				param += ",@RegTime";
				objParams[count] = new SqlParameter("@RegTime", userInfo.RegTime);
				count++;
			}
			if (userInfo.Power != null)
			{
				sql += ",Power";
				param += ",@Power";
				objParams[count] = new SqlParameter("@Power", userInfo.Power);
				count++;
			}
			if (userInfo.Signature != null)
			{
				sql += ",Signature";
				param += ",@Signature";
				objParams[count] = new SqlParameter("@Signature", userInfo.Signature);
				count++;
			}
			if (userInfo.Gender != null)
			{
				sql += ",Gender";
				param += ",@Gender";
				objParams[count] = new SqlParameter("@Gender", userInfo.Gender);
				count++;
			}
			if (userInfo.Email != null)
			{
				sql += ",Email";
				param += ",@Email";
				objParams[count] = new SqlParameter("@Email", userInfo.Email);
				count++;
			}
			if (userInfo.Address != null)
			{
				sql += ",Address";
				param += ",@Address";
				objParams[count] = new SqlParameter("@Address", userInfo.Address);
				count++;
			}
			sql += ") values ";
			param += ")";
			sql += param;

			SqlParameter[] userParam = new SqlParameter[count];

			for (int i = 0; i < count; i++)
			{
				userParam[i] = objParams[i];
			}

			return SqlHelper.ExecuteNonQuery(sql, userParam);
		}

		//根据用户号（昵称）得到用户信息
		public UserInfo GetUserInfo(string userName)
		{
			string sql = "select UserId ,UserName,Password,Photo,RegTime,Power,Signature,Gender,Email,Address from UserInfo where UserName=@UserName";
			SqlParameter parm = new SqlParameter("@UserName", SqlDbType.NChar, 10);
			parm.Value = userName;
			UserInfo userInfo = new UserInfo();
			SqlDataReader rdr = SqlHelper.ExecuteReader(SqlHelper.strConnectionString, CommandType.Text, sql, parm);
			if (rdr.Read())
			{
				if (rdr[0] != DBNull.Value)
				{
					userInfo.UserId = rdr.GetInt32(0);
				}
				if (rdr[1] != DBNull.Value)
				{
					userInfo.UserName = rdr.GetString(1).Trim();
				}
				if (rdr[2] != DBNull.Value)
				{
					userInfo.Password = rdr.GetString(2).Trim();
				}
				if (rdr[3] != DBNull.Value)
				{
					userInfo.Photo = rdr.GetString(3).Trim();
				}
				if (rdr[4] != DBNull.Value)
				{
					userInfo.RegTime = rdr.GetDateTime(4);
				}
				if (rdr[5] != DBNull.Value)
				{
					userInfo.Power = rdr.GetString(5).Trim();
				}
				if (rdr[6] != DBNull.Value)
				{
					userInfo.Signature= rdr.GetString(6).Trim();
				}
				if (rdr[7] != DBNull.Value)
				{
					userInfo.Gender = rdr.GetString(7).Trim();
				}
				if (rdr[8] != DBNull.Value)
				{
					userInfo.Email = rdr.GetString(8).Trim();
				}
				if (rdr[9] != DBNull.Value)
				{
					userInfo.Address = rdr.GetString(9).Trim();
				}
			}
			return userInfo;
		}

		//得到所有的用户信息
		public ArrayList GetAll()
		{
			string sql = "select UserId ,UserName,Password,Photo,RegTime,Power,Signature,Gender,Email,Address from UserInfo";
			ArrayList userInfos = new ArrayList();
			using(SqlDataReader rdr = SqlHelper.ExecuteReader(SqlHelper.strConnectionString, CommandType.Text, sql, null))
			while (rdr.Read())
			{
				UserInfo userInfo = new UserInfo();
				if (rdr[0] != DBNull.Value)
				{
					userInfo.UserId = rdr.GetInt32(0);
				}
				if (rdr[1] != DBNull.Value)
				{
					userInfo.UserName = rdr.GetString(1).Trim();
				}
				if (rdr[2] != DBNull.Value)
				{
					userInfo.Password = rdr.GetString(2).Trim();
				}
				if (rdr[3] != DBNull.Value)
				{
					userInfo.Photo = rdr.GetString(3).Trim();
				}
				if (rdr[4] != DBNull.Value)
				{
					userInfo.RegTime = rdr.GetDateTime(4);
				}
				if (rdr[5] != DBNull.Value)
				{
					userInfo.Power = rdr.GetString(5).Trim();
				}
				if (rdr[6] != DBNull.Value)
				{
					userInfo.Signature = rdr.GetString(6).Trim();
				}
				if (rdr[7] != DBNull.Value)
				{
					userInfo.Gender = rdr.GetString(7).Trim();
				}
				if (rdr[8] != DBNull.Value)
				{
					userInfo.Email = rdr.GetString(8).Trim();
				}
				if (rdr[9] != DBNull.Value)
				{
					userInfo.Address = rdr.GetString(9).Trim();
				}
				userInfos.Add(userInfo);
			}
			return userInfos;
		}
	}
}
