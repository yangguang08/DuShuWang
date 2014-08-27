using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Entity
{
    public class ReplyInfo
    {
        private int _replyId;
        private int _postId;
        private DateTime _replyTime;
        private string _userName;
        private string _contents;


        public int ReplyId
        {
            get
            {
                return _replyId;
            }
			set
			{
				_replyId = value;
			}
        }
        public int PostId
        {
            get
            {
                return _postId;
            }
            set
            {
                _postId =value;
            }
        }
        public DateTime ReplyTime
        {
            get 
            {
                return _replyTime;
            }
            set
            {
                _replyTime =value;
            }
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
        public string Contents
        {
            get
            {
                return _contents;
            }
            set
            {
                _contents = value;
            }
        }
    }
}
