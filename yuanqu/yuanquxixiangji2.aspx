<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yuanquxixiangji2.aspx.cs" Inherits="ShuXiangShuiNing.yuanqu.yuanquxixiangji2" %>

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
            <p class="indent">
                
                《西厢记》全名《崔莺莺待月西厢记》。它的曲词华艳优美，富于诗的意境，可以说每支曲子都是一首美妙的抒情诗。是我国古典戏剧的现实主义杰作，对后来以爱情为题材的小说、戏剧创作影响很大。</p>
            <p>&nbsp;</p> 
            <p align="left" class="indent">
                
                一座普救古寺，一段属于《西厢记》的记忆与往事，一份情也悠悠爱也悠悠之千古爱情传说。读《西厢记》，游普救寺，听一回大钟楼的钟声，走一段塔院回廊，《西厢记》中老夫人和莺莺所居之处便已在了眼前。一座西厢书斋，一段待月西厢下，迎风尘户开。拂墙花影动，疑是玉人来的记忆；</p>
            <p class="indent">&nbsp;</p>
        </div> 
        <div id ="rightcontent">
            <p>一个莺莺塔，一份“兰闺久寂寞，<br />
                <span>无事度芳春；料得行吟者，应怜长叹人</span><br />一座梨花深院，一幕惊艳、借厢、闹斋、请寓、赖婚、听琴、逾垣、拷红的戏剧场面。一处被张生跳过墙的地方，一棵被张生踩踏过的杏树，对映着的是前世情缘中的一份无奈。<br /></p>
            <p align="left" class="indent">
                夕阳西下，后花园竹影迷离。没有崔莺莺与张生幽会的花前月下，依然有情人不愿离去，依然有依依不舍的情话爱意在缠绵……</p>
            <p class="indent">&nbsp;</p>
            <ul>
                <li><a href="xixiangjithree1.aspx ">西厢记之普救寺</a></li>
                <li><a href= "xixiangjithree2.aspx">蛙鸣传情莺莺塔</a></li>
                
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