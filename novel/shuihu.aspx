<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shuihu.aspx.cs" Inherits="ShuXiangShuiNing.novel.shuihu" %>

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
           <p>水浒传，又称“忠义水浒传”，简称“水浒”，作者施耐庵。在历代封建专制统治者眼中，造反都是不道的，“造反”者都是杀人放火、面目狰狞的妖魔鬼怪，但我国四大古典名著之一的《水浒传》却反其道而行，为那些所谓“造反”者树碑立传，并渲染他们豪侠仗义、除暴安良的英雄壮举，使他们成为读者心目中的英雄人物。</p> 
           <p>作为中国第一部歌颂农民起义的长篇章回体小说，《水浒传》生动地描写了梁山好汉们从起义到兴盛再到最终失败的全过程，特别是通过写众多草莽英雄不同的人生经历和反抗道路，鲜明地表现了“官逼民反”的主题。</p>
<p>戴敦邦的水浒画(20张)水浒传(12张)《水浒传》原名《江湖豪客传》或《水浒全传》，美国记者翻译书名为《四海之内皆兄弟》，《水</p>
        </div> 
        <div id ="rightcontent">
            <p>浒传》的题目是由罗贯中所命，在当时为禁书。《水浒传》的作者历来有争议，一般人认为是施耐庵和罗贯中据民间流传宋江起义的故事所写的。是中国历史上第一部用白话语言写成的长篇小说。郎瑛的《七修类稿》中曾经说过：“《三国》《宋江》二书，乃杭人罗贯中所编。予意旧必有本，故曰编。《宋江》又曰钱塘施耐庵的本。”高儒《百川书志》记载：“《忠义水浒传》一百卷。钱塘施耐庵的本，罗贯中编次。”李贽《忠义水浒传叙》中提到作者时，说是“施、罗二公”。此外，田汝成《西湖游览志馀》和王圻《稗史汇编》都记罗贯中作。胡应麟《少室山房笔丛》则说是“武林施某所编”,“世传施号耐庵”。综上所说,明人大致有三种说法：施耐庵作、罗贯中作和施、罗合作。现在学术界大都认为是施耐庵作。施耐庵生卒不详,一般认为是元末明初人。</p>
            <ul>
                <li><a href="yezhu.aspx">大闹野猪林</a></li>
                <li><a href="zuida.aspx">醉打蒋门神</a></li>
                <li><a href="feiyun.aspx">大闹飞云浦</a></li>
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
