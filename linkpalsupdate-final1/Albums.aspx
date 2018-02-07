<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Albums.aspx.cs" Inherits="Albums" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">

    <html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Untitled Page</title>
</head>
<body>
<table id="Table2" style="Z-INDEX: 101; LEFT: 177px; WIDTH: 500px; POSITION: absolute;  HEIGHT: 310px"
				cellSpacing="0" cellPadding="0" width="584" border="0">
    <asp:ListView ID="lvAlbums" runat="server"
            DataSourceID="SqlDataSource1" GroupItemCount="3" 
            InsertItemPosition="LastItem">            
            <LayoutTemplate>                
                    <table border="1">
                       <tr ID="groupPlaceholder" runat="server">
                       </tr>
                    </table>                       
            </LayoutTemplate>                                              
            <GroupTemplate>
                    <tr>
                        <td ID="itemPlaceholder" runat="server">
                        </td>
                    </tr>
             </GroupTemplate>             
             <ItemTemplate>
                    <td id="Td3" width="150px" height="150px" align="center" style="background-color: #e8e8e8;color: #333333;">
                    <asp:HiddenField ID="hfPhotoID" runat="server" Value='<%# Eval("DefaultPhotID") %>' />
                    <a href='<%# "Photos.aspx?AlbumID="+Eval("AlbumID") %>'> 
                    <asp:Image CssClass="Timg" runat="server" ID="imPhoto" ImageUrl='<%# "ThumbNail.ashx?ImURL="+Eval("Photo") %>' />
                    </a>
                    <br />                    
                    <b><asp:Label ID="lblAlbumName" runat="server" Text='<%# Eval("AlbumName") %>'></asp:Label>   </b>
                    </td>                
                </ItemTemplate>
                
                <InsertItemTemplate>
                <td id="Td3" width="150px" height="150px" runat="server" align="center" style="background-color: #e8e8e8;color: #333333;">
                <a href="CreateAlbum.aspx">                    
                    Create New Album
                </a>
                </td>              
                </InsertItemTemplate>             
            </asp:ListView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Link %>" 
            SelectCommand="SELECT Album.AlbumID, Album.DefaultPhotID, Album.AlbumName, PhotAlbum.Photo FROM Album INNER JOIN PhotAlbum ON Album.DefaultPhotID = PhotAlbum.PhotoID">
        </asp:SqlDataSource>
</table>
</body>
</html>
</asp:Content>