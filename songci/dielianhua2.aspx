<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dielianhua2.aspx.cs" Inherits="ShuXiangShuiNing.songci.dielianhua2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>书目详情</title>
    <link href= "../css/global.css"rel="stylesheet" type="text/css" />
    <link href="../css/introduction.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="container1">
        <div id="leftcontent">
            <p>《蝶恋花》 苏轼 </p> 
            <p class="indent">花褪残红青杏小。
            </p><p>燕子飞时，绿水人家绕。</p>
<p>枝上柳绵吹又少。</p>
<p>天涯何处无芳草。</p>
<p>墙里秋千墙外道。</p>
<p>墙外行人，墙里佳人笑。</p>
<p>笑渐不闻声渐悄。</p>
<p>多情却被无情恼。
</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp; <span>
    春天将尽，百花凋零，杏树上已经长出了青涩的果实。有燕子飞过天空，清澈的河流围绕着村落人家。柳枝上的柳絮已被吹得越来越少，（但是不要担心，）天涯到处都长满了茂盛的芳草。</span> 
<p>&nbsp;&nbsp;&nbsp;&nbsp; </p>
</p>
        </div> 
        <div id ="rightcontent">
            <p align="left" class="MsoNormal">
                <span>&nbsp;&nbsp;&nbsp; 
                围墙里面，有一位少女正在荡秋千，发出动听的笑声。围墙外的行人听到了笑声，（忍不住去想象少女荡秋千的欢乐场面）。慢慢的，墙里的笑声听不见了，行人惘然若失。仿佛自己的多情被少女的无情所伤害。 
                <span lang="EN-US"><o:p></o:p></span></span>
            </p>
            <p>&nbsp;</p>
            <p class="MsoNormal">
                <span>&nbsp;&nbsp; 是一首感叹春光流逝、佳人难见的小词，词人的失意情怀和旷达的人生态度于此亦隐隐透出。</span>
            </p>
            <p class="indent">
            <ul>
                <li><a href=   "dielianhuaThree1.aspx">春花凋零</a></li>
                <li><a href=  "dielianhuaThree2.aspx">佳人笑语</a></li>
            </ul></p>
        </div>  
        <div id="homepic"><a href= "../Default.aspx"><img alt="" src= "../img/home.gif" /></a></div>
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

