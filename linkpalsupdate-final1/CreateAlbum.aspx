<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateAlbum.aspx.cs" Inherits="CreateAlbum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
<head>
    <title>Untitled Page</title>
  
</head>
<body>
    <div>
    
    </div>
    <table style="Z-INDEX: 101; LEFT: 177px; WIDTH: 500px; POSITION: absolute;  HEIGHT: 310px"
				cellSpacing="0" cellPadding="0" width="584" border="0">
        <tr>
            <td align=right>
                Album Name</td>
            <td>
                <asp:TextBox ID="txtAlbumName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnCreate" runat="server" onclick="btnCreate_Click" 
                    Text="Create" />
            </td>
        </tr>
    </table>

</body>
</html>
</asp:Content>