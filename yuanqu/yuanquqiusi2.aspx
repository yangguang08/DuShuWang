<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yuanquqiusi2.aspx.cs" Inherits="ShuXiangShuiNing.yuanqu.yuanquqiusi2" %>

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
            <p>《天净沙•秋思》马致远 </p> 
            <p class="indent">枯藤老树昏鸦，小桥流水人家，古道西风瘦马。</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp; 夕阳西下，断肠人在天涯。 
</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp; 这首小令仅五句28字，语言极为凝炼却容量巨大，寥寥数笔就勾画出一幅悲绪四溢的“游子思归图”。 
    这幅图画由两部分构成： 
<p>&nbsp;&nbsp;&nbsp;&nbsp; 一、由精心选取的几组能代表萧秋的景物组成一幅暮色苍茫的秋野图景； </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp; 二、抒写内心深处无尽伤痛而独行寒秋的天涯游子剪影。 </p>
</p>
        </div> 
        <div id ="rightcontent">
            <p>第一幅画共18个字九个名词，其间<br />
            无一虚词，却自然流畅而涵蕴丰富，作<br />者以其娴熟的艺术技巧，让九种不同的景物沐<br />于夕阳的清辉之下，象电影镜头一样以“蒙太<br />奇”的笔法在我们面前依次呈现，一下子就把<br />读者带入深秋时节。</p>
            <p class="indent">第二幅画里，夕阳正西沉，撒下凄冷的斜晖，本是鸟禽回巢、羊牛回圈、人儿归家的团圆时刻，而游子却仍是“断肠人在天涯”怎能不柔肠寸断！

            <ul>
            <li><a href=  "qiusithree1.aspx">简约与深细相依</a></li>
                <li><a href=  "qiusithree2.aspx">静景与动静相映</a></li>
                <li><a href= "qiusithree3.aspx">景色与情思相融</a></li>
            </ul>
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
