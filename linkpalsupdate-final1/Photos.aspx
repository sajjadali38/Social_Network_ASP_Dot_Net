<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Photos.aspx.cs" Inherits="Photos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
    <html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Untitled Page</title>
    <style>
    .Timg {
 
  margin: 10px 10px 10px 10px;
  padding: 4px;
  border-top: 1px solid #ddd;
  border-left: 1px solid #ddd;
  border-bottom: 1px solid #c0c0c0;
  border-right: 1px solid #c0c0c0;
  background: #fff;
  }
  
</style>
</head>
<body>
  
    <div>    
        <table style="background-color:#8a979e;Z-INDEX: 101; LEFT: 177px; WIDTH: 500px; POSITION: absolute;  HEIGHT: 310px" 				cellSpacing="0" cellPadding="0" width="584" border="0">
            <tr>
                <td valign="top" cellspacing="5"> Album Name:
                    <asp:Label ID="lblAlbumName" runat="server"></asp:Label><br />                
                    <asp:Image CssClass="Timg" runat="server" ID="imAlbumPhoto" /><br />
                    No of Pictures: <asp:Label ID="lblNoofPicz" runat="server"></asp:Label> 
                    <br />
                    <a href="Albums.aspx">Back to Albums</a>
                    <br />
                    <asp:LinkButton ID="lbUploadPhotos" runat="server" 
                        onclick="lbUploadPhotos_Click">Upload Photos</asp:LinkButton>                   
                </td>
                <td>
    
            <asp:ListView ID="lvPhotos" runat="server" DataKeyNames="AlbumID" 
            DataSourceID="SqlDataSource1" GroupItemCount="3">            
            <LayoutTemplate>               
                   <table ID="groupPlaceholderContainer" runat="server" border="0" cellpadding="0" cellspacing="0">
                         <tr ID="groupPlaceholder" runat="server">
                         </tr>
                   </table>                        
            </LayoutTemplate>                        
            <GroupTemplate>
                    <tr ID="itemPlaceholderContainer" runat="server">
                        <td ID="itemPlaceholder" runat="server">
                        </td>
                    </tr>
                </GroupTemplate>           
                <ItemTemplate>
                    <td runat="server" align="center" style="background-color: #e8e8e8;color: #333333;">                    
                    <a href='<%# "PhotoViewer.aspx?PhotoID="+Eval("PhotoID")+"&AlbumID="+ Eval("AlbumID") %>'> 
                    <asp:Image CssClass="Timg" runat="server" ID="imPhoto" ImageUrl='<%# "ThumbNail.ashx?ImURL="+Eval("Photo") %>' />
                    </a>
                    </td>                
                </ItemTemplate>             
            </asp:ListView>
                   <asp:HiddenField ID="hfAlbumID" runat="server" />
             </td>
             </tr>               
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Link %>" 
            SelectCommand="SELECT [PhotoID], [Photo], [PhotoName], [AlbumID] FROM [PhotAlbum] WHERE ([AlbumID] = @AlbumID) ORDER By [PhotoID] ASC" 
            onselected="SqlDataSource1_Selected">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="1" Name="AlbumID" 
                        QueryStringField="AlbumID" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
    
    </div>

</body>
</html>
</asp:Content>