using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Entity
{
    public class UserInfo
    {
		private int _userId;
        private string _userName;
        private string _password;
        private string _photo;
        private DateTime _regTime;
        private string _power;
        private string _signature;
        private string _gender;
        private string _email;
        private string _address;

        public string Address
        {
            get { return _address; }
            set { _address = value; }
        }

		public int UserId
		{
			get { return _userId; }
			set { _userId = value; }
		}
        public string UserName
        {
            get 
            {
                return _userName;
            }
            set
            {
                _userName = value;
            }
        }
        public string Password
        {
            get 
            {
                return _password;
            }
            set
            {
                _password = value;
            }
        }
        public string Photo
        {
            get 
            {
                return _photo;
            }
            set
            {
                _photo = value;
            }
        }
        public DateTime RegTime
        {
            get 
            {
                return _regTime;
            }
            set
            {
                _regTime = value;
            }
        }
      
        public string Power
        {
            get 
            {
                return _power;
            }
            set
            {
                _power = value;
            }
        }
        public string Signature
        {
            get 
            {
                return _signature;
            }
            set
            {
                _signature = value;
            }
        }
        public string Gender
        {
            get 
            {
                return _gender; 
            }
            set
            {
                _gender = value;
            }
        }
        public string Email
        {
            get 
            {
                return _email;
            }
            set
            {
                _email = value;
            }
        }
    }
}
