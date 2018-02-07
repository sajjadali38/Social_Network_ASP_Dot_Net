<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>
<%@ Register Src="~/Controls/Header.ascx" TagName="Header" TagPrefix="Uc1" %>
<%@ Register Src="~/Controls/Footer.ascx" TagName="Footer" TagPrefix="Uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Linkpals</title>
   <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
h2
        {
        	color:#344455;
        }
.no-border
{
	border-bottom: solid 1px black;
}
.tab
{
background: #dedede;
display: block;
height: auto;
line-height: 40px;
text-align: center;
width: 80px;
float: right;
font-weight: bold;
-webkit-border-top-left-radius: 4px;
-webkit-border-top-right-radius: 4px;
-moz-border-radius: 4px 4px 0px 0px;
}
a
{
color: #000;
margin: 0;
padding: 0;
text-decoration: none;
}
.signup
{
	margin-left:8px;
	
}
.select
{
	background-color:#EEEEEE;
	
}



       
        #tab2
        {
            width: 357px;
            height: 288px;
        }
        
        .style25
        {
            width: 394px;
        }
     
        </style>
</head>
<body>
    <form id="form2" runat="server">
    <div id="main" runat="server">
    <div id="header" runat="server">
        <img src="Images/linkpals.gif" style="width: 225px"/>
    </div>
<div id="right" runat="server">

    <img src="Images/LPimage.png" style="width:98%; height: 180px;" />
</div>
    <div id="left" runat="server">
    <table>
    <tr>
    <td class="no-border">
        <img src="Images/audio.png" />
    </td>
    <td class="no-border"><h4>Share Audio</h4>
    </td>
    </tr>
    <tr>
    <td class="no-border">
        <img src="Images/t_suggestion.png" />
    </td>
    <td class="no-border"><h4>Target Suggestion</h4></td>
     </tr>
     <tr>
     <td class="no-border">
         <img src="Images/video-chat-icon.png" />
     </td>
     <td class="no-border">
     <h4>Voice/Video Chat</h4>
     
     </td>
     </tr>
     <tr>
     <td class="no-border">
         <img src="Images/blogs.png" />
     </td>
     <td class="no-border">
        <h4> Blogging</h4>
     </td>
     </tr>
       <tr>
     <td class="no-border">
         <img src="Images/share.png" />
     </td>
     <td class="no-border">
        <h4> Photo Sharing</h4></td>
     </tr>
         <tr>
     <td class="no-border">
         <img src="Images/video.png" />
     </td>
     <td class="no-border">
        <h4> Video Sharing</h4>
     </td>
     </tr>
        <tr>
     <td>
         <img src="Images/forum.png" />
     </td>
     <td>
        <h4> Forums</h4>
     </td>
     </tr>
    </table>
    </div>
    <div id="center" runat="server">
<div id="signupbox" runat="server" >

<h2>Signup Form</h2>
    <table cellpadding="4" cellspacing="4" align="center" 
        style="width: 119%; margin-left: 33px">
        <tr>
            <td align="center" class="style25">
                (Already have an account <a href="Default.aspx"><b>Sign In</b> </a>)
            </td>
        </tr>
        <tr>
            <td class="style25">
                <asp:Label ID="LabelEmail" runat="server" Text="Email:" CssClass="BlackText" Width="110px"></asp:Label>
                <asp:TextBox ID="TextBoxEmail" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFVUserEMail" runat="server" ForeColor="Red" Display="None"
                    ControlToValidate="TextBoxEmail" ErrorMessage="Enter a valid Email address.">Email</asp:RequiredFieldValidator><asp:RegularExpressionValidator
                        ID="REVUserEMail" runat="server" ForeColor="Red" Display="None" ControlToValidate="TextBoxEmail"
                        ErrorMessage="Enter Correct E-Mail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style25">
                <asp:Label ID="Label1" runat="server" Text="Password:" CssClass="BlackText" 
                    Width="110px"></asp:Label>
                <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextBoxPassword" ErrorMessage="Enter password.">password</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="None"
                    ControlToValidate="TextBoxPassword" ErrorMessage="Password should be 4 to 15 letters & Space not allowed"
                    ValidationExpression="\S{4,15}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style25">
                <asp:Label ID="Label2" runat="server" Text="Retype Password:" CssClass="BlackText"
                    Width="110px"></asp:Label>
                <asp:TextBox ID="TextBoxRetypePassword" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextBoxRetypePassword" ErrorMessage="Retype password.">Retype password</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CVPassword" runat="server" Display="None" ControlToValidate="TextBoxRetypePassword"
                    ErrorMessage="Re-type Password doesn't match" ControlToCompare="TextBoxPassword"></asp:CompareValidator>
                <asp:RegularExpressionValidator ID="revPWDRange" runat="server" Display="None" ControlToValidate="TextBoxRetypePassword"
                    ErrorMessage="Password should be 4 to 15 letters & Space not allowed" ValidationExpression="\S{4,15}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style25">
                <asp:Label ID="Label3" runat="server" Text="Name:" CssClass="BlackText" Width="110px"></asp:Label>
                <asp:TextBox ID="TextBoxName" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextBoxName" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style25">
                <asp:Label ID="Label4" runat="server" Text="Country:" CssClass="BlackText" Width="110px"></asp:Label>
                <asp:TextBox ID="TextBoxCountry" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextBoxCountry" ErrorMessage="Enter Country"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style25">
                <asp:Label ID="Label5" runat="server" Text="About Your Self:" CssClass="BlackText"
                    Width="110px"></asp:Label>
                <asp:TextBox ID="TextBoxComment" runat="server" Width="250px" Height="100px" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="TextBoxComment" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left" class="style25">
                <asp:Label ID="lblPhotoSideHeading" runat="server" CssClass="BlackText" Width="110px">Photo URL:</asp:Label>
                <input id="UploadUserPhoto" type="file" runat="server" width="300px"/>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red"
                    Display="None" ControlToValidate="UploadUserPhoto" ErrorMessage="*"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="profileimage" ControlToValidate="UploadUserPhoto" ValidationExpression="^.*\.((j|J)(p|P)(e|E)?(g|G)|(g|G)(i|I)(f|F)|(p|P)(n|N)(g|G)|(b|B)(m|M)(p|P))$" Text=" ! Invalid image type" runat="server" /></td>
            </td>
        </tr>
        <tr>
            <td height="20px" class="style25">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" class="style25">
                <asp:Button ID="ButtonMakeProfile" runat="server" Text="Register" OnClick="ButtonMakeProfile_Click"
                    Width="128px" CssClass="flashit" Font-Bold="true" Font-Size="14pt" 
                    BackColor="#344455" ForeColor="White" />
            </td>
        </tr>
    </table>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Check entries:"
        ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
</table>



</div>


</div>

<div id="footer">  
 ©Copyright LinkPal 2011;
  </div>
  </div>
</form>

</body>
</html>
