<%@ Page Language="C#" MasterPageFile="~/bbs/BBSsite.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="hanxuange.bbs.WebForm3" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>注册页面</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<script type="text/javascript">
<!--
//将用户输入异步提交到服务器
    function ajaxSubmit() {
        var photoupload = document.getElementById("photoupload");
        var imgbox = document.getElementById("photo");
        var fileName = photoupload.getAttribute("FileName").valueOf();
        var xmlhttp;
        try {
            xmlhttp = new XMLHttpRequest();
        }
        catch (e) {
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.status == 4) {
                if (xmlhttp.readyState == 200) {
                    alert("OK");
                    imgbox.setAttribute("ImageUrl", fileName);
                } else {
                    alert("error");
                }
            }
        }
        xmlhttp.open("post", "register.aspx", true);
        xmlhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xmlhttp.send();
    }
//-->
</script>
    <div class="bbstitle" >会员注册</div>
 <div  class="bbscontent">
 <table>
    <tr>
        <td>用 户 名：</td>
        <td><asp:TextBox ID="user" runat="server"  CssClass="comtxt"></asp:TextBox></td>
        <td><asp:Label ID="username" runat="server" Text="*请输入不小于六位字母或数字的用户名" CssClass="comLabel"></asp:Label></td>
    </tr>  
     <tr>
        <td>密 码 ：</td>
        <td><asp:TextBox ID="key1" runat="server"  TextMode="Password" CssClass="comtxt"></asp:TextBox>
                                </td>
        <td></td>
    </tr>   
    <tr>
        <td>密码确认：</td>
        <td><asp:TextBox ID="key2" runat="server" TextMode="Password" CssClass="comtxt"></asp:TextBox>
                                </td>
        <td><asp:Label ID="chkey" runat="server" Text="*再次输入密码确认" CssClass="comLabel"></asp:Label></td>
    </tr>
      
    <tr>
        <td> 性 别 ：</td>
        <td><asp:RadioButton ID="RadioButton1" runat="server" Text="男" GroupName="sexchose" />
            <asp:RadioButton ID="RadioButton2" runat="server" Text="女"   GroupName="sexchose" />
                                </td>
        <td><asp:Label ID="sex" runat="server" Text="*选择性别" CssClass="comLabel"></asp:Label></td>
    </tr>
    <tr>
        <td> 邮箱地址：</td>
        <td><asp:TextBox ID="mailad" runat="server"  CssClass="comtxt"></asp:TextBox>
            </td>
        <td><asp:Label ID="mail" runat="server" Text="*请填入正确的邮箱地址" CssClass="comLabel"></asp:Label></td>
    </tr>
    <tr>
        <td>上传头像：</td>
        <td>
            <asp:FileUpload ID="photoupload" runat="server" name="photoupload"
                  />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClientClick="ajaxSubmit()"/>
            <br />
                                </td>
             
        <td>
            <asp:Image ID="photo" runat="server"  Width="120px" Height="160px"/></td>
    </tr>
    <tr><td>个性签名：</td><td>
        <textarea id="TxtSignature" cols="40" rows="2" runat="server"></textarea></td><td></td></tr>
 </table>
    <br />
    <br />
    <p style="padding-left:150px;"><asp:Button ID="BtnRegister" runat="server" 
            onclick="BtnRegister_Click" Text="注册" CssClass="combtn" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="reset" runat="server" Text="重置" onclick="reset_Click" CssClass="combtn" /></p>
<br /><br />
</div>
</asp:Content>