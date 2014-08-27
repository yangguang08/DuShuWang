using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entity
{
	public class Invitation
	{
		private string _nickName;
		private string _identity;
		private string _level;

		private string _uId;
		private string _invitationNum;
		private string _sex;
		private string _postTime;
		private string _floor;
		private string _content;
		private string _signature;

		public string Level
		{
			get { return _level; }
			set { _level = value; }
		}
		public string Signature
		{
			get { return _signature; }
			set { _signature = value; }
		}

		public string Content
		{
			get { return _content; }
			set { _content = value; }
		}

		public string Floor
		{
			get { return _floor; }
			set { _floor = value; }
		}

		public string PostTime
		{
			get { return _postTime; }
			set { _postTime = value; }
		}

		public string Sex
		{
			get { return _sex; }
			set { _sex = value; }
		}

		public string InvitationNum
		{
			get { return _invitationNum; }
			set { _invitationNum = value; }
		}

		public string UId
		{
			get { return _uId; }
			set { _uId = value; }
		}

		public string Identity
		{
			get { return _identity; }
			set { _identity = value; }
		}

		public string NickName
		{
			get { return _nickName; }
			set { _nickName = value; }
		}

	}
}
