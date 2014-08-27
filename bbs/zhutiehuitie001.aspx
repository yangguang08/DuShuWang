<%@ Page Language="C#" MasterPageFile="~/bbs/BBSsite.Master" AutoEventWireup="true" CodeBehind="zhutiehuitie001.aspx.cs" Inherits="汉轩阁.bbs.WebForm1" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>汉轩阁论坛</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
             <zy:tiezi ID="yilou" runat="server" />        
        </ItemTemplate>
    </asp:Repeater>
    <asp:Repeater ID="Repeater2" runat="server">
        <ItemTemplate>
             <zy:tiezi ID="erlou" runat="server" />      
        </ItemTemplate>
    </asp:Repeater>

<zy:htmleditor ID="editor1" runat="server" />
<br />
    <asp:Button ID="Button1" runat="server" Text="发表帖子" CssClass="combtn" onclick="Button1_Click" />
</asp:Content>
