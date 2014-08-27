<%@ Page Language="C#" MasterPageFile="~/bbs/BBSsite.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="汉轩阁.bbs.WebForm3" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate >
            <zy:tiezi ID="tiezi1" runat="server" />
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
