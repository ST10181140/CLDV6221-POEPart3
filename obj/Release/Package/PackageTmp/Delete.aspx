<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="TheRideYouRent.Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="LabelHeadingDelete" runat="server" Text="Delete Page" Font-Bold="True" Font-Size="Larger" ForeColor="#0033CC"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSourceCar" runat="server" ConnectionString="<%$ ConnectionStrings:RideYouRent_ST10181140ConnectionString %>" SelectCommand="SELECT * FROM [Car_ST10181140]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceDriver" runat="server" ConnectionString="<%$ ConnectionStrings:RideYouRent_ST10181140ConnectionString %>" SelectCommand="SELECT * FROM [Driver_ST10181140]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceInspector" runat="server" ConnectionString="<%$ ConnectionStrings:RideYouRent_ST10181140ConnectionString %>" SelectCommand="SELECT * FROM [Inspector_ST10181140]"></asp:SqlDataSource>
            <p>
            Choose a table to display<asp:DropDownList ID="displayChoice" runat="server" AutoPostBack="True" OnSelectedIndexChanged="choiceDropDown_SelectedIndexChanged" BackColor="#99CCFF">
                <asp:ListItem Text ="Select" Value="0"></asp:ListItem>
                <asp:ListItem Text ="Car" Value ="Car"></asp:ListItem>
                <asp:ListItem Text ="Driver" Value ="Driver"></asp:ListItem>
                <asp:ListItem Text ="Inspector" Value="Inspector"></asp:ListItem>
            </asp:DropDownList>

                <asp:GridView ID="GridViewCar" runat="server" AutoGenerateColumns="False" DataKeyNames="CarNo" DataSourceID="SqlDataSourceCar" BackColor="#66CCFF">
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
                <asp:GridView ID="GridViewDriver" runat="server" AutoGenerateColumns="False" DataKeyNames="DriverID" DataSourceID="SqlDataSourceDriver" BackColor="#66CCFF">
                    <Columns>
                        <asp:BoundField DataField="DriverID" HeaderText="DriverID" InsertVisible="False" ReadOnly="True" SortExpression="DriverID" />
                        <asp:BoundField DataField="DriverFirstName" HeaderText="DriverFirstName" SortExpression="DriverFirstName" />
                        <asp:BoundField DataField="DriverLastName" HeaderText="DriverLastName" SortExpression="DriverLastName" />
                        <asp:BoundField DataField="DriverEmail" HeaderText="DriverEmail" SortExpression="DriverEmail" />
                        <asp:BoundField DataField="DriverMobile" HeaderText="DriverMobile" SortExpression="DriverMobile" />
                        <asp:BoundField DataField="HouseNumber" HeaderText="HouseNumber" SortExpression="HouseNumber" />
                        <asp:BoundField DataField="StreetName" HeaderText="StreetName" SortExpression="StreetName" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province" />
                        <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                    </Columns>
                </asp:GridView>
                <asp:GridView ID="GridViewInspector" runat="server" AutoGenerateColumns="False" DataKeyNames="InspectorNo" DataSourceID="SqlDataSourceInspector" BackColor="#66CCFF">
                    <Columns>
                        <asp:BoundField DataField="InspectorNo" HeaderText="InspectorNo" ReadOnly="True" SortExpression="InspectorNo" />
                        <asp:BoundField DataField="InspectorFirstName" HeaderText="InspectorFirstName" SortExpression="InspectorFirstName" />
                        <asp:BoundField DataField="InspectorLastName" HeaderText="InspectorLastName" SortExpression="InspectorLastName" />
                        <asp:BoundField DataField="InspectorEmail" HeaderText="InspectorEmail" SortExpression="InspectorEmail" />
                        <asp:BoundField DataField="InspectorMobile" HeaderText="InspectorMobile" SortExpression="InspectorMobile" />
                    </Columns>
                </asp:GridView>
            <br />
            <br />
            Choose a table to alter<asp:DropDownList ID="deleteChoice" runat="server" AutoPostBack="True" BackColor="#99CCFF">
                <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                <asp:ListItem Text="Car" Value="CarNo"></asp:ListItem>
                <asp:ListItem Text="Driver" Value="DriverID"></asp:ListItem>
                <asp:ListItem Text="Inspector" Value="InspectorNo"></asp:ListItem>
            </asp:DropDownList>
                <br />
            <asp:Label ID="lblDelete" runat="server" Text="Enter the ID or Number to delete"></asp:Label>
            <asp:TextBox ID="txtDeleteID" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" BackColor="#0066FF" />
                <asp:Button ID="btnReturn" runat="server" Text="Return" OnClick="btnReturn_Click" BackColor="#66FFFF" />
            <br />
        </div>
    </form>
</body>
</html>
