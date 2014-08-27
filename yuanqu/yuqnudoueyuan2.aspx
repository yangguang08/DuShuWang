<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yuqnudoueyuan2.aspx.cs" Inherits="ShuXiangShuiNing.yuanqu.yuqnudoueyuan2" %>

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
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 六月飞雪慰孤魂</p> 
            <p class="indent">
                《窦娥冤》全称《感天动地窦娥冤》，是元朝关汉卿的杂剧代表作，悲剧剧情取材自“东海孝妇”的民间故事。《窦娥冤》是中国十大悲剧之一的传统剧目，是一出具有较高文化价值、广泛群众基础的名剧，约八十六个剧种上演过此剧。2003年拍摄过
                    鲍国安，苏瑾主演的同名电视剧。
                   
</p>
<p>&nbsp;</p>
        </div> 
        <div id ="rightcontent">
            <p>&nbsp;《窦娥冤》是一楔四折子结构的杂<br />
            剧，这是元杂剧的基本结构。在这部杂<br />剧中，关汉卿为我们塑造了一个命运悲苦，但又性格刚正的窦娥形象，引发了我们强烈的内心震憾。</p>
            <p class="indent">&nbsp;作品在艺术上，体现出现实主义与浪漫主义风格的融合。作品用丰富的想象和大胆的夸张，设计超现实的情节，显示出正义的强大力量，寄托了作者鲜明的爱憎，反映了广大人民伸张正义、惩治邪恶的愿望。</p>
            <ul>
                <li><a href=  "doueyuanthree3.aspx">元朝将会灭亡</a></li>
                <li><a href=  "doueyuanthree2.aspx">帮助弱小民众</a></li>
                <li><a href= "doueyuanthree1.aspx">善良的灵魂</a></li>
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
