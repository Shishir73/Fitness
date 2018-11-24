<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="front.aspx.cs" Inherits="Front_page.front" StyleSheetTheme="" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
        #login{
            position: absolute;
            left: 40%;
            top: 20%;
            border: 2px solid #561414;
            padding: 5px 5px;
        }
    </style>
</head>
    <!-- style =" background-image:url('Image/gyms.jpg')" -->
<body>
    <div id="login">
        <center>
    <form id="form1" runat="server" visible="True">
        
        <h2 style="height: 20px">Welcome to VIA-Fitness</h2>
        <br />
        E-mail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Password:&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Login" runat="server" Text="Log In" BackColor="#33CC33" ForeColor="White" BorderStyle="Ridge" Height="30px" OnClick="Login_Click" />
        <br />
        <br />
        <asp:Button ID="Register" runat="server" Text="Create Profile" BackColor="Red" ForeColor="White" BorderColor="White" BorderStyle="Ridge" Height="30px" PostBackUrl="~/CreateUser.aspx" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
        <br />
    </form>
            </center>
        </div>

</body>
</html>
