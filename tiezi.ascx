<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="tiezi.ascx.cs" Inherits="汉轩阁.tiezi" %>
<link href="css/bbs.css" rel="stylesheet" type="text/css" />
<div id="tiecontainer">
    <div id="tieleftsidebar">
        <ul>
        <li></li>
        <li><asp:Label ID="NichengLab" runat="server" Text="" CssClass="bbsLabel"><%#Eval("NickName") %></asp:Label></li>
        <li></li>
        <li style="height:140px;"> <asp:Image ID="mypicture" runat="server" ImageUrl="~/img/bbs/male.jpg" Height="140px" Width="120px" /></li>   
        <li>身份:&nbsp;<asp:Label ID="ShenfenLab" runat="server" Text="" CssClass="tielabel"><%#Eval("Identity")%></asp:Label></li>
        <li>等级:&nbsp;<asp:Label ID="DengjiLab" runat="server" Text="" CssClass="tielabel"><%#Eval("Level")%></asp:Label></li>
        <li>UID:&nbsp;<asp:Label ID="UidLab" runat="server" Text="" CssClass="tielabel"><%#Eval("UId")%></asp:Label></li>
        <li>帖子:&nbsp;<asp:Label ID="TiezishuLab" runat="server" Text="" CssClass="tielabel"><%#Eval("InvitationNum") %></asp:Label></li>
        <li>性别:&nbsp;<asp:Label ID="XingbieLab" runat="server" Text="" CssClass="tielabel"><%#Eval("Sex")%></asp:Label></li>
        </ul>
        
    </div>
    <div id="tierightsidebar">
        <div id="tieinfo">
          <img alt="" src="../img/bbs/folder.gif" />&nbsp;发帖时间：<asp:Label ID="FatieshijianLab" runat="server" Text="" CssClass="bbsLabel"><%#Eval("PostTime")%></asp:Label>
            <asp:Label ID="LoucengLab" runat="server" Text="" CssClass="labelright"><%#Eval("Floor")%></asp:Label>
        </div>
        <div id="tiecontent" >
            <asp:Label ID="WenzhangLab" runat="server" Text=""><%#Eval("Content")%></asp:Label>
        </div>
        <div id="tieqianming">
            <b>我的个性签名：</b><br /><br />
            <asp:Label ID="GexingqianmingLab" runat="server" Text=""><%#Eval("Signature")%></asp:Label>
        </div>
        <div id="tiecaozuo">
           <img alt="" src="../img/bbs/edit.gif"  />
        </div>
    </div><div id="noneuse" style="clear:both"></div>
</div>

