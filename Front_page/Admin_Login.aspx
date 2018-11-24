<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="Front_page.Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <center>
    <form id="form1" runat="server">
        <div>
            <h3>Log in for Admin</h3><br />
            Username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="115px"></asp:TextBox>
            <br />
            <br />
            Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="115px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="AdminLogin" runat="server" BackColor="#33CC33" Text="Login as Admin" Height="30px" />
            <br />
            <br />
            <asp:Button ID="Back_Button" runat="server" BackColor="Red" ForeColor="Black" Text="← Back" PostBackUrl="~/front.aspx" Height="30px" />
        </div>
    </form>
        </center>
</body>
</html>
