<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="UserDetails.aspx.cs" Inherits="UserDetails" %>

<%@ Register Src="~/Controls/GetUserScraps.ascx" TagName="UserScraps" TagPrefix="Uc1" %>
<%@ Register Src="~/Controls/UserFriends.ascx" TagName="UserFriends" TagPrefix="Uc2" %>
<%@ Register Src="~/Controls/UserFreindRequest.ascx" TagName="UserFriendRequest" TagPrefix="Uc3" %>

      <asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">

    <table cellpadding="2" cellspacing="2" width="100%">
        <tr>
            <td width="18%" valign="top" class="SkyBlueBorder" align="center">
                <asp:Image ID="UserImage" runat="server" Width="140px" />
                <br />
                <br />
                <span class="SmallBlackText">Join On:</span>&nbsp;<asp:Label ID="lblCreated" runat="server"></asp:Label>
                <br />
                <br />
                <span class="SmallBlackText">Last Login</span>&nbsp;<asp:Label ID="LabelLastLogin"
                    runat="server"></asp:Label>
                <br />
                <br />
            
            </td>
     
            <td valign="top" class="GreenBorder">
             <span class="BlackText">Name:</span><br />
                <asp:Label ID="Name" runat="server"></asp:Label>
                <br />
                <br />
                <span class="BlackText">About Me:</span><br />
                <asp:Label ID="LabelAboutMe" runat="server"></asp:Label>
                <br />
                <br />
                <span class="BlackText">Country:</span><br />
                <asp:Label ID="Country" runat="server"></asp:Label>
                <br />
                <br />
                <span class="BlackText">Email:</span><br />
                <asp:Label ID="Email" runat="server"></asp:Label>
                <br />
                <br />
                <asp:LinkButton ID="AddToFriend" runat="server" Text="Send Friend Request" OnClick="AddToFriend_Click"></asp:LinkButton><br />
                <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                <br />
                <Uc3:UserFriendRequest ID="UserFriendRequest" runat="server" Visible="false"/>
                <br />
                <asp:TextBox ID="TextBoxScrap" runat="server" TextMode="MultiLine" Height="65px"
                    Width="490px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="ButtonPostScrap" runat="server" Text="Post Scrap" OnClick="ButtonPostScrap_Click" />
                <br />
                <br />
                <Uc1:UserScraps ID="UserScraps" runat="server" />
            </td>
            <td width="30%" valign="top">
                <Uc2:UserFriends ID="UserFriends" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>
