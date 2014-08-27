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

namespace 汉轩阁
{
	public partial class zizhuti : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			
		}

        protected void LkbZhuTi_Click(object sender, EventArgs e)
        {
            Session["BoardName"] = null;
            Session["BoardName"] = LkbZhuTi.Text;
            Response.Redirect("../bbs/zhutiall.aspx");
        }
		//private	string zhutiinfo="";
		//private string miaoshuinfo="";
		//private string banzhuinfo="";
		//private int zhutinuminfo=0;
		//private int tieshuinfo=0;
		//private string zuihoufatieinfo="";
		//private string zuihoufatiereninfo="";
		//private string zuihoufatieshijianinfo="";
	    
		//public string Zhutiinfo
		//{
		//    get { zhutiinfo = zhutishuLab.Text; return zhutiinfo; }
		//    set { zhutiinfo = value; zhutishuLab.Text = zhutiinfo; }
		//}
		//public string Miaoshuinfo
		//{
		//    get { miaoshuinfo = miaoshuLab.Text; return miaoshuinfo; }
		//    set { miaoshuinfo = value; miaoshuLab.Text = miaoshuinfo; }
		//}
		//public string Banzhuinfo
		//{
		//    get { banzhuinfo = banzhuLab.Text; return banzhuinfo; }
		//    set { banzhuinfo = value; banzhuLab.Text = banzhuinfo; }
		//}
		//public int Zhutinuminfo 
		//{
		//    get { zhutinuminfo =Convert.ToInt32( zhutishuLab.Text); return zhutinuminfo; }
		//    set { zhutinuminfo = value; zhutishuLab.Text = zhutinuminfo.ToString(); }
		//}
		//public int Tieshuinfo 
		//{
		//    get { tieshuinfo = Convert.ToInt32(tieshuLab.Text); return tieshuinfo; }
		//    set { tieshuinfo = value; tieshuLab.Text = tieshuinfo.ToString(); }
		//}
		//public string Zuihoufatieinfo
		//{
		//    get { zuihoufatieinfo = zuihoufatiezhutiLab.Text; return zuihoufatieinfo; }
		//    set { zuihoufatieinfo = value; zuihoufatiezhutiLab.Text = zuihoufatieinfo; }
		//}
		//public string Zuihoufatiereninfo
		//{
		//    get { zuihoufatiereninfo = zuihoufatierenLab.Text; return zuihoufatiereninfo; }
		//    set { zuihoufatiereninfo = value; zuihoufatierenLab.Text = zuihoufatiereninfo; }
		//}
		//public string Fatieshijianinfo 
		//{
		//    get { zuihoufatieshijianinfo = zuihoufatieshijianLab.Text; return zuihoufatieshijianinfo; }
		//    set { zuihoufatieshijianinfo = value; zuihoufatieshijianLab.Text = zuihoufatieshijianinfo; }
		//}
	}
}