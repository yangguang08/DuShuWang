<%@ Page Language="C#" MasterPageFile="~/bbs/BBSsite.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="ShuXiangShuiNing.bbs.WebForm2" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div  style="min-height:480px;">
	<div id="data" >
	    <div>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem  Value="0">用户信息</asp:ListItem>
            <asp:ListItem  Value="1">板块信息</asp:ListItem>
            <asp:ListItem  Value="2">主题信息</asp:ListItem>
            <asp:ListItem  Value="3">回帖信息</asp:ListItem>
            </asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="bcount" runat="server" Text="共找到 " Visible="false"></asp:Label>
	    <asp:Label ID="count" runat="server"></asp:Label>
	    <asp:Label ID="acount" runat="server" Text=" 条记录。" Visible="false"></asp:Label>
	    </div><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true" 
            AllowPaging="True"
                onpageindexchanging="GridView1_PageIndexChanging" PageSize="9" 
            onrowdeleting="GridView1_RowDeleting" 
            OnRowUpdating="GridView1_RowUpdating"  CssClass="gvglobalstyle">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="Update" Text="Update" ></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Delete" OnClientClick="return confirm('确认要删除吗？');"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
         
            </Columns>
            <PagerTemplate>
         
         <asp:LinkButton ID="lbnFirst" runat="Server" Text="First<<"  Enabled='<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>' CommandName="Page" CommandArgument="First" ></asp:LinkButton>&nbsp;&nbsp;
        <asp:LinkButton ID="lbnPrev" runat="server" Text="Previous" Enabled='<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>' CommandName="Page" CommandArgument="Prev"  ></asp:LinkButton>&nbsp;&nbsp;
        <asp:LinkButton ID="lbnNext" runat="Server" Text="Next" Enabled='<%# ((GridView)Container.NamingContainer).PageIndex != (((GridView)Container.NamingContainer).PageCount - 1) %>' CommandName="Page" CommandArgument="Next" ></asp:LinkButton>&nbsp;&nbsp;
         <asp:LinkButton ID="lbnLast" runat="Server" Text=">>Last&nbsp;&nbsp;"   Enabled='<%# ((GridView)Container.NamingContainer).PageIndex != (((GridView)Container.NamingContainer).PageCount - 1) %>' CommandName="Page" CommandArgument="Last" ></asp:LinkButton>
         
     </PagerTemplate>
        </asp:GridView>
	
	</div>
		<div id="Insert_info"  style="text-align:center;"><br />
            <asp:Button ID="InsertButton" runat="server" 
                Text="Insert New Course Information" onclick="InsertButton_Click" />
            <asp:Panel ID="UpdatePanel" runat="server" Visible="false">
            <table>
                <tr>
                    <td style="width:150px; text-align:center; height:30px;">ID of Course</td>
                    <td style=" text-align:left;" ><asp:TextBox  ID="UpCourseNo" runat="server" Enabled="false" BorderStyle="None" Width="100px" ></asp:TextBox><asp:CheckBox ID="ChangeState" runat="server" Checked="false" Text="Enable to Change ID" 
                            ForeColor="Gray" AutoPostBack="True" 
                            oncheckedchanged="ChangeState_CheckedChanged"  /></td>
                </tr>
                <tr>
                    <td>Name of Course</td>
                    <td style=" text-align:left;height:30px;"><asp:TextBox ID="UpCourseName" runat="server" Width="500px" BorderStyle="solid" BorderWidth="1px" BorderColor="#79B1E0" >xinxiguanliyuxinxixitonggpngchengxue</asp:TextBox></td>
                </tr>
                <tr>
                    <td style=" vertical-align:middle;">Course Description</td>
                    <td style=" text-align:left;"><textarea id="UpCourseDscription" cols="60" rows="5" runat="server" style="overflow:scroll; "></textarea></td>
                </tr>
                <tr><td></td><td style="text-align:left;"><br />
                    <asp:Button ID="UpButton" runat="server" Text="Update" 
                        onclick="UpButton_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                        ID="CancelButton" runat="server" Text="Cancel" Visible="false" 
                        onclick="CancelButton_Click" /></td></tr>
            </table>
            </asp:Panel>
	</div>
</div>
</asp:Content>
