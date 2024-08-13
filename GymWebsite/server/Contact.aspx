<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="GymWebsite.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <style>
        .h1{
    text-align:center;
    width: 100%;
    height: 60vh;
    padding: 10px 0px;
    background-image: url(../assets/backgroung.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    
}

.head{
    display: inline-block;
    text-transform: uppercase;
    font-size: 50px;
}

#head1{
    color: rgb(255, 68, 0);
}
#head2{
    color: whitesmoke;
}

body{
    background-color: whitesmoke;
    background-repeat: no-repeat;
    background-size: cover;
}

#forms{
    padding-top:20px;
    padding-bottom:20px;
    padding-left:10px;
    padding-right:10px;
    display:flex;
    justify-content:center;
}

#innerForm{

    width:25vw;
    background-color:orangered;
    color:whitesmoke;
    border: 8px solid orange;
    border-radius:8px;
}

#Button1{
        border: 4px solid orange;
        border-radius:8px;
}

    </style>

    <title>Contact Us</title>
</head>
<body>

     <iframe src="../components/header.html" width="100%" frameborder="0" scrolling="no" height="75px"></iframe>

    <div class="h1">
        <br /><br /><br /><br /><br /><br /><br />
        <p id="head1" class="head"><strong>contact</strong></p><p id="head2" class="head"><strong>us</strong></p>
    </div>

    <div id="forms" class="Content">
    <form id="form1" runat="server">
    <div id="innerForm">
    
        <asp:Label ID="Label1" runat="server" Text="Label">Name:</asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label">Email:</asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Label">Message:</asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
        </div>
    </form>
        </div>

        <iframe src="./components/footer.html" width="100%" frameborder="0" scrolling="no" height="100px"></iframe>

</body>
</html>
