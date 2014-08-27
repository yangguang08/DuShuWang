<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ShuXiangShuiNing._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>欢迎访问书香水凝</title>
    <link rel="Shortcut Icon" href="linklogo.ico" />
    <link href="css/global.css" rel="stylesheet" type="text/css" />
    <link href="css/index.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
        <div id="nav">
            <ul>
               <li><a href="novel/SecondaryPage.aspx">明清小说</a></li>
                <li><a href="yuanqu/yuqnudoueyuan2.aspx">元曲</a></li>
                <li><a href="songci/shengshengman.aspx">宋词</a></li>
                <li><a href="tangshi/SecondTangshi.aspx">唐诗</a></li>
                <li><a href="bbs/main.aspx">论坛</a></li>
            </ul>
        </div>
        <div id="content">
            <br />
            <div id="Mqing">
                <fieldset>
                    <legend>明清小说</legend>
                        <ul>
                             <li><a href="novel/SecondaryPage.aspx">红楼梦</a></li>
                            <li><a href="novel/shuihu.aspx">水浒传</a></li>
                            <li><a href="novel/sanguo.aspx">三国演义</a></li>
                        </ul>
                        <a href="novel/SecondaryPage.aspx"><asp:Image ID="Image1" runat="server" ImageUrl="~/img/more.gif" CssClass="more" /></a>
                </fieldset>
                
            </div>
            <div id="yuan">
                <fieldset>
                    <legend>元曲</legend>
                     <ul>
                         <li><a href=  "yuanqu/yuanquqiusi2.aspx">秋思</a></li>
                         <li><a href="yuanqu/yuqnudoueyuan2.aspx" >窦娥冤</a></li>
                         <li><a href="yuanqu/yuanquxixiangji2.aspx" >西厢记</a></li>
                     </ul>
                     <a href="yuanqu/yuanquqiusi2.aspx"><asp:Image ID="Image2" runat="server" ImageUrl="~/img/more.gif" CssClass="more" /></a>
                </fieldset>
            </div>
            <div id="song">
                <fieldset>
                    <legend>宋词</legend>
                    <ul>
                        <li><a href="songci/shengshengman.aspx"  >声声慢</a></li>
                        <li><a href="songci/dielianhua2.aspx" >蝶恋花</a></li>
                        <li><a href="songci/liannujiao2.aspx" >念奴娇•赤壁怀古</a></li>
                    </ul>
                    <a href="songci/shengshengman.aspx"><asp:Image ID="Image3" runat="server" ImageUrl="~/img/more.gif" CssClass="more" /></a>
                </fieldset>
            </div>
            <div id="tang">
                <fieldset>
                    <legend>唐诗</legend>
                    <ul>
                        <li><a href="tangshi/SecondTangshi.aspx">古诗</a></li>
                        <li><a href="tangshi/SecondTangshi.aspx">乐府</a></li>
                        <li><a href="tangshi/SecondTangshi.aspx">绝句</a></li>
                    </ul>
                    <a href="tangshi/SecondTangshi.aspx"><asp:Image ID="Image4" runat="server" ImageUrl="~/img/more.gif" CssClass="more" /></a>
                </fieldset>
            </div>
        </div>
        <div id="footer">
                 <p>版权所有：武汉理工大学管理学院信息管理与信息系统0804班 邹瑶 黄伟 黄雨晴</p>
        <p>指导老师：燕翔&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 地址：湖北省武汉市雄楚大街 &nbsp;&nbsp;&nbsp;&nbsp; 邮编：430070</p>
        <p style="vertical-align:middle"><img alt="联系方式" src="../img/qq.gif"  />&nbsp;&nbsp;583153766&nbsp;&nbsp;&nbsp;1019488025&nbsp;&nbsp;&nbsp;766139240</p>
        </div>
    </div>
    </form>
</body>
</html>
