<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="subscriptionForm.aspx.cs" Inherits="GymWebsite.subscriptionForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="./subscriptionForm.css" />
    <title>Subscription Form</title>
</head>
<body>

     <iframe src="../components/header.html" width="100%" frameborder="0" scrolling="no" height="75px" width="1000px"></iframe>

    <div class="h1">
        <br><br><br><br><br><br><br>
        <strong><p id="head1" class="head">Subscription</p><p id="head2" class="head">Form</p></strong>
    </div>

    <div id="forms">
    <form id="form1" runat="server" class="form_main">

          <p class="form-title">Sign Up to your account</p>
        <div class="input-container">
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
          <span>
          </span>
      </div>
      <div class="input-container">
          <asp:TextBox ID="TextBox2" runat="server" placeholder="Phone Number"></asp:TextBox>
        </div>
         <div class="input-container">
          <asp:TextBox ID="TextBox3" runat="server" placeholder="Age" ></asp:TextBox>
        </div>

        <div class="input-container">
          <asp:TextBox ID="TextBox4" runat="server" placeholder="Gender" ></asp:TextBox>
        </div>

    
        <asp:Button ID="subbtn" runat="server" CssClass="submit" Text="Submit Information" OnClick="subbtn_Click" />
 
        <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
 
    </form>
        </div>
</body>
</html>
