<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="TheRideYouRent.Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSourceDriver" runat="server" ConnectionString="<%$ ConnectionStrings:RideYouRent_ST10181140ConnectionString %>" SelectCommand="SELECT * FROM [Driver_ST10181140]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceCar" runat="server" ConnectionString="<%$ ConnectionStrings:RideYouRent_ST10181140ConnectionString %>" SelectCommand="SELECT * FROM [Car_ST10181140]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceInspector" runat="server" ConnectionString="<%$ ConnectionStrings:RideYouRent_ST10181140ConnectionString %>" SelectCommand="SELECT * FROM [Inspector_ST10181140]"></asp:SqlDataSource>

            <asp:Label ID="lblUpdateTable" runat="server" style="font-size: large" Text="Update Table"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblChooseTable" runat="server" Text="Choose a table to update"></asp:Label>
            
<asp:DropDownList ID="choiceDropDown" runat="server" AutoPostBack="True" OnSelectedIndexChanged="choiceDropDown_SelectedIndexChanged">
                <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                <asp:ListItem Text="Cars" Value="1"></asp:ListItem>
                <asp:ListItem Text="Drivers" Value="2"></asp:ListItem>
                <asp:ListItem Text="Inspectors" Value="3"></asp:ListItem>
    </asp:DropDownList>
            <asp:GridView ID="GridViewDriver" runat="server" AutoGenerateColumns="False" DataKeyNames="DriverID" DataSourceID="SqlDataSourceDriver">
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
            <asp:GridView ID="GridViewCar" runat="server" AutoGenerateColumns="False" DataKeyNames="CarNo" DataSourceID="SqlDataSourceCar">
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
            <asp:GridView ID="GridViewInspector" runat="server" AutoGenerateColumns="False" DataKeyNames="InspectorNo" DataSourceID="SqlDataSourceInspector">
                <Columns>
                    <asp:BoundField DataField="InspectorNo" HeaderText="InspectorNo" ReadOnly="True" SortExpression="InspectorNo" />
                    <asp:BoundField DataField="InspectorFirstName" HeaderText="InspectorFirstName" SortExpression="InspectorFirstName" />
                    <asp:BoundField DataField="InspectorLastName" HeaderText="InspectorLastName" SortExpression="InspectorLastName" />
                    <asp:BoundField DataField="InspectorEmail" HeaderText="InspectorEmail" SortExpression="InspectorEmail" />
                    <asp:BoundField DataField="InspectorMobile" HeaderText="InspectorMobile" SortExpression="InspectorMobile" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:Label ID="lblCarNo" runat="server" Text="CarNo" Visible="False"></asp:Label>
            <asp:TextBox ID="txtCarNo" runat="server" Visible="False"></asp:TextBox>
            <asp:Label ID="lblCarMake" runat="server" Text="Car Make" Visible="False"></asp:Label>
            <asp:TextBox ID="txtCarMake" runat="server" Visible="False"></asp:TextBox>
            <asp:Label ID="lblCarModel" runat="server" Text="Car Model" Visible="False"></asp:Label>
            <asp:TextBox ID="txtCarModel" runat="server" Visible="False"></asp:TextBox>
            <asp:Label ID="lblBodyType" runat="server" Text="Body Type" Visible="False"></asp:Label>
            <asp:TextBox ID="txtCarBodyType" runat="server" Visible="False"></asp:TextBox>
            <br />
            <asp:Label ID="lblMileage" runat="server" Text="Mileage" Visible="False"></asp:Label>
            <asp:TextBox ID="txtMileage" runat="server" Visible="False"></asp:TextBox>
            <asp:Label ID="lblServiceKm" runat="server" Text="Service Kilometres" Visible="False"></asp:Label>
            <asp:TextBox ID="txtServiceKm" runat="server" Visible="False"></asp:TextBox>
            <asp:Label ID="lblAvailable" runat="server" Text="Available" Visible="False"></asp:Label>
            <asp:TextBox ID="txtAvailable" runat="server" Visible="False"></asp:TextBox>
            <br />
            <asp:Button ID="btnUpdateCar" runat="server" OnClick="btnUpdateCar_Click" Text="Update" Visible="False" />
            <br />
            <br />
            <asp:Label ID="lblDriverID" runat="server" Text="Driver ID" Visible="False"></asp:Label>
            <asp:TextBox ID="txtDriverID" runat="server" Visible="False"></asp:TextBox>
            <asp:Label ID="lblDriverName" runat="server" Text="Name" Visible="False"></asp:Label>
            <asp:TextBox ID="txtDriverName" runat="server" Visible="False"></asp:TextBox>
            <asp:Label ID="lblDriverSurname" runat="server" Text="Surname" Visible="False"></asp:Label>
            <asp:TextBox ID="txtDriverSurname" runat="server" Visible="False"></asp:TextBox>
            <asp:Label ID="lblDriverAddress" runat="server" Text="Address:" Visible="False"></asp:Label>
             <asp:Label ID="lblHouseNo" runat="server" Text="House Number" Visible="false"></asp:Label>
            <asp:TextBox ID="txtHouseNo" runat="server" Visible="false"></asp:TextBox>
            <asp:Label ID="lblStreet" runat="server" Text="Street Name" Visible="false"></asp:Label>
            <asp:TextBox ID="txtStreetName" runat="server" Visible="false"></asp:TextBox>
            <br />
             <asp:Label ID="lblCity" runat="server" Text="City" Visible="false"></asp:Label>
            <asp:TextBox ID="txtCity" runat="server" Visible="false"></asp:TextBox>
            <asp:Label ID="lblProvince" runat="server" Text="Province" Visible="false"></asp:Label>
            <asp:TextBox ID="txtProvince" runat="server" Visible="false"></asp:TextBox>
            <asp:Label ID="lblPostalCode" runat="server" Text="Postal Code" Visible="false"></asp:Label>
            <asp:TextBox ID="txtPostalCode" runat="server" Visible="false"></asp:TextBox>
            <asp:Label ID="lblDriverEmail" runat="server" Text="Email" Visible="False"></asp:Label>
            <asp:TextBox ID="txtDriverEmail" runat="server" Visible="False"></asp:TextBox>
            <asp:Label ID="lblDriverMobile" runat="server" Text="Mobile" Visible="False"></asp:Label>
            <asp:TextBox ID="txtDriverMobile" runat="server" Visible="False"></asp:TextBox>
            <br />
            <asp:Button ID="btnUpdateDriver" runat="server" OnClick="btnUpdateDriver_Click" Text="Update" Visible="False" />
            <br />
            <br />
            <asp:Label ID="lblInspectorID" runat="server" Text="Inspector ID" Visible="False"></asp:Label>
            <asp:TextBox ID="txtInspectorID" runat="server" Visible="False"></asp:TextBox>
            <asp:Label ID="lblInspectorName" runat="server" Text="Name" Visible="False"></asp:Label>
            <asp:TextBox ID="txtInspectorName" runat="server" Visible="False"></asp:TextBox>
            <asp:Label ID="lblInspectorSurname" runat="server" Text="Surname" Visible="False"></asp:Label>
            <asp:TextBox ID="txtInspectorSurname" runat="server" Visible="False"></asp:TextBox>
            <asp:Label ID="lblInspectorEmail" runat="server" Text="Email" Visible="False"></asp:Label>
            <asp:TextBox ID="txtInspectorEmail" runat="server" Visible="False"></asp:TextBox>
            <br />
            <asp:Label ID="lblInspectorMobile" runat="server" Text="Mobile" Visible="False"></asp:Label>
            <asp:TextBox ID="txtInspectorMobile" runat="server" Visible="False"></asp:TextBox>
            <br />
            <asp:Button ID="btnUpdateInspector" runat="server" OnClick="btnUpdateInspector_Click" Text="Update" Visible="False" />
            <br />
            <br />
        </div>
        <asp:Button ID="btnReturn" runat="server" Text="Return" BackColor="#0099FF" BorderColor="#0033CC" ForeColor="Black" OnClick="btnReturn_Click" />
    </form>
</body>
</html>
