<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MonthlySummary.aspx.cs" Inherits="Front_page.MonthlySummary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <div>
            <h1>Monthly Summary</h1>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="DnpAssignment">
                    <Columns>
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="TypeofWorkout" HeaderText="TypeofWorkout" SortExpression="TypeofWorkout" />
                        <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                        <asp:BoundField DataField="CaloriesBurned" HeaderText="CaloriesBurned" SortExpression="CaloriesBurned" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="DnpAssignment" runat="server" ConnectionString="<%$ ConnectionStrings:DnpAssignmentConnectionString %>" SelectCommand="SELECT [User].Email, DailyWorkout.TypeofWorkout, DailyWorkout.Duration, DailyWorkout.CaloriesBurned, DailyWorkout.Date 
FROM DailyWorkout INNER JOIN [User] ON DailyWorkout.UserId = [User].UserId"></asp:SqlDataSource>
            </p>
            <p>
                <asp:Button ID="Btn_Back" runat="server" BorderColor="Red" OnClick="Btn_Back_Click" Text="Back" />
            </p></div>
   </center>
            </form>
</body>
</html>
