<%@ Page Language="C#" MasterPageFile="~/bbs/BBSsite.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="hanxuange.bbs.WebForm1" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>登陆</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="bbstitle" >
    会员登录
    </div>
    <div class="bbscontent" >
        <table>
            <tr>
                <td><asp:Label ID="LbUNo" runat="server" Text="用户名" CssClass="comLabel"></asp:Label></td>
                <td><asp:TextBox ID="TxtUNo" runat="server" CssClass="comtxt"></asp:TextBox></td>
                <td><asp:Label ID="LbUNoMsg" runat="server" Text="" CssClass="comLabel"></asp:Label></td>
            </tr>
            <tr >
                <td><asp:Label ID="LbPw" runat="server" Text="密码" CssClass="comLabel"></asp:Label></td>
                <td><asp:TextBox ID="TxtPw" runat="server" CssClass="comtxt" TextMode="Password"></asp:TextBox></td>
                <td><asp:Label ID="LbPwMsg" runat="server" Text="" CssClass="comLabel"></asp:Label></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table><br /><br />
        <p style=" text-indent:150px;">
            <asp:Button ID="Submit" runat="server" Text="登录" CssClass="combtn" 
                onclick="Submit_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Resert" runat="server" Text="重置" CssClass="combtn" 
                onclick="Resert_Click" /></p>
            <br /><br />
    </div>
</asp:Content>