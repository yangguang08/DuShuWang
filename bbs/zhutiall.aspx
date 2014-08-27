<%@ Page Language="C#" MasterPageFile="~/bbs/BBSsite.Master" AutoEventWireup="true" CodeBehind="zhutiall.aspx.cs" Inherits="汉轩阁.bbs.WebForm2" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>汉轩阁论坛</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" CssClass="gvglobalstyle" 
        AutoGenerateColumns="False" DataKeyNames="PostsId" OnRowEditing="GridView_RowEditing" >
        <Columns>
            <asp:TemplateField HeaderText="状态" ShowHeader="true"  >
                <ItemTemplate >
                    <asp:Image ID="gvzhuangtai" runat="server" ImageUrl="~/img/bbs/zhuangtai2.gif"  Height="24px" Width="24px" />
                </ItemTemplate>
                <ControlStyle CssClass="gvtemplatefieldstyle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="主题" ShowHeader="true" ControlStyle-CssClass="gvzhutistyle">
                <ItemTemplate>
                    <asp:LinkButton ID="Lkb" runat="server" CommandName="Edit" ><%#Eval("Topics") %></asp:LinkButton>
                </ItemTemplate>

<ControlStyle CssClass="gvzhutistyle"></ControlStyle>
            </asp:TemplateField>
            <asp:BoundField DataField="UserName" HeaderText="作者" DataFormatString="{0:d}" 
                HtmlEncode="False" ControlStyle-CssClass="gvzuozhestyle" >
<ControlStyle CssClass="gvzuozhestyle"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="ReplyNum" HeaderText="回帖量" 
                ControlStyle-CssClass="gvtienumstyle" >
<ControlStyle CssClass="gvtienumstyle"></ControlStyle>
            </asp:BoundField>
            <asp:BoundField DataField="Latest" HeaderText="最后更新时间||回复人" 
                ControlStyle-CssClass="gvzuihoustyle" >
<ControlStyle CssClass="gvzuihoustyle"></ControlStyle>
            </asp:BoundField>
        </Columns>
        <EmptyDataTemplate >
            
            <table style="width: 100%;background-color:#E6F7D2;color:#CC3300; border:solid 0px #55A0FF;">
                <tr>
                    <td style="width:50px; border-right:solid 1px gray;">
                        状态
                    </td >
                    <td style=" width:50%;border-right:solid 1px gray;">
                        主题
                    </td>
                    <td style="width:10%;border-right:solid 1px gray;">
                        作者
                    </td>
                    <td style="width:10%;border-right:solid 1px gray;">
                        回帖量
                    </td>
                    <td >
                        最后更新时间||回复人
                    </td>
                </tr>
            </table>
            <div>很抱歉，当前没有数据！<a href="main.aspx">转入论坛主页面</a></div>
        </EmptyDataTemplate>
        <HeaderStyle CssClass="gvheaderstyle" />
        <FooterStyle CssClass="gvfooterstyle" />
    </asp:GridView>
</asp:Content>
