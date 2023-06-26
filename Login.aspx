<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TheRideYouRent.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
         <form id="form2" runat="server" style=" text-align: center">
             <asp:Label ID="lblHeading" runat="server" Text="The Ride You Rent"></asp:Label >
        <p id="lblUsername" style="text-align: center">
            Username:
            <asp:TextBox ID="txtUsername" runat="server" Width="189px"></asp:TextBox>
        </p>
        <p id="lblPassword" style="text-align: center">
            Password:
            <asp:TextBox ID="txtPassword" runat="server" Width="189px" style="margin-left: 0px"></asp:TextBox>
        </p>
        <p style="text-align: center">
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click1" />
        </p>
        <p style="text-align: center">
    </form>
</body>
</html>
