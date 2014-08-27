<%@ Page Language="C#" MasterPageFile="~/bbs/BBSsite.Master" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="hanxuange.bbs.WebForm2" Title="无标题页" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>论坛主页</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ajaxToolkit:ToolkitScriptManager runat="server">
    </ajaxToolkit:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
    </asp:UpdatePanel>
    <asp:Panel ID="hottopic1" runat="server" CssClass="bbstitle" >
        <asp:ImageButton ID="hottopicimg1" runat="server" ImageUrl="~/img/expand_blue.jpg"  />
           热门话题
         <asp:Label ID="hottopiclab1" runat="server" Text="展开" CssClass="panelLabel"></asp:Label>
    </asp:Panel>
    <asp:Panel ID="hottopic2" runat="server" CssClass=" bbscontent" >
       <zy:BankuaiHeader ID="hottopichrader" runat="server" />
        <asp:Repeater ID="RPHottopics" runat="server">
            <ItemTemplate>
                <zy:Bankuai ID="BKHottopics" runat="server" />
            </ItemTemplate>
        </asp:Repeater>
    </asp:Panel>
    <ajaxToolkit:CollapsiblePanelExtender ID="control1" runat="server" AutoCollapse="false" CollapsedSize="0" 
        ImageControlID="hottopicimg1" TextLabelID="hottopiclab1" Collapsed="False"  CollapseControlID="hottopic1"  ExpandControlID="hottopic1" TargetControlID="hottopic2" 
        CollapsedImage="~/img/expand_blue.jpg" ExpandedImage="~/img/collapse_blue.jpg" 
        CollapsedText="展开"  ExpandedText="折叠" SuppressPostBack="true"   ExpandDirection="Vertical" >
    </ajaxToolkit:CollapsiblePanelExtender>
    
    <asp:Panel ID="Culture1" runat="server" CssClass="bbstitle" >
        <asp:ImageButton ID="Cultureimg1" runat="server" ImageUrl="~/img/expand_blue.jpg"  />
          书山快报
         <asp:Label ID="Culturelab1" runat="server" Text="展开" CssClass="panelLabel"></asp:Label>
    </asp:Panel>
    <asp:Panel ID="Culture2" runat="server" CssClass=" bbscontent" >
       <zy:BankuaiHeader ID="CultureHeader1" runat="server" />
       <asp:Repeater ID="RPShuSKB" runat="server">
            <ItemTemplate>
                <zy:Bankuai ID="BKShuSKB" runat="server" />
            </ItemTemplate>
        </asp:Repeater>
    </asp:Panel>
    <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server" AutoCollapse="false" CollapsedSize="0" 
        ImageControlID="Cultureimg1" TextLabelID="Culturelab1" Collapsed="False"  CollapseControlID="Culture1"  ExpandControlID="Culture1" TargetControlID="Culture2" 
        CollapsedImage="~/img/expand_blue.jpg" ExpandedImage="~/img/collapse_blue.jpg" 
        CollapsedText="展开"  ExpandedText="折叠" SuppressPostBack="true"   ExpandDirection="Vertical" >
    </ajaxToolkit:CollapsiblePanelExtender>
    
    <asp:Panel ID="custom1" runat="server" CssClass="bbstitle" >
        <asp:ImageButton ID="customimg1" runat="server" ImageUrl="~/img/expand_blue.jpg"  />
           香沉絮语
         <asp:Label ID="customlab1" runat="server" Text="展开" CssClass="panelLabel"></asp:Label>
    </asp:Panel>
    <asp:Panel ID="custom2" runat="server" CssClass=" bbscontent" >
       <zy:BankuaiHeader ID="CustomHeader1" runat="server" />
       <asp:Repeater ID="RPXiangCXY" runat="server">
            <ItemTemplate>
                <zy:Bankuai ID="BKXiangCXY" runat="server" />
            </ItemTemplate>
        </asp:Repeater>
    </asp:Panel>
    <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender2" runat="server" AutoCollapse="false" CollapsedSize="0" 
        ImageControlID="customimg1" TextLabelID="customlab1" Collapsed="true"  CollapseControlID="custom1"  ExpandControlID="custom1" TargetControlID="custom2" 
        CollapsedImage="~/img/expand_blue.jpg" ExpandedImage="~/img/collapse_blue.jpg" 
        CollapsedText="展开"  ExpandedText="折叠" SuppressPostBack="False"   ExpandDirection="Vertical" >
    </ajaxToolkit:CollapsiblePanelExtender>
    
    <asp:Panel ID="music1" runat="server" CssClass="bbstitle" >
        <asp:ImageButton ID="musicimg1" runat="server" ImageUrl="~/img/expand_blue.jpg"  />
           水木载德
         <asp:Label ID="musiclab1" runat="server" Text="展开" CssClass="panelLabel"></asp:Label>
    </asp:Panel>
    <asp:Panel ID="music2" runat="server" CssClass=" bbscontent" >
       <zy:BankuaiHeader ID="MusicHeader1" runat="server" />
       <asp:Repeater ID="RPShuiMZD" runat="server">
            <ItemTemplate>
                <zy:Bankuai ID="BKShuiMZD" runat="server" />
            </ItemTemplate>
        </asp:Repeater>
    </asp:Panel>
    <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender3" runat="server" AutoCollapse="false" CollapsedSize="0" 
        ImageControlID="musicimg1" TextLabelID="musiclab1" Collapsed="False"  CollapseControlID="music1"  ExpandControlID="music1" TargetControlID="music2" 
        CollapsedImage="~/img/expand_blue.jpg" ExpandedImage="~/img/collapse_blue.jpg" 
        CollapsedText="展开"  ExpandedText="折叠" SuppressPostBack="true"   ExpandDirection="Vertical" >
    </ajaxToolkit:CollapsiblePanelExtender>
    
    <asp:Panel ID="rite1" runat="server" CssClass="bbstitle" >
        <asp:ImageButton ID="riteimg1" runat="server" ImageUrl="~/img/expand_blue.jpg"  />
           凝思论粹
         <asp:Label ID="ritelab1" runat="server" Text="展开" CssClass="panelLabel"></asp:Label>
    </asp:Panel>
    <asp:Panel ID="rite2" runat="server" CssClass=" bbscontent" >
       <zy:BankuaiHeader ID="RiteHeader1" runat="server" />
       <asp:Repeater ID="RPNingSLC" runat="server">
            <ItemTemplate>
                <zy:Bankuai ID="BKNingSLC" runat="server" />
            </ItemTemplate>
        </asp:Repeater>
    </asp:Panel>
    <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender4" runat="server" AutoCollapse="false" CollapsedSize="0" 
        ImageControlID="riteimg1" TextLabelID="ritelab1" Collapsed="False"  CollapseControlID="rite1"  ExpandControlID="rite1" TargetControlID="rite2" 
        CollapsedImage="~/img/expand_blue.jpg" ExpandedImage="~/img/collapse_blue.jpg" 
        CollapsedText="展开"  ExpandedText="折叠" SuppressPostBack="true"   ExpandDirection="Vertical" >
    </ajaxToolkit:CollapsiblePanelExtender>
    
    <asp:Panel ID="entertainment1" runat="server" CssClass="bbstitle" >
        <asp:ImageButton ID="entertainmentimg1" runat="server" ImageUrl="~/img/expand_blue.jpg"  />
           灌水娱乐
         <asp:Label ID="entertainmentlab1" runat="server" Text="展开" CssClass="panelLabel"></asp:Label>
    </asp:Panel>
    <asp:Panel ID="entertainment2" runat="server" CssClass=" bbscontent" >
       <zy:BankuaiHeader ID="EntertainmentHeader1" runat="server" />
       <asp:Repeater ID="RPGuanSYL" runat="server">
            <ItemTemplate>
                <zy:Bankuai ID="BKGuanSYL" runat="server" />
            </ItemTemplate>
        </asp:Repeater>
    </asp:Panel>
    <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender5" runat="server" AutoCollapse="false" CollapsedSize="0" 
        ImageControlID="entertainmentimg1" TextLabelID="entertainmentlab1" Collapsed="False"  CollapseControlID="entertainment1"  ExpandControlID="entertainment1" TargetControlID="entertainment2"
        CollapsedImage="~/img/expand_blue.jpg" ExpandedImage="~/img/collapse_blue.jpg" 
        CollapsedText="展开"  ExpandedText="折叠" SuppressPostBack="true"   ExpandDirection="Vertical" >
    </ajaxToolkit:CollapsiblePanelExtender>
    
    <asp:Panel ID="bbsmanagement1" runat="server" CssClass="bbstitle" >
        <asp:ImageButton ID="bbsmanagementimg1" runat="server" ImageUrl="~/img/expand_blue.jpg"  />
           论坛管理
         <asp:Label ID="bbsmanagementlab1" runat="server" Text="展开" CssClass="panelLabel"></asp:Label>
    </asp:Panel>
    <asp:Panel ID="bbsmanagement2" runat="server" CssClass=" bbscontent" >
       <table style="width: 100%;background-color:#E6F7D2;color:#CC3300; border:solid 0px #55A0FF;">
            <tr>
                <td style="width:150px">本站总会员数：</td>
                <td>
                    <asp:Label ID="LblTotalUserNum" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>本站总帖子数：</td>
                <td> <asp:Label ID="LblTotalInvatationNum" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>人气度最高的会员：</td>
                <td> <asp:Label ID="LblHotUser" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td colspan="2" style=" text-align:center">
                    <asp:LinkButton ID="Lkb" runat="server" onclick="Lkb_Click">管理员后台管理</asp:LinkButton></td>
            </tr>
       </table>
    </asp:Panel>
    <ajaxToolkit:CollapsiblePanelExtender ID="CollapsiblePanelExtender6" runat="server" AutoCollapse="false" CollapsedSize="0" 
        ImageControlID="bbsmanagementimg1" TextLabelID="bbsmanagementlab1" Collapsed="False"  CollapseControlID="bbsmanagement1"  ExpandControlID="bbsmanagement1" TargetControlID="bbsmanagement2"
        CollapsedImage="~/img/expand_blue.jpg" ExpandedImage="~/img/collapse_blue.jpg" 
        CollapsedText="展开"  ExpandedText="折叠" SuppressPostBack="true"   ExpandDirection="Vertical" >
    </ajaxToolkit:CollapsiblePanelExtender>
</asp:Content>