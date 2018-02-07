<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Login" %>
<%@ Register Src="~/Controls/Header.ascx" TagName="Header" TagPrefix="Uc1" %>
<%@ Register Src="~/Controls/Footer.ascx" TagName="Footer" TagPrefix="Uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Linkpals</title>
    <script type='text/javascript'
    src='http://jqueryjs.googlecode.com/files/jquery-1.3.2.min.js'>
    </script>
    <script type="text/javascript">
        var imgs = [
        'Images/side.jpg',
        'Images/dancers.jpg',
        'Images/map1.gif', ];
        var cnt = imgs.length;

        $(function() {
            setInterval(Slider, 3000);
        });

        function Slider() {
            $('#imageSlide').fadeOut("slow", function() {
                $(this).attr('src', imgs[(imgs.length++) % cnt]).fadeIn("slow");
            });
        }
</script>
        <script>      

        var flashcolor = "red"
        var flashinterval = 1000 //flash interval in miliseconds (1000=1 sec)

        var formcollect = document.getElementsByTagName ? document.getElementsByTagName("FORM") : document.all ? document.all.tags("FORM") : new Array()
        var flashcollect = new Array()

        for (i = 0; i < formcollect.length; i++) {
            for (e = 0; e < formcollect[i].elements.length; e++) {
                if (formcollect[i].elements[e].className == "flashit")
                    flashcollect[flashcollect.length] = formcollect[i].elements[e]
            }
        }

        function flashelements() {
            for (f = 0; f < flashcollect.length; f++) {
                if (flashcollect[f].style.color == '')
                    flashcollect[f].style.color = flashcolor
                else
                    flashcollect[f].style.color = ""
            }
        }

        if (flashcollect.length > 0)
            setInterval("flashelements()", flashinterval)

    </script>
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
            margin-left: 8px;
        }
        .select
        {
            background-color: #EEEEEE;
        }
        #tab2
        {
            width: 357px;
            height: 288px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="main" runat="server">
        <div id="header" runat="server">
            <img src="Images/linkpals.gif" style="width: 225px" />
        </div>
        <div id="right" runat="server">
            <img src="Images/LPimage.png" style="width: 98%; height: 180px;" />
 
            <div id="account" runat="server">
                <table>
                    <tr align="center">
                        <td>
          
                        </td>
                    </tr>
                    <tr align="center">
                        <td>
                        
                        </td>
                    </tr>
                           
                </table>
            </div>
      <img id="imageSlide" alt="" src="" style="width: 98%; height: 180px;"/>
        </div>
        <div id="left" runat="server">
            <table border="0" cellspacing="0">
                <tr>
                    <td class="no-border">
                        <img src="Images/audio.png" />
                    </td>
                    
                    <td class="no-border">
                        <h4>
                            Share Audio</h4>
                    </td>
                    
                </tr>
                <tr>
                    <td class="no-border">
                        <img src="Images/t_suggestion.png" />
                    </td>
                    <td class="no-border">
                        <h4>
                            Target Suggestion</h4>
                    </td>
                </tr>
                <tr>
                    <td class="no-border">
                        <img src="Images/video-chat-icon.png" />
                    </td>
                    <td class="no-border">
                        <h4>
                            Voice/Video Chat</h4>
                    </td>
                </tr>
                <tr>
                    <td class="no-border">
                        <img src="Images/blogs.png" />
                    </td>
                    <td class="no-border">
                        <h4>
                            Blogging</h4>
                    </td>
                </tr>
                <tr>
                    <td class="no-border">
                        <img src="Images/share.png" />
                    </td>
                    <td class="no-border">
                        <h4>
                            Photo Sharing</h4>
                    </td>
                </tr>
                <tr>
                    <td class="no-border">
                        <img src="Images/video.png" />
                    </td>
                    <td class="no-border">
                        <h4>
                            Video Sharing</h4>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="Images/forum.png" />
                    </td>
                    <td>
                        <h4>
                            Forums</h4>
                    </td>
                </tr>
            </table>
        </div>
        <div id="center" runat="server">
            <div id="login" runat="server">
                <h2>Login Form</h2>
    <table cellpadding="4" cellspacing="4" width="50%" align="center">
        <tr>
            <td align="center">
                <p>Welcome to this online network community, make friend network, Post scrap to friend,
                managing photos,videos and a lot more...
                </p>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Login ID="ctlLogin" runat="server" BackColor="#EEEEEE" BorderColor="#E6E2D8"
                    BorderPadding="4" BorderStyle="Solid" BorderWidth="2px" Font-Names="Verdana"
                    Font-Size="0.8em" ForeColor="#333333" OnAuthenticate="OnAuthenticate" Width="300px"
                    Height="140px">
                    <TitleTextStyle BackColor="#344455" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <TextBoxStyle Font-Size="0.8em" Width="200px" />
                    <LoginButtonStyle BackColor="#344455" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px"
                        Font-Names="Verdana" Font-Size="0.8em" ForeColor="#FCFAFA" />
                </asp:Login>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:LinkButton ID="lnkRegister" runat="server" Text="Not Register Yet ?" OnClick="lnkRegister_Click"></asp:LinkButton>
            </td>
        </tr>
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
