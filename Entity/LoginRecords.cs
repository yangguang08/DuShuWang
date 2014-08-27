using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Entity
{
    public class LoginRecords
    {
        private int _id;
        private string _userName;
        private DateTime _loginTime;
        private DateTime _logoutTime;
        private string _onlineTime;

        public int Id
        {
            get
            {
                return _id;
            }
        }
        public string UserName
        {
            get
            {
                return _userName; ;
            }
            set
            {
                _userName =value;
            }
        }
        public DateTime LoginTime
        {
            get
            {
                return _loginTime;
            }
            set
            {
                _loginTime=value;
            }
        }
        public DateTime LogoutTime
        {
            get
            {
                return _logoutTime;
            }
            set
            {
                _logoutTime=value;
            }
        }
        public string OnlineTime
        {
            get
            {
                return _onlineTime;
            }
            set
            {
                _onlineTime = value;
            }
        }
    }
}
