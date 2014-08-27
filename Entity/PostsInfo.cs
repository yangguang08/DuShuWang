using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Entity
{
    public class PostsInfo
    {
        private int _postsId;
        private string  _userName;
        private DateTime _postingTime;
        private string _topics;
        private string _contents;
        private int _boardId;
		private int _replyNum;
		private string _latest;

		public string Latest
		{
			get { return _latest; }
			set { _latest = value; }
		}

		public int ReplyNum
		{
			get { return _replyNum; }
			set { _replyNum = value; }
		}

        public int PostsId
        {
            get
            {
                return _postsId;
            }
			set
			{
				_postsId = value;
			}
        }
        public string UserName
        {
            get
            {
                return _userName ;
            }
            set
            {
                _userName  =value;
            }
        }
        public DateTime PostingTime
        {
            get
            {
                return _postingTime;
            }
            set
            {
                _postingTime =value;
            }
        }
        public string Topics
        {
            get 
            {
                return _topics;
            }
            set
            {
                _topics = value;
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
        public int BoardId
        {
            get
            {
                return _boardId; 
            }
            set
            {
                _boardId = value;
            }
        }
    }

}
