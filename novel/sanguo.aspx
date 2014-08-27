<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sanguo.aspx.cs" Inherits="ShuXiangShuiNing.novel.sanguo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>书目详情</title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
    <link href="../css/introduction.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="container1">
        <div id="leftcontent">
            <p>《三国演义》是一部历史演义小说，以描写战争为主，大概分为黄巾之乱、董卓之乱、群雄逐鹿、三国鼎立、三国归晋五大部分。在广阔的背景上，上演了一幕幕波澜起伏，气势磅礴的战争场面，成功刻画了几百个人物形象，其中曹操、刘备、孙权、诸葛亮、周瑜、关羽、张飞、赵云等等人物形象脍炙人口，对后世产生了极其深远的影响。</p>
            <p class="indent">《三国演义》反映了丰富的历史内容，人物名称、地理名称、主要事件与《三国志》基本相同。人物性格也是在《三国志》留下的固定形象基础上，才进行再发挥，进行夸张、美化、恶搞、丑化等等。其实这是历史演义小说的套路，历史演义小说都是虚实相间，穿越恶搞；古今兼顾，讽古说今；一段故事，说两朝事情，一个人物，兼具两朝特点。</p>
        </div> 
        <div id ="rightcontent">
            <p>《三国演义》把这种艺术方法发挥得很好，一方面，既尽量地反映了真实的三国历史，照顾到读者希望了解真实历史的需要；另一方面，明朝社会肯定有与三国人物相似类型的人，所以又尽量去符合明朝社会的实际情况，根据明朝社会的实际情况对三国人物进行了一定程度的夸张、美化、恶搞、丑化等等，给予读者一些启发或引导，照顾到读者希望增长见识，统治者希望巩固统治的需要。从历史演义小说的创作套路可以知道，《三国演义》不但比较真实地反映了三国历史的真实面貌，还反映了许多明朝社会内容。</p>
            <ul>
                <li><a href="sangu.aspx">三顾茅庐</a></li>
                <li><a href="shezhan.aspx">舌战群儒</a></li>
                <li><a href="dandao.aspx">单刀赴会</a></li>
                <li><a href="qiqin.aspx">七擒孟获</a></li>
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