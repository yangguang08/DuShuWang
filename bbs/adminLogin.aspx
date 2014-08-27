<%@ Page Language="C#" MasterPageFile="~/bbs/BBSsite.Master" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="ShuXiangShuiNing.bbs.WebForm1" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<title>管理员登陆界面</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="adminLogin">
    <div id="pic"><img alt="" src="../img/adminlogin.png" /></div>
    <div id="logintable">
    <br /><br /><br />
         <table>
            <tr>
                <td style="width:50px;"><asp:Label ID="LbUNo" runat="server" Text="用户名" CssClass="comLabel"></asp:Label></td>
                <td><asp:TextBox ID="TxtUNo" runat="server" CssClass="comtxt"></asp:TextBox></td>
            </tr>
            <tr >
                <td><asp:Label ID="LbPw" runat="server" Text="密  码" CssClass="comLabel"></asp:Label></td>
                <td><asp:TextBox ID="TxtPw" runat="server" CssClass="comtxt" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
            </tr>
        </table><br />
        <p style=" text-indent:50px;">
            <asp:Button ID="Submit" runat="server" Text="登陆" CssClass="combtn" 
                onclick="Submit_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Resert" runat="server" Text="重置" CssClass="combtn" 
                onclick="Resert_Click" /></p>
    </div>
</div>
</asp:Content>
