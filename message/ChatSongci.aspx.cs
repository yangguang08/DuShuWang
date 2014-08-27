using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace ShuXiangShuiNing.message
{
	public partial class ChatSongci : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			Response.Write("在线人数:" + Application["user_sessions"] as string + "<br/>");
			Response.Write(Application["ChatSongCi"] as string);
		}
	}
}
