<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>
<%@ Register Src="~/Controls/Header.ascx" TagName="Header" TagPrefix="Uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
     <div>
        <table cellpadding="1" cellspacing="1"  align="right">
            <tr>
                <td>
                    <Uc1:Header ID="Header1" runat="server" />
                </td>
            </tr>
          </table>
          </div>
              
</asp:Content>