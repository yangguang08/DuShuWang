using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entity;
using DAL;
using System.Collections;

namespace BLL
{
	public class UserService
	{
		private UserInfoDAO userInfoDAO = new UserInfoDAO();
		public int Save(UserInfo userInfo)
		{
			return this.userInfoDAO.Save(userInfo);
		}
		public UserInfo Get(string userName)
		{
			return this.userInfoDAO.GetUserInfo(userName);
		}
        public ArrayList GetAll()
        {
            return this.userInfoDAO.GetAll();
        }
	}
}
