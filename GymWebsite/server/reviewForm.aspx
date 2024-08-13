<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reviewForm.aspx.cs" Inherits="GymWebsite.reviewForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link rel="stylesheet" href="./reviewForm.css" />

    <title>Reviews</title>
</head>
<body>

    <iframe src="../components/header.html" width="100%" frameborder="0" scrolling="no" height="75px" width="1000px"></iframe>

    <div class="h1">
        <br><br><br><br><br><br><br>
        <strong><p id="head1" class="head">revie</p><p id="head2" class="head">ws</p></strong>
    </div>

    <div class="forms">
    <form id="form1" runat="server">
    <div id="innerForm">
    
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label">Enter Your Email:</asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Width="500px"></asp:TextBox>
        <br />
        <br />
    
        <asp:Label ID="Label2" runat="server" Text="Label">Place a review:</asp:Label>
&nbsp;
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Height="100px" Width="500px"></asp:TextBox>
    
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="subbtn" runat="server" Text="Place Review" OnClick="subbtn_Click" />
    
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="rEmail" HeaderText="rEmail" SortExpression="rEmail" />
                <asp:BoundField DataField="Review" HeaderText="Review" SortExpression="Review" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" SelectCommand="SELECT * FROM [reviews]"></asp:SqlDataSource>
    
    </div>
    </form>
        </div>

        <iframe src="../components/footer.html" width="100%" frameborder="0" scrolling="no" height="100px"></iframe>

</body>
</html>
