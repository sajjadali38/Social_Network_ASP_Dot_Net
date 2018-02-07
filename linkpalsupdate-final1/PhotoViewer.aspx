<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PhotoViewer.aspx.cs" Inherits="PhotViewer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">

    <html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Untitled Page</title>
    
</head>
<body>
    <table style="Z-INDEX: 101; LEFT: 177px; WIDTH: 500px; POSITION: absolute;  HEIGHT: 310px"
				cellSpacing="0" cellPadding="0" width="584" border="0">
    <tr>
    <td>
        <asp:ListView ID="lvPhotoViewer" runat="server" GroupItemCount="1">
         <LayoutTemplate>                
             <table ID="groupPlaceholderContainer" runat="server" border="1">                               
                  <tr ID="groupPlaceholder" runat="server">
                  </tr>
             </table>                       
         </LayoutTemplate>
               
         <ItemTemplate>
             <td id="Td4" align="center" style="background-color: #eeeeee;">
                    
                    <asp:Image runat="server" ID="imPhoto" Height="450px" Width="450px" ImageUrl='<%# "~"+Eval("Photo") %>' />
                    <br />
                    <asp:Label ID="DefaultPhotIDLabel" runat="server" 
                            Text='<%# Eval("PhotoName") %>' />
             </td>
        </ItemTemplate>
   
         <GroupTemplate>
              <tr ID="itemPlaceholderContainer" runat="server">
                   <td ID="itemPlaceholder" runat="server">
                   </td>
              </tr>
        </GroupTemplate>
        </asp:ListView>
    </td>
    </tr>
    <tr>
    <td align="center">
        <asp:DataPager ID="DataPager1" runat="server" 
        PagedControlID="lvPhotoViewer" PageSize="1" 
        onprerender="DataPager1_PreRender">
        <Fields>
            <asp:NextPreviousPagerField ButtonType="Link"
            PreviousPageText="<< " NextPageText=" >>" />
         </Fields>
        </asp:DataPager>
    </td>
    </tr>
    </table>    
   <asp:HyperLink ID="backtoalbum" runat="server" NavigateUrl="~/Albums.aspx" Text="Back to Album"></asp:HyperLink>
</body>
</html>
</asp:Content>