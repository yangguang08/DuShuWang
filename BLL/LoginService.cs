using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entity;

namespace BLL
{
	public class LoginService
	{
		private string _userName;
		private string _passWord;
        private string _power;

        public string Power
        {
            get { return _power; }
            set { _power = value; }
        }

		public string PassWord
		{
			get { return _passWord; }
			set { _passWord = value; }
		}


		public string UserName
		{
			get { return _userName; }
			set { _userName = value; }
		}
		UserService userService = new UserService();
		UserInfo userInfo = new UserInfo();
		public bool login(string userName, string passWord)
		{
			if (userName != "" && passWord != "")
			{
				userInfo = userService.Get(userName);
				if (userInfo != null)
				{
					if (userInfo.Password == passWord)
					{
						this._userName = userName;
						this._power = userInfo.Power.ToString().Trim();
						return true;
					}
					else
					{
						return false;
					}
				}
				else
				{
					return false;
				}
			}
			else
			{
				return false;
			}
		}
		public bool Adminlogin(string userName, string passWord)
		{
			if (login(userName, passWord))
			{
				if (userInfo.Power == "2")
				{
					return true;
				}
				else
				{
					return false;
				}
			}
			else
			{
				return false;
			}
		}
	}
}
