<%@ Page Title="" Language="C#" MasterPageFile="~/PPQ2.master" AutoEventWireup="true" CodeBehind="ViewProducts.aspx.cs" Inherits="PPQ.ViewProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="MenuItemID" 
        DataSourceID="SqlDataSource1" PageSize="5" Width="100%" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" >
            <FooterStyle Height="24px" />
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            <ItemStyle Width="110px" ForeColor="Blue" />
            </asp:CommandField>
            <asp:BoundField DataField="MenuItemID" HeaderText="MenuItemID" 
                InsertVisible="False" ReadOnly="True" SortExpression="MenuItemID" >
            <FooterStyle Height="24px" />
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            <ItemStyle Width="90px" ForeColor="#FF3300" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="MenuItemType" HeaderText="MenuItemType" 
                SortExpression="MenuItemType" >
            <FooterStyle Height="24px" />
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="ItemName" HeaderText="ItemName" 
                SortExpression="ItemName" >
            <FooterStyle Height="24px" />
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="PizzaToppings" HeaderText="PizzaToppings" 
                SortExpression="PizzaToppings" >
            <FooterStyle Height="24px" />
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            <ItemStyle Width="280px" />
            </asp:BoundField>
            <asp:BoundField DataField="ItemSize" HeaderText="ItemSize" 
                SortExpression="ItemSize" >
            <FooterStyle Height="24px" />
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="ItemPrice" HeaderText="ItemPrice" 
                SortExpression="ItemPrice" >
            <FooterStyle Height="24px" />
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="Description" HeaderText="Description" 
                SortExpression="Description" >
            <FooterStyle Height="24px" />
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            <ItemStyle Width="600px" />
            </asp:BoundField>
            <asp:BoundField DataField="GraphicFileName" HeaderText="GraphicFileName" 
                SortExpression="GraphicFileName" >
            <FooterStyle Height="24px" />
            <HeaderStyle Height="26px" HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" HorizontalAlign="Center" ForeColor="Blue" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="White" Font-Bold="False" ForeColor="Blue" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:LOGINConnectionString %>" OnSelecting="SqlDataSource3_Selecting" SelectCommand="SELECT * FROM [tblAccount]"></asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="username" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
            <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="100%" 
        AutoGenerateRows="False" DataKeyNames="MenuItemID" 
        DataSourceID="SqlDataSource2" BackColor="White" 
        BorderColor="#CC9966" BorderWidth="1px" CellPadding="4" BorderStyle="None">
        <EditRowStyle BackColor="#FFCC66" ForeColor="#663399" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="MenuItemID" HeaderText="MenuItemID" 
                InsertVisible="False" ReadOnly="True" SortExpression="MenuItemID">
            <HeaderStyle Font-Bold="False" ForeColor="Maroon" Width="130px" />
            <ItemStyle Width="470px" ForeColor="#FF3300" />
            </asp:BoundField>
            <asp:BoundField DataField="MenuItemType" HeaderText="MenuItemType" 
                SortExpression="MenuItemType">
            <HeaderStyle Font-Bold="False" ForeColor="Maroon" Width="130px" />
            <ItemStyle Width="470px" />
            </asp:BoundField>
            <asp:BoundField DataField="ItemName" HeaderText="ItemName" 
                SortExpression="ItemName">
            <HeaderStyle Font-Bold="False" ForeColor="Maroon" Width="130px" />
            <ItemStyle Width="470px" />
            </asp:BoundField>
            <asp:BoundField DataField="PizzaToppings" HeaderText="PizzaToppings" 
                SortExpression="PizzaToppings">
            <HeaderStyle Font-Bold="False" ForeColor="Maroon" Width="130px" />
            <ItemStyle Width="470px" />
            </asp:BoundField>
            <asp:BoundField DataField="ItemSize" HeaderText="ItemSize" 
                SortExpression="ItemSize">
            <HeaderStyle Font-Bold="False" ForeColor="Maroon" Width="130px" />
            <ItemStyle Width="470px" />
            </asp:BoundField>
            <asp:BoundField DataField="ItemPrice" HeaderText="ItemPrice" 
                SortExpression="ItemPrice">
            <HeaderStyle Font-Bold="False" ForeColor="Maroon" Width="130px" />
            <ItemStyle Width="470px" />
            </asp:BoundField>
            <asp:BoundField DataField="Description" HeaderText="Description" 
                SortExpression="Description">
            <HeaderStyle Font-Bold="False" ForeColor="Maroon" Width="130px" />
            <ItemStyle Width="470px" />
            </asp:BoundField>
            <asp:BoundField DataField="GraphicFileName" HeaderText="GraphicFileName" 
                SortExpression="GraphicFileName">
            <HeaderStyle Font-Bold="False" ForeColor="Maroon" Width="130px" />
            <ItemStyle Width="470px" />
            </asp:BoundField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" >
            <ItemStyle ForeColor="Blue" HorizontalAlign="Center" />
            </asp:CommandField>
        </Fields>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" 
            HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
    </asp:DetailsView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        SelectCommand="SELECT * FROM [MenuItems]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        DeleteCommand="DELETE FROM [MenuItems] WHERE [MenuItemID] = @MenuItemID" 
        InsertCommand="INSERT INTO [MenuItems] ([MenuItemType], [ItemName], [PizzaToppings], [ItemSize], [ItemPrice], [Description], [GraphicFileName]) VALUES (@MenuItemType, @ItemName, @PizzaToppings, @ItemSize, @ItemPrice, @Description, @GraphicFileName)" 
        SelectCommand="SELECT * FROM [MenuItems] WHERE ([MenuItemID] = @MenuItemID)" 
        UpdateCommand="UPDATE [MenuItems] SET [MenuItemType] = @MenuItemType, [ItemName] = @ItemName, [PizzaToppings] = @PizzaToppings, [ItemSize] = @ItemSize, [ItemPrice] = @ItemPrice, [Description] = @Description, [GraphicFileName] = @GraphicFileName WHERE [MenuItemID] = @MenuItemID">
        <DeleteParameters>
            <asp:Parameter Name="MenuItemID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MenuItemType" Type="String" />
            <asp:Parameter Name="ItemName" Type="String" />
            <asp:Parameter Name="PizzaToppings" Type="String" />
            <asp:Parameter Name="ItemSize" Type="String" />
            <asp:Parameter Name="ItemPrice" Type="Double" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="GraphicFileName" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="MenuItemID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="MenuItemType" Type="String" />
            <asp:Parameter Name="ItemName" Type="String" />
            <asp:Parameter Name="PizzaToppings" Type="String" />
            <asp:Parameter Name="ItemSize" Type="String" />
            <asp:Parameter Name="ItemPrice" Type="Double" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="GraphicFileName" Type="String" />
            <asp:Parameter Name="MenuItemID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
