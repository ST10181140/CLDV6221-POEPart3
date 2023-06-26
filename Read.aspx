<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Read.aspx.cs" Inherits="TheRideYouRent.Read" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSourceCar" runat="server" ConnectionString="<%$ ConnectionStrings:RideYouRent_ST10181140ConnectionString %>" SelectCommand="SELECT * FROM [Car_ST10181140]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceDriver" runat="server" ConnectionString="<%$ ConnectionStrings:RideYouRent_ST10181140ConnectionString %>" SelectCommand="SELECT * FROM [Driver_ST10181140]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceInspector" runat="server" ConnectionString="<%$ ConnectionStrings:RideYouRent_ST10181140ConnectionString %>" SelectCommand="SELECT * FROM [Inspector_ST10181140]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceFine" runat="server" ConnectionString="<%$ ConnectionStrings:RideYouRent_ST10181140ConnectionString %>" SelectCommand="SELECT * FROM [Fine_ST10181140]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceRental" runat="server" ConnectionString="<%$ ConnectionStrings:RideYouRent_ST10181140ConnectionString %>" SelectCommand="SELECT * FROM [Rental_ST10181140]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceReturn" runat="server" ConnectionString="<%$ ConnectionStrings:RideYouRent_ST10181140ConnectionString %>" SelectCommand="SELECT * FROM [Return_ST10181140]"></asp:SqlDataSource>
            <asp:Label ID ="labelHeading" runat ="server" Text ="Read Page" Font-Bold ="True" Font-Italic ="True" Font-Size ="18pt" Font-Underline="True"></asp:Label>
            <br />
            
            <asp:Label ID ="labelSelection" runat ="server" Text ="Select a table to read: "></asp:Label>
             <asp:DropDownList ID="ReadChoice" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ReadChoice_SelectedIndexChanged">
                 <asp:ListItem Text ="Select" Value ="0"></asp:ListItem>
                  <asp:ListItem Text ="Car" Value ="1"></asp:ListItem>
                  <asp:ListItem Text ="Driver" Value ="2"></asp:ListItem>
                  <asp:ListItem Text ="Inspector" Value ="3"></asp:ListItem>
                  <asp:ListItem Text ="Fine" Value ="4"></asp:ListItem>
                  <asp:ListItem Text ="Rental" Value ="5"></asp:ListItem>
                  <asp:ListItem Text ="Return" Value ="6"></asp:ListItem>
             </asp:DropDownList>

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
            <asp:GridView ID="GridViewInspector" runat="server" AutoGenerateColumns="False" DataKeyNames="InspectorNo" DataSourceID="SqlDataSourceInspector">
                <Columns>
                    <asp:BoundField DataField="InspectorNo" HeaderText="InspectorNo" ReadOnly="True" SortExpression="InspectorNo" />
                    <asp:BoundField DataField="InspectorFirstName" HeaderText="InspectorFirstName" SortExpression="InspectorFirstName" />
                    <asp:BoundField DataField="InspectorLastName" HeaderText="InspectorLastName" SortExpression="InspectorLastName" />
                    <asp:BoundField DataField="InspectorEmail" HeaderText="InspectorEmail" SortExpression="InspectorEmail" />
                    <asp:BoundField DataField="InspectorMobile" HeaderText="InspectorMobile" SortExpression="InspectorMobile" />
                </Columns>
            </asp:GridView>
            <asp:GridView ID="GridViewFine" runat="server" AutoGenerateColumns="False" DataKeyNames="FineID" DataSourceID="SqlDataSourceFine">
                <Columns>
                    <asp:BoundField DataField="FineID" HeaderText="FineID" InsertVisible="False" ReadOnly="True" SortExpression="FineID" />
                    <asp:BoundField DataField="FineAmount" HeaderText="FineAmount" SortExpression="FineAmount" />
                    <asp:BoundField DataField="elapsedDays" HeaderText="elapsedDays" SortExpression="elapsedDays" />
                    <asp:BoundField DataField="DriverID" HeaderText="DriverID" SortExpression="DriverID" />
                </Columns>
            </asp:GridView>
            <asp:GridView ID="GridViewRental" runat="server" AutoGenerateColumns="False" DataKeyNames="CarNo,InspectorNo,DriverID" DataSourceID="SqlDataSourceRental">
                <Columns>
                    <asp:BoundField DataField="CarNo" HeaderText="CarNo" ReadOnly="True" SortExpression="CarNo" />
                    <asp:BoundField DataField="InspectorNo" HeaderText="InspectorNo" ReadOnly="True" SortExpression="InspectorNo" />
                    <asp:BoundField DataField="DriverID" HeaderText="DriverID" ReadOnly="True" SortExpression="DriverID" />
                    <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                    <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
                    <asp:BoundField DataField="RentalFee" HeaderText="RentalFee" SortExpression="RentalFee" />
                </Columns>
            </asp:GridView>
            <asp:GridView ID="GridViewReturn" runat="server" AutoGenerateColumns="False" DataKeyNames="FineID" DataSourceID="SqlDataSourceReturn">
                <Columns>
                    <asp:BoundField DataField="CarNo" HeaderText="CarNo" SortExpression="CarNo" />
                    <asp:BoundField DataField="InspectorNo" HeaderText="InspectorNo" SortExpression="InspectorNo" />
                    <asp:BoundField DataField="DriverID" HeaderText="DriverID" SortExpression="DriverID" />
                    <asp:BoundField DataField="ReturnDate" HeaderText="ReturnDate" SortExpression="ReturnDate" />
                    <asp:BoundField DataField="ElapsedDate" HeaderText="ElapsedDate" SortExpression="ElapsedDate" />
                    <asp:BoundField DataField="FineID" HeaderText="FineID" ReadOnly="True" SortExpression="FineID" />
                </Columns>
            </asp:GridView>
            <br />
                 <asp:Button ID="btnReturn" runat="server" Text="Return" OnClick="btnReturn_Click" />        
            </div>
       
     </form>
</body>
</html>
