<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="video.aspx.cs" Inherits="Video" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
<html>
<head>
    <title>Upload Video</title>
    <link href="StyleSheet4.css" rel="stylesheet" type="text/css" />
</head>
<body>

       
        <table style="Z-INDEX: 101; LEFT: 177px; WIDTH: 500px; POSITION: absolute;  HEIGHT: 310px"
				cellSpacing="0" cellPadding="0" width="584" border="0">
        <tr>
        <td>
         <table width="60%" cellpadding="4" cellspacing="1" border="0" align="center">
         
         <tr>
          <td>Video File:</td>
          <td><asp:FileUpload ID="FileUpload1" runat="server" /><asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" ErrorMessage="" ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.wmv|.avi|.mpeg|.MPEG)$" ControlToValidate="FileUpload1" Display="dynamic">
                </asp:RegularExpressionValidator></td>          
         </tr>
         <tr>
          <td align="center" colspan="2">
          <asp:Button ID="btnsub" runat="server" Text="Upload" OnClick="btnsub_Click"/>
          </td>
          
         </tr>
         <tr>
          <td align="center" colspan="2"><asp:Label ID="lblmsg" runat="server" ForeColor="green"></asp:Label>&nbsp;&nbsp;<asp:HyperLink id="hyp" runat="server" Text="Click Here to watch" Visible="false"></asp:HyperLink></td>
         </tr>
         </table>
        </td>
        </tr>
        </table>

</body>
</html>
</asp:Content>