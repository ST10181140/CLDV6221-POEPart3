<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="TheRideYouRent.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p id="lblFunctionHeading">
                Ride You Rent</p>
        <p id="CarGridView" style="text-align: center">
            <asp:SqlDataSource ID="sqlDataSourceRentals" runat="server" ConnectionString="<%$ ConnectionStrings:RideYouRent_ST10181140ConnectionString %>" SelectCommand="SELECT * FROM [Car_ST10181140]"></asp:SqlDataSource>
            <asp:GridView ID="GridViewCar" runat="server" AutoGenerateColumns="False" DataKeyNames="CarNo" DataSourceID="sqlDataSourceRentals">
                <Columns>
                    <asp:BoundField DataField="CarNo" HeaderText="CarNo" ReadOnly="True" SortExpression="CarNo" />
                    <asp:BoundField DataField="CarMake" HeaderText="CarMake" SortExpression="CarMake" />
                    <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                    <asp:BoundField DataField="BodyType" HeaderText="BodyType" SortExpression="BodyType" />
                    <asp:BoundField DataField="KiloTravelled" HeaderText="KiloTravelled" SortExpression="KiloTravelled" />
                    <asp:BoundField DataField="ServiceKilo" HeaderText="ServiceKilo" SortExpression="ServiceKilo" />
                    <asp:BoundField DataField="Available" HeaderText="Available" SortExpression="Available" />
                </Columns>
            </asp:GridView>
        </p>
        <p style="text-align: left">
            What action would you like to perform:</p>
        <p>
            <asp:Button ID="btnCreate" runat="server" OnClick="btnCreate_Click" Text="Create" />
            <asp:Button ID="btnRead" runat="server" Text="Read" OnClick="btnRead_Click" />
            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
            <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
            <br />
            <br />
            <asp:Button ID="btnRentalsAndReturns" runat="server" OnClick="btnRentalsAndReturns_Click" style="text-align : left" Text="Rentals and Returns" />
        </p>
        <p>
            <asp:Button ID="btnLogOut" runat="server" OnClick="btnLogOut_Click" Text="Log Out" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        </div>
    </form>
</body>
</html>
