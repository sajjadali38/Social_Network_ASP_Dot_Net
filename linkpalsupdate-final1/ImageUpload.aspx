<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ImageUpload.aspx.cs" Inherits="ImageUpload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">

    <html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Untitled Page</title>
</head>
<body>
    <div>
     <table style="Z-INDEX: 101; LEFT: 177px; WIDTH: 500px; POSITION: absolute;  HEIGHT: 310px"
				cellSpacing="0" cellPadding="0" width="584" border="0">
            <tr>
                <td align="right" >
                    Select a image to upload</td>
                <td align="left" >
        <asp:FileUpload ID="fuImage" runat="server" BackColor="White" />
        <asp:RegularExpressionValidator ID="revImage" ControlToValidate="fuImage" ValidationExpression="^.*\.((j|J)(p|P)(e|E)?(g|G)|(g|G)(i|I)(f|F)|(p|P)(n|N)(g|G))$" Text=" ! Invalid image type" runat="server" /></td>
            </tr>
            <tr>
                <td align="right" >
                    Image name</td>
                <td align="left" >
        <asp:TextBox ID="txtImageName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" >
                    Make it as Album Cover</td>
                <td align="left" >
                    <asp:CheckBox ID="ckbAlbumCover" runat="server" />
                </td>
            </tr>
            <tr>
                <td align="right" >
                    &nbsp;</td>
                <td align="left" >
                    <asp:DropDownList ID="ddlAlbum" runat="server" DataSourceID="SqlDataSource1" 
                        DataTextField="AlbumName" DataValueField="AlbumID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Link%>" 
                        SelectCommand="SELECT [AlbumID], [AlbumName] FROM [Album]">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td >
                </td>
                <td >
        <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Upload" 
                        BackColor="#424E5C" ForeColor="White" />
                    <asp:LinkButton ID="lbGoTo" runat="server" onclick="lbGoTo_Click" 
                        ForeColor="#424E5C">Go to Album</asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>
</asp:Content>