﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChatRoom.aspx.cs" Inherits="ChatRoom" %>

<%@ Register assembly="Anthem" namespace="Anthem" tagprefix="anthem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
    <html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <title>Untitled Page</title>
    <style type="text/css">

        .style1
        {
            width: 62%;
        }
        .style2
        {
            width: 102px;
        }
        .style3
        {
            width: 333px;
        }
        .style4
        {
            width: 102px;
            height: 357px;
        }
        .style5
        {
            width: 333px;
            height: 357px;
        }
        .style6
        {
            height: 357px;
            width: 280px;
        }
        #Text1
        {
            height: 36px;
            width: 183px;
        }
        .style7
        {
            width: 280px;
        }
    </style>
</head>
<body>
<script type="text/javascript">
function Leave()
{
    Anthem_InvokePageMethod('Leave', null, null);
}

</script>
    <div>
    
<table class="style1" style="Z-INDEX: 101; LEFT: 177px; WIDTH: 500px; POSITION: absolute;  HEIGHT: 310px"
				cellSpacing="0" cellPadding="0" width="584" border="0">
    <tr>
        <td class="style2">
            <anthem:Label ID="LabelUserName" runat="server">&nbsp; </anthem:Label>
            <anthem:Label ID="Label1" runat="server">&nbsp;User Name:</anthem:Label>
        </td>
        <td class="style3">
&nbsp;<anthem:TextBox ID="TextBoxName" runat="server" Height="37px" Width="381px"></anthem:TextBox>&nbsp;
            </td>
        <td class="style7">
            <anthem:Button ID="ButtonJoin" runat="server" Height="42px" 
                onclick="ButtonJoin_Click" Text="Join" Width="91px" BackColor="#424E5C" 
                ForeColor="White" />
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <anthem:Label ID="LabelError" runat="server" AutoUpdateAfterCallBack="True" 
                UpdateAfterCallBack="True"></anthem:Label>
            </td>
        <td class="style7">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td class="style5">
            <anthem:ListBox ID="ListBox2" runat="server" Height="352px" Width="385px" 
                AutoUpdateAfterCallBack="True">
            </anthem:ListBox>
        </td>
        <td class="style6">
            <anthem:Timer ID="Timer1" runat="server">
            </anthem:Timer>
            <anthem:ListBox ID="ListBox1" runat="server" Height="352px" Width="191px" 
                AutoUpdateAfterCallBack="True" TextDuringCallBack="Loading...">
            </anthem:ListBox>
            </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <anthem:TextBox ID="TextBoxType2" runat="server" Height="37px" Width="390px"></anthem:TextBox>
            </td>
        <td class="style7">
            <anthem:Button ID="ButtonSend" runat="server" Height="41px" 
                onclick="ButtonSend_Click" Text="Send" Width="90px" BackColor="#424E5C" 
                ForeColor="White" />
            </td>
    </tr>
</table>


    </div>
</body>
</html>
</asp:Content>