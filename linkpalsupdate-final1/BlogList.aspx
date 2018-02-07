<%@ Page language="c#" MasterPageFile="~/MasterPage.master" Inherits="DotNetBlog.BlogList" CodeFile="BlogList.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">

<asp:label id="Label1" style="Z-INDEX: 102; LEFT: 200px; POSITION: absolute;" runat="server" Height="55px" Width="400px" ForeColor="Brown" Font-Bold="True" Font-Size="X-Large" Font-Names="Rockwell">LinkPal's Blog</asp:label>
<asp:button id="btnOpenEntry" 
        style="Z-INDEX: 103; LEFT: 432px; POSITION: absolute; width: 96px;" 
        runat="server" Text="Add new Blog" onclick="btnOpenEntry_Click"></asp:button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
<asp:table id="BlogTable" style="Z-INDEX: 101; LEFT: 200px; POSITION: absolute;" runat="server" Height="16px" Width="432px" GridLines="None"></asp:table>



</asp:Content>