<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="GymWebsite.login" %>

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
    margin:auto;
    width:100vw;
    padding-top:20px;
    padding-bottom:20px;
    padding-left:10px;
    padding-right:10px;
    display:flex;
    justify-content:center;
}

#innerForm{

    width:30vw;
    background-color:orangered;
    color:whitesmoke;
    border: 8px solid orange;
    border-radius:8px;
}

#Button1{
        border: 4px solid orange;
        border-radius:8px;
}
.form {
  background-color: #fff;
  display: block;
  padding: 1rem;
  max-width: 350px;
  border-radius: 0.5rem;
  box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
}

.form-title {
  font-size: 1.25rem;
  line-height: 1.75rem;
  font-weight: 600;
  text-align: center;
  color: #000;
}

.input-container {
  position: relative;
}

.input-container input, .form button {
  outline: none;
  border: 1px solid #e5e7eb;
  margin: 8px 0;
}

.input-container input {
  background-color: #fff;
  padding: 1rem;
  padding-right: 3rem;
  font-size: 0.875rem;
  line-height: 1.25rem;
  width: 300px;
  border-radius: 0.5rem;
  box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.05);
}

.submit {
  display: block;
  padding-top: 0.75rem;
  padding-bottom: 0.75rem;
  padding-left: 1.25rem;
  padding-right: 1.25rem;
  background-color: #4F46E5;
  color: #ffffff;
  font-size: 0.875rem;
  line-height: 1.25rem;
  font-weight: 500;
  width: 100%;
  border-radius: 0.5rem;
  text-transform: uppercase;
}

.signup-link {
  color: #6B7280;
  font-size: 0.875rem;
  line-height: 1.25rem;
  text-align: center;
}

.signup-link a {
  text-decoration: underline;
}
    </style>
    <title></title>
</head>
<body>

    

     <div class="h1">
        <br><br><br><br><br><br><br>
        <strong><p id="head1" class="head">Log</p><p id="head2" class="head">in</p></strong>
    </div>

    <div id="forms">
    <form id="form1" runat="server" class="form_main">

        <p class="form-title">Login to your account</p>
        <div class="input-container">
            <asp:TextBox ID="TextBox1" runat="server" placeholder="username"></asp:TextBox>
          <span>
          </span>
      </div>
      <div class="input-container">
          <asp:TextBox ID="TextBox2" runat="server" placeholder="password" type="password"></asp:TextBox>
        </div>

      <asp:Button ID="Button1" runat="server" CssClass="submit" Text="Login" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <a class="signup" href="signup.aspx">New? Sign Up</a>
            
    
    </form>
    </div>

    <iframe src="./components/footer.html" width="100%" frameborder="0" scrolling="no" height="100px"></iframe>
</body>
</html>
