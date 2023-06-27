<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TheRideYouRent.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
         <form id="form2" runat="server" style=" text-align: center">
             
             <asp:Label ID="lblHeading" runat="server" Text="The Ride You Rent" Font-Bold="True" Font-Size="Larger" ForeColor="#0000CC"></asp:Label >
        <p id="lblUsername" style="text-align: center">
            <asp:SqlDataSource ID="SqlDataSourceLogin" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Login_ST10181140]"></asp:SqlDataSource>
            Username:
            <asp:TextBox ID="txtUsername" runat="server" Width="189px"></asp:TextBox>
        </p>
        <p id="lblPassword" style="text-align: center">
            Password:
            <asp:TextBox ID="txtPassword" runat="server" Width="189px" style="margin-left: 0px"></asp:TextBox>
        </p>
        <p style="text-align: center">
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click1" BackColor="#3399FF" BorderColor="#3399FF" />
            <asp:Button ID="btnExit" runat="server" Text="Exit" OnClick="btnExit_Click" BackColor="#3399FF" BorderColor="#3399FF" />
        </p>
        <p style="text-align: center">
    </form>
         <p style="text-align: center">
             </p>
</body>
</html>
