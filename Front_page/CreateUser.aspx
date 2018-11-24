<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="Front_page.CreateUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Account</title>
    <style> 
    #createUser{
            position: absolute;
            left: 40%;
            top: 10%;
           
        }
    </style>
</head>
<body>
        <div id="createUser">
          
    <form id="form1" runat="server">
            <center><h2>Create a new Profile</h2>
            </center>
            <br />
            First Name :&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="fName" runat="server" Width="115px"></asp:TextBox>
            <br />
            Last Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="lName" runat="server" Width="115px"></asp:TextBox>
            <br />
            Date of Birth :&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="date" runat="server" Width="100px">DD-MM-YYYY
</asp:TextBox>
            <br />
            Gender :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:ListBox ID="gender" runat="server" Height="38px">
                <asp:ListItem Enabled="False">Select</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:ListBox>
            <br />
            Address &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="address" runat="server" Width="130px"></asp:TextBox>
            <br />
            Email :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="email" runat="server" TextMode="Email" Width="130px"></asp:TextBox>
            <br />
            Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="password" runat="server" TextMode="Password" Width="130px"></asp:TextBox>
            <br />
            <br />
            <center><asp:Button ID="register" runat="server" BackColor="#009933" BorderColor="Black" ForeColor="Black" Text="Register" OnClick="register_Click" BorderStyle="Double" Height="34px"/>
                <br />
                <br />
                <asp:Button ID="Back" runat="server" BackColor="#0066FF" ForeColor="White" PostBackUrl="~/front.aspx" Text="← Back" />
                <br />
                <asp:Label ID="result" runat="server" ForeColor="Red"></asp:Label>
            </center>
    </form>
                
        </div>
</body>
</html>
