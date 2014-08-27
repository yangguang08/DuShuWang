<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SecondTangshi.aspx.cs" Inherits="ShuXiangShuiNing.tangshi.SecondTangshi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>唐诗简介</title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
    <link href="../css/introduction.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="container1">
        <div id="leftcontent">
            <p>唐诗泛指创作于唐代的诗。唐代被视为中国各朝代旧诗最丰富的朝代，因此有唐诗、宋词之说。大部分唐诗都收录在《全唐诗》，
            自唐朝开始，有关唐诗的选本不断涌现，而流传最广的当属蘅塘退士编选的《唐诗三百首》。按照时间，唐诗的创作分四个阶段初唐、盛唐、中唐、晚唐。</p> 
            <p class="indent">唐代的诗人特别多。李白、杜甫、白居易是世界闻名的伟大诗人，除他们之外，还有其他无数的诗人，像满天的星斗一般。
            这些诗人，今天知名的就还有二千三百多人。他们的作品，保存在《全唐诗》中的也还有四万八千九百多首。唐诗的题材非常广泛。有的从侧面反映
            当时社会的阶级状况和阶级矛盾，揭露了封建社会的黑暗；有的歌颂正义战争，抒发</p>
        </div> 
        <div id ="rightcontent">
            <p>爱国思想；有的描绘祖国河山的<br/>秀丽多娇；此外，还有抒写个人抱<br/>负
            和遭遇的，有表达儿女爱慕之情的，有诉<br/>说朋友交情、人生悲欢的等等。</p>
            <p class="indent">唐诗的形式是多种多样的。唐代的古体诗，主要有五言和七言两种。近体诗也有两种，一种叫做绝句，一种叫做律诗。基本形式基本上有这样六种：五言古体诗，七言古体诗，五言绝句，七言绝句，五言律诗，七言律诗。</p>
            <p class="indent">这里我们搜集唐诗的相关资料，结合下面列出的几首唐诗，为您展示唐诗的
            魅力。</p>
            <ul>
                <li><a href="Huanghelou.aspx">黄鹤楼</a></li>
                <li><a href="youziyin.aspx">游子吟</a></li>
                <li><a href="shudaonan.aspx">蜀道难</a></li>
                <li><a href="xunxishan.aspx">寻西山隐者不遇</a></li>
                <li><a href="xinlunan.aspx">行路难之一</a></li>
            </ul>
        </div>  
        <div id="homepic"><a href="../Default.aspx"><img alt="" src="../img/home.gif" /></a></div>
        <div id="mappath">
            <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="楷体_GB2312" 
                Font-Size="1.1em" PathSeparator=" » ">
                <PathSeparatorStyle Font-Bold="True" ForeColor="#990000" />
                <CurrentNodeStyle ForeColor="#333333" />
                <NodeStyle Font-Bold="True" ForeColor="#990000"/>
                <RootNodeStyle Font-Bold="True" ForeColor="#990000" />
            </asp:SiteMapPath>
            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        </div>
    </div>
    <div class="footer">
            <p>版权所有：武汉理工大学管理学院信息管理与信息系统0804班 邹瑶 黄伟 黄雨晴</p>
        <p>指导老师：燕翔&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 地址：湖北省武汉市雄楚大街 &nbsp;&nbsp;&nbsp;&nbsp; 邮编：430070</p>
        <p style="vertical-align:middle"><img alt="联系方式" src="../img/qq.gif"  />&nbsp;&nbsp;583153766&nbsp;&nbsp;&nbsp;1019488025&nbsp;&nbsp;&nbsp;766139240</p>
        </div>
    </form>
</body>
</html>