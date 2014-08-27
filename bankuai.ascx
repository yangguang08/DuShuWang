<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="bankuai.ascx.cs" Inherits="汉轩阁.zizhuti" %>
<link href="css/bbs.css" rel="stylesheet" type="text/css" />
<table style="width: 100%; border:solid 1px #C4C4AD; line-height:24px;">
    <tr style="vertical-align:middle; height:auto;">
        <td style="width:50px; text-align:center;">
            <img alt="" src="../img/bbs/zhuangtai1.png" height="30px" width="30px" />
        </td>
        <td style="width:400px;">
            <b>〖<asp:LinkButton ID="LkbZhuTi" runat="server"  Text='<%#Eval("BoardName").ToString().Trim()%>'  onclick="LkbZhuTi_Click" ></asp:LinkButton>〗</b><br />
            <img alt="" src="../img/bbs/Forum_readme.gif" /><asp:Label ID="miaoshuLab" runat="server" Text="" CssClass="comLabel"><%#Eval("Description").ToString().Trim() %></asp:Label><br />
            版主：<asp:Label ID="banzhuLab" runat="server" Text="" CssClass="bbsLabel"><%# Eval("Moderator") %></asp:Label>
        </td>
        <td style="width:100px; text-align:center;">
            <asp:Label ID="zhutishuLab" runat="server" Text="" CssClass="bbsLabel"><%#Eval("Topicsnum")%></asp:Label>
        </td>
        <td style="width:100px; text-align:center;">
            <asp:Label ID="tieshuLab" runat="server" Text="" CssClass="bbsLabel"><%#Eval("Tiezinum")%></asp:Label>
        </td>
        <td>
            <img alt="" src="../img/bbs/barrow.gif" /><b><asp:Label ID="zuihoufatiezhutiLab" runat="server" Text="" CssClass="bbsLabel"><%#Eval("Latesttopic")%></asp:Label></b><br />
            发帖人--<asp:Label ID="zuihoufatierenLab" runat="server" Text="" CssClass="bbsLabel"><%#Eval("LatestUserName")%></asp:Label><br />
            发帖时间--<asp:Label ID="zuihoufatieshijianLab" runat="server" Text="" CssClass="bbsLabel"><%#Eval("LatestTime")%></asp:Label>
        </td>
    </tr>
</table>
