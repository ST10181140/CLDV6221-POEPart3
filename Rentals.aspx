<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rentals.aspx.cs" Inherits="TheRideYouRent.Rentals" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="LabelRentalandReturn" runat="server" Text="Rentals & Returns"></asp:Label>
            <br />
            <asp:SqlDataSource ID="SqlDataSourceRental" runat="server" ConnectionString="<%$ ConnectionStrings:RideYouRent_ST10181140ConnectionString %>" SelectCommand="SELECT * FROM [Rental_ST10181140]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceReturn" runat="server" ConnectionString="<%$ ConnectionStrings:RideYouRent_ST10181140ConnectionString %>" SelectCommand="SELECT * FROM [Return_ST10181140]"></asp:SqlDataSource>
            
            <asp:Label ID="LabelSelectView" runat="server" Text="Select a table to view"></asp:Label>
            <asp:DropDownList ID="DropDownSelectView" runat="server" OnSelectedIndexChanged="DropDownSelectView_SelectedIndexChanged"></asp:DropDownList>
            <br />
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
            <asp:Label ID="LabelSelectAdd" runat="server" Text="Select a table to add to."></asp:Label>

            <asp:DropDownList ID="DropDownSelectAdd" runat="server" OnSelectedIndexChanged="DropDownSelectAdd_SelectedIndexChanged"></asp:DropDownList>
            <br />
            <asp:Label ID="LabelCarNo" runat="server" Text="Car No:"></asp:Label>
            <asp:TextBox ID="txtCarNo" runat="server"></asp:TextBox>

            <asp:Label ID="LabelInspectorNo" runat="server" Text="Inspector No:"></asp:Label>
            <asp:TextBox ID="txtInspectorNo" runat="server"></asp:TextBox>

            <asp:Label ID="LabelDriverID" runat="server" Text="Driver ID:"></asp:Label>
            <asp:TextBox ID="txtDriverID" runat="server"></asp:TextBox>

            <asp:Label ID="LabelRentalFee" runat="server" Text="Rental Fee:"></asp:Label>
            <asp:TextBox ID="txtRentalFee" runat="server"></asp:TextBox>

            <asp:Label ID="LabelReturnDate" runat="server" Text="Return Date:"></asp:Label>
            <asp:TextBox ID="txtReturnDate" runat="server"></asp:TextBox>

            <asp:Label ID="LabelElapsedDays" runat="server" Text="Elapsed Days:"></asp:Label>
            <asp:TextBox ID="txtElapsedDays" runat="server"></asp:TextBox>

            <asp:Label ID="LabelFine" runat="server" Text="Fine:"></asp:Label>
            <asp:TextBox ID="txtFine" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="LabelStartDate" runat="server" Text="Rental Start Date"></asp:Label>
            <asp:Calendar ID="calStart" runat="server" Text="Start of rental"></asp:Calendar>
            <br />
                <asp:Label ID="LabelEndDate" runat="server" Text="Rental End Date"></asp:Label>
             <asp:Calendar ID="calEnd" runat="server" Text="End of rental"></asp:Calendar>
            <br />

            <br />
                <asp:Label ID="LabelReturn" runat="server" Text="Rental Return Date"></asp:Label>
             <asp:Calendar ID="calReturn" runat="server" Text="Renntal Actual Return"></asp:Calendar>
            <br />

            <asp:Button ID="btnCreateRentalReturn" runat="server" Text="Create The Rental or Return" OnClick="createRentalReturn_Click" />
            <br />
            <asp:Button ID="btnReturn" runat="server" Text="Return" OnClick="btnReturn_Click" />

        </div>
    </form>
</body>
</html>
