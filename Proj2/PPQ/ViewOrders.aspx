<%@ Page Title="" Language="C#" MasterPageFile="~/PPQ2.master" AutoEventWireup="true" CodeBehind="ViewOrders.aspx.cs" Inherits="PPQ.ViewOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="OrderID" 
        DataSourceID="SqlDataSource1" Width="100%" 
    PageSize="3" CellPadding="4" ForeColor="#333333" GridLines="None" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" >
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            <ItemStyle ForeColor="Blue" HorizontalAlign="Left" />
            </asp:CommandField>
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" 
                ReadOnly="True" SortExpression="OrderID" >
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            <ItemStyle ForeColor="#FF3300" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" 
                SortExpression="CustomerName" >
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="ContactPerson" HeaderText="ContactPerson" 
                SortExpression="ContactPerson" >
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" >
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" >
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="PaymentType" HeaderText="PaymentType" 
                SortExpression="PaymentType" >
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Description" HeaderText="Description" 
                SortExpression="Description" >
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="TotalValue" HeaderText="TotalValue" 
                SortExpression="TotalValue" >
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            <ItemStyle Width="90px" />
            </asp:BoundField>
            <asp:BoundField DataField="RegisterDate" HeaderText="RegisterDate" 
                SortExpression="RegisterDate" >
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#FF3300" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="White" Font-Bold="False" ForeColor="Blue"/>
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <br />
    <asp:GridView ID="GridView2" runat="server" BackColor="LightGoldenrodYellow" 
        BorderColor="Tan" BorderWidth="1px" CellPadding="2" 
        DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" 
        Width="100%" AutoGenerateColumns="False" DataKeyNames="OrderDetailID" 
        onselectedindexchanged="GridView2_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" >
            <HeaderStyle ForeColor="Maroon" Height="26px" HorizontalAlign="Center" />
            <ItemStyle ForeColor="Blue" HorizontalAlign="Left" />
            </asp:CommandField>
            <asp:BoundField DataField="OrderDetailID" HeaderText="OrderDetailID" 
                InsertVisible="False" ReadOnly="True" SortExpression="OrderDetailID" >
            <HeaderStyle ForeColor="Maroon" Height="26px" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" 
                SortExpression="OrderID" >
            <HeaderStyle ForeColor="Maroon" Height="26px" HorizontalAlign="Center" />
            <ItemStyle ForeColor="#FF3300" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" 
                SortExpression="OrderDate" >
            <HeaderStyle ForeColor="Maroon" Height="26px" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="ItemID" HeaderText="ItemID" 
                SortExpression="ItemID" >
            <HeaderStyle ForeColor="Maroon" Height="26px" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                SortExpression="Quantity" >
            <HeaderStyle ForeColor="Maroon" Height="26px" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" >
            <HeaderStyle ForeColor="Maroon" Height="26px" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        SelectCommand="SELECT * FROM [Orders]" 
        DeleteCommand="DELETE FROM [Orders] WHERE [OrderID] = @OrderID" 
        InsertCommand="INSERT INTO [Orders] ([CustomerName], [ContactPerson], [Address], [Tel], [PaymentType], [Description], [TotalValue], [RegisterDate]) VALUES (@CustomerName, @ContactPerson, @Address, @Tel, @PaymentType, @Description, @TotalValue, @RegisterDate)" 
        UpdateCommand="UPDATE [Orders] SET [CustomerName] = @CustomerName, [ContactPerson] = @ContactPerson, [Address] = @Address, [Tel] = @Tel, [PaymentType] = @PaymentType, [Description] = @Description, [TotalValue] = @TotalValue, [RegisterDate] = @RegisterDate WHERE [OrderID] = @OrderID">
        <DeleteParameters>
            <asp:Parameter Name="OrderID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerName" Type="String" />
            <asp:Parameter Name="ContactPerson" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Tel" Type="String" />
            <asp:Parameter Name="PaymentType" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="TotalValue" Type="String" />
            <asp:Parameter Name="RegisterDate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CustomerName" Type="String" />
            <asp:Parameter Name="ContactPerson" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Tel" Type="String" />
            <asp:Parameter Name="PaymentType" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="TotalValue" Type="String" />
            <asp:Parameter Name="RegisterDate" Type="DateTime" />
            <asp:Parameter Name="OrderID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        DeleteCommand="DELETE FROM [OrderDetails] WHERE [OrderDetailID] = @OrderDetailID" 
        InsertCommand="INSERT INTO [OrderDetails] ([OrderID], [OrderDate], [ItemID], [Quantity], [Price]) VALUES (@OrderID, @OrderDate, @ItemID, @Quantity, @Price)" 
        SelectCommand="SELECT * FROM [OrderDetails] WHERE ([OrderID] = @OrderID)" 
        UpdateCommand="UPDATE [OrderDetails] SET [OrderID] = @OrderID, [OrderDate] = @OrderDate, [ItemID] = @ItemID, [Quantity] = @Quantity, [Price] = @Price WHERE [OrderDetailID] = @OrderDetailID">
        <DeleteParameters>
            <asp:Parameter Name="OrderDetailID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OrderID" Type="Int32" />
            <asp:Parameter Name="OrderDate" Type="DateTime" />
            <asp:Parameter Name="ItemID" Type="Int32" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="Price" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="OrderID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="OrderID" Type="Int32" />
            <asp:Parameter Name="OrderDate" Type="DateTime" />
            <asp:Parameter Name="ItemID" Type="Int32" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="Price" Type="Int32" />
            <asp:Parameter Name="OrderDetailID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
