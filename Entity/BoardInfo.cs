using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Entity
{
    public class BoardInfo
    {
        private int _boardId;
        private string _moderator;
        private string _boardName;
        private int _postsCounts;
        private int _classId;
        private string _description;
		private int _topicsnum;
		private int _tiezinum;
		private string _latestTopic;
		private string _latestUserName;
		private DateTime _latestTime;

		public DateTime LatestTime
		{
			get { return _latestTime; }
			set { _latestTime = value; }
		}

		public string LatestUserName
		{
			get { return _latestUserName; }
			set { _latestUserName = value; }
		}

		public string Latesttopic
		{
			get { return _latestTopic; }
			set { _latestTopic = value; }
		}

		public int Tiezinum
		{
			get { return _tiezinum; }
			set { _tiezinum = value; }
		}

		public int Topicsnum
		{
			get { return _topicsnum; }
			set { _topicsnum = value; }
		}

        public string Description
        {
            get { return _description; }
            set { _description = value; }
        }

        public int BoardId
        {
            get{ return _boardId; }
			set
			{
				_boardId = value;
			}
        }
        public string Moderator
        {
            get
            {
                return _moderator;
            }
            set
            {
                _moderator = value;
            }
        }
         public string BoardName
        {
            get
            {
                return _boardName;
            }
            set
            {
                _boardName = value;
            }
        }
        public int PostsCounts
        {
            get
            {
                return _postsCounts;
            }
            set
            {
                _postsCounts = value;
            }
        }
        public int ClassId
        {
            get
            {
                return _classId;
            }
            set
            {
                _classId = value;
            }
        }
    }
}
