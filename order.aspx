<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="adminPage_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container">
    <div class="card">
    <div class="card-body">
    <div class="row">
        <div class="col-md-4">
            <asp:Label ID="Label1" runat="server" Text="select customer name"></asp:Label>
        </div>
        <div class="col-md-4">
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" 
                DataTextField="CName" DataValueField="CName"></asp:DropDownList>
        </div>
        <div class="row">
        <div class="col=md-4">
        <asp:Button ID="Button1" runat="server" Text="complete order" 
                onclick="Button1_Click"></asp:Button>
        </div>
        </div>
        <div class="row">
        <div class="col-md-4">
            <asp:Label ID="Label2" runat="server" Text="select customer name"></asp:Label>
        </div>
        <div class="col-md-4">
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" 
                DataTextField="CName" DataValueField="CName"></asp:DropDownList>
        </div>
        <div class="row">
        <div class="col=md-4">
        <asp:Button ID="Button2" runat="server" Text="completed orders" 
                onclick="Button2_Click"></asp:Button>
        </div>
        </div>
    </div>
    </div>
    </div>
    
</div>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataKeyNames="Oid" DataSourceID="SqlDataSource2">
    <Columns>
        <asp:BoundField DataField="Oid" HeaderText="Oid" InsertVisible="False" 
            ReadOnly="True" SortExpression="Oid" />
        <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
        <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
        <asp:BoundField DataField="ODetail" HeaderText="ODetail" 
            SortExpression="ODetail" />
        <asp:BoundField DataField="Adrress" HeaderText="Adrress" 
            SortExpression="Adrress" />
        <asp:BoundField DataField="number" HeaderText="number" 
            SortExpression="number" />
        <asp:BoundField DataField="Qnt" HeaderText="Qnt" SortExpression="Qnt" />
        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
        <asp:BoundField DataField="status" HeaderText="status" 
            SortExpression="status" />
    </Columns>
    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
    <RowStyle BackColor="White" ForeColor="#003399" />
    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    <SortedAscendingCellStyle BackColor="#EDF6F6" />
    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
    <SortedDescendingCellStyle BackColor="#D6DFDF" />
    <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        SelectCommand="SELECT [CName] FROM [order_tbl]"></asp:SqlDataSource>
 <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        DeleteCommand="DELETE FROM [order_tbl] WHERE [Oid] = @original_Oid AND (([CName] = @original_CName) OR ([CName] IS NULL AND @original_CName IS NULL)) AND (([PName] = @original_PName) OR ([PName] IS NULL AND @original_PName IS NULL)) AND (([ODetail] = @original_ODetail) OR ([ODetail] IS NULL AND @original_ODetail IS NULL)) AND (([Adrress] = @original_Adrress) OR ([Adrress] IS NULL AND @original_Adrress IS NULL)) AND [number] = @original_number AND (([Qnt] = @original_Qnt) OR ([Qnt] IS NULL AND @original_Qnt IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))" 
        InsertCommand="INSERT INTO [order_tbl] ([CName], [PName], [ODetail], [Adrress], [number], [Qnt], [date], [status]) VALUES (@CName, @PName, @ODetail, @Adrress, @number, @Qnt, @date, @status)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [order_tbl] WHERE ([CName] = @CName)" 
        
        UpdateCommand="UPDATE [order_tbl] SET [CName] = @CName, [PName] = @PName, [ODetail] = @ODetail, [Adrress] = @Adrress, [number] = @number, [Qnt] = @Qnt, [date] = @date, [status] = @status WHERE [Oid] = @original_Oid AND (([CName] = @original_CName) OR ([CName] IS NULL AND @original_CName IS NULL)) AND (([PName] = @original_PName) OR ([PName] IS NULL AND @original_PName IS NULL)) AND (([ODetail] = @original_ODetail) OR ([ODetail] IS NULL AND @original_ODetail IS NULL)) AND (([Adrress] = @original_Adrress) OR ([Adrress] IS NULL AND @original_Adrress IS NULL)) AND [number] = @original_number AND (([Qnt] = @original_Qnt) OR ([Qnt] IS NULL AND @original_Qnt IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))">
     <DeleteParameters>
         <asp:Parameter Name="original_Oid" Type="Int32" />
         <asp:Parameter Name="original_CName" Type="String" />
         <asp:Parameter Name="original_PName" Type="String" />
         <asp:Parameter Name="original_ODetail" Type="String" />
         <asp:Parameter Name="original_Adrress" Type="String" />
         <asp:Parameter Name="original_number" Type="String" />
         <asp:Parameter Name="original_Qnt" Type="String" />
         <asp:Parameter Name="original_date" Type="String" />
         <asp:Parameter Name="original_status" Type="Int32" />
     </DeleteParameters>
     <InsertParameters>
         <asp:Parameter Name="CName" Type="String" />
         <asp:Parameter Name="PName" Type="String" />
         <asp:Parameter Name="ODetail" Type="String" />
         <asp:Parameter Name="Adrress" Type="String" />
         <asp:Parameter Name="number" Type="String" />
         <asp:Parameter Name="Qnt" Type="String" />
         <asp:Parameter Name="date" Type="String" />
         <asp:Parameter Name="status" Type="Int32" />
     </InsertParameters>
     <SelectParameters>
         <asp:ControlParameter ControlID="DropDownList2" Name="CName" 
             PropertyName="SelectedValue" Type="String" />
     </SelectParameters>
     <UpdateParameters>
         <asp:Parameter Name="CName" Type="String" />
         <asp:Parameter Name="PName" Type="String" />
         <asp:Parameter Name="ODetail" Type="String" />
         <asp:Parameter Name="Adrress" Type="String" />
         <asp:Parameter Name="number" Type="String" />
         <asp:Parameter Name="Qnt" Type="String" />
         <asp:Parameter Name="date" Type="String" />
         <asp:Parameter Name="status" Type="Int32" />
         <asp:Parameter Name="original_Oid" Type="Int32" />
         <asp:Parameter Name="original_CName" Type="String" />
         <asp:Parameter Name="original_PName" Type="String" />
         <asp:Parameter Name="original_ODetail" Type="String" />
         <asp:Parameter Name="original_Adrress" Type="String" />
         <asp:Parameter Name="original_number" Type="String" />
         <asp:Parameter Name="original_Qnt" Type="String" />
         <asp:Parameter Name="original_date" Type="String" />
         <asp:Parameter Name="original_status" Type="Int32" />
     </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

