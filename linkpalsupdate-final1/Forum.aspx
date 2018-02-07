<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"  CodeFile="Forum.aspx.cs" Inherits="_Default" %>





        <asp:Content ID="Content1" ContentPlaceHolderID="content" Runat="Server">
			<table id="Table1" >
            <strong>Post Comment</strong><br />
        

        <ContentTemplate>
        
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" 
                DefaultMode="Insert">
        <InsertItemTemplate>
            Name: <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("name") %>'></asp:TextBox><br />
            Comments:<br />
            <asp:TextBox ID="txtComments" runat="server" Text='<%# Bind("comments") %>'
                TextMode="MultiLine" Rows="4" Columns="50"></asp:TextBox><br />
            <asp:HiddenField ID="hidTimeDate" runat="server" Value='<%# Bind("date") %>' />
            <asp:Button ID="butSubmit" runat="server" CommandName="Insert" Text="Submit" />
        </InsertItemTemplate>
        </asp:FormView>
        
        <asp:DataGrid ID="DataGrid1" runat="server" DataSourceID="SqlDataSource1" 
            Width="593px" CellPadding="4" ForeColor="#333333" 
            GridLines="None">
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditItemStyle BackColor="#2461BF" />
            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <AlternatingItemStyle BackColor="White" />
            <ItemStyle BackColor="#EFF3FB" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        </asp:DataGrid>
        
        </ContentTemplate>

        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Link %>" 
            SelectCommand="SELECT name,comments,date FROM tblComments ORDER BY date DESC"
            InsertCommand="INSERT tblComments (name,comments,date) VALUES (@name, @comments, @date)">
            <InsertParameters>
                <asp:Parameter Name="name" />
                <asp:Parameter Name="comments" />
                <asp:Parameter Name="date" />
            </InsertParameters>
        </asp:SqlDataSource>
</table>
</asp:Content>