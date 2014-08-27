<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SecondaryPage.aspx.cs" Inherits="ShuXiangShuiNing.SecondaryPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>书目详情</title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
    <link href="../css/introduction.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="container1">
        <div id="leftcontent">
            <p>《红楼梦》是中国文学，乃至世界文学史上一部伟大的文学作品。它是中国古典长篇小说创作的巅峰，是悠久、灿烂的中华
            文化的杰出代表，也是整个人类共同的精神财富和文化遗产。小说以贾宝玉、林黛玉的爱情悲剧为主线，驾构出了贾、王、史、
            薛四大家族的兴衰史。</p> 
            <p class="indent">满纸荒唐言，一把辛酸泪！都云作者痴，谁解其中味？ 一部妇孺皆知的《红楼梦》可谓凝聚了曹雪芹
            一生的心血，是中国文学，乃至世界文学史上一部伟大的文学作品。小说以贾宝玉、林黛玉的爱情悲剧为主线，驾构出了贾、王、
            史、薛四大家族的兴衰史。鲜活的人物、凄美的爱情，是一部读不完、说不尽的千古奇书。</p>
        </div> 
        <div id ="rightcontent">
            <p>自《红楼梦》诞生的那天起，它的<br />
            爱好者就开始了对它的研究，二百多,<br />年来，产生了许多流派，有评点派、评论派、<br />题咏派、索隐派、考证派等。
            经形成了包括<br />曹学、版本学、探佚学、脂学等子分支的“红<br />学”。</p>
            <p class="indent">这里我们搜集红学研究的相关资料，结合下面列出的红楼梦中的典型人物及其事件，为你展示《红楼梦》的
            魅力。</p>
            <ul>
                <li><a href="AboutHero.aspx">黛玉葬花</a></li>
                <li><a href="shixiangyun.aspx">醉卧花阴</a></li>
                <li><a href="baochai.aspx">宝钗扑蝶</a></li>
                <li><a href="juhuashi.aspx">魁夺菊花诗</a></li>
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