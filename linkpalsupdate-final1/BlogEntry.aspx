<%@ Page language="c#" MasterPageFile="~/MasterPage.master" Inherits="DotNetBlog.BlogEntry" CodeFile="BlogEntry.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
    <div id="d1" runat="server">
			<table id="Table1" style="Z-INDEX: 101; LEFT: 177px; WIDTH: 500px; POSITION: absolute;  HEIGHT: 310px"
				cellSpacing="0" cellPadding="0" width="584" border="1">
				<tr>
					<td style="WIDTH: 171px; HEIGHT: 246px">
						<P><FONT size="7"><FONT face="Rockwell" color="#344455"> Post&nbsp;</FONT>
						<FONT size="7"><FONT face="Rockwell" color="#344455"> Your&nbsp;</FONT></FONT>
						<FONT size="7"><FONT face="Rockwell" color="#344455"> Blog</FONT></FONT></P>
					</TD>
					<TD style="HEIGHT: 246px">
						<asp:TextBox id="txtBlog" runat="server" Height="234px" Width="427px" TextMode="MultiLine"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 171px; HEIGHT: 25px" align="right"><STRONG>Name:</STRONG></TD>
					<TD style="HEIGHT: 25px">
						<asp:TextBox id="txtName" runat="server" Width="191px"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 171px; HEIGHT: 28px" align="right"><STRONG>Blog Title:</STRONG></TD>
					<TD style="HEIGHT: 28px">
						<asp:TextBox id="txtTitle" runat="server" Width="426px"></asp:TextBox></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 171px"></TD>
					<TD>
						<asp:Button id="btnSubmit" runat="server" Width="78px" Text="Submit" 
                            onclick="btnSubmit_Click" BackColor="#424E5C" ForeColor="White"></asp:Button>
						<asp:Button id="btnClear" runat="server" Width="78px" Text="Clear" 
                            CausesValidation="False" onclick="btnClear_Click" BackColor="#424E5C" 
                            ForeColor="White"></asp:Button>&nbsp;
						<asp:HyperLink id="BlogLink" runat="server" Height="22px" Width="96px" 
                            NavigateUrl="BlogList.aspx" ForeColor="#424E5C">Back to Blog</asp:HyperLink></TD>
				</TR>
				<tr>
				<td>
				

				
				</td>
				</tr>
			</TABLE>
			
</div>

</asp:Content>