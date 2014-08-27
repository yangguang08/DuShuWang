<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="htmleditor.ascx.cs" Inherits="汉轩阁.htmleditor" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<link href="css/bbs.css" rel="stylesheet" type="text/css" />
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>
<div id="editcontainer">
<div id="replyedit">快速回复主题</div>
<cc1:Editor ID="myhtmleditor" runat="server"  />
</div>