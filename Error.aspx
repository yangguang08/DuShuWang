<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="ShuXiangShuiNing.Error" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="errorcontainer" style="margin:0px auto; width:900px; height:517px; background-image:url('../img/error.png'); background-position:top left; background-repeat:no-repeat; margin-top:100px; position:relative;">
            <div id="errorcontent" style=" margin-top:160px; margin-left:420px; height:100px; width:185px; position:absolute; text-indent:2em; color:Red;">
                    <p>
                        <asp:Label ID="Label1" runat="server" Text="" ></asp:Label></p>
            </div>
            <div id="Div1" style=" margin-top:260px; margin-left:390px; height:100px; width:185px; position:absolute; text-align:center; line-height:30px;">
<A href="javascript:history.go(-1)">返回出错页</A><br />
<asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">论坛主页</asp:LinkButton><br />
<asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">网站主页</asp:LinkButton>
            </div>
    </div>
    </form>
</body>
</html>
