<%@ Page Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Video_DataList.aspx.cs" Inherits="Video_DataList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
    <html>
<head>
    <title>Video List</title>
    <link href="StyleSheet4.css" rel="stylesheet" type="text/css" />
</head>
<body>

    <div>
       <table width="100%" cellpadding="4" cellspacing="1" border="0">
        <tr><td>
         <table width="80%" cellpadding="4" cellspacing="1" border="0" align="center">
          <tr><td><b>Videos List:</b></td></tr>
          <tr><td>
            <table width="100%" cellpadding="4" cellspacing="1" border="0">
        <tr>
        <asp:DataList ID="dtlstVideo" runat="server" GridLines="Vertical" RepeatColumns="2" RepeatDirection="Horizontal" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="5">
        <ItemTemplate>
         
           <td><a href="Play.aspx?vid=<%# DataBinder.Eval(Container.DataItem, "Video_ID") %>">
            <img src="Video/Thumb/<%# DataBinder.Eval(Container.DataItem, "Video_Image") %>" border="0" />
            </a>
           </td>
         
        </ItemTemplate>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <AlternatingItemStyle BackColor="#DCDCDC" />
            <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        </tr>
        </table>
          </td></tr>
         </table>
        </td></tr>
       </table>       
    </div>

</body>
</html>
</asp:Content>