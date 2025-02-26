<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AddCat.aspx.cs" Inherits="adminPage_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container>
<div class="card">
    <div class="card-body">
    
    <div class="row">
        <div class="col-md-12">
            <asp:Image ID="Image1" runat="server"></asp:Image>
            <hr />
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <label>Enter Category</label>
            <asp:TextBox Cssclass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
        </div>
         <div class="col-md-4">

        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
<%--            <asp:Button class="btn  btn-primary" ID="Button1" runat="server" 
                Text="enter" onclick="Button1_Click"></asp:Button>--%>
        </div>
    </div>
</div>
   </div>
</div>
 <div class="row">
        <div class="col-md-4">
<%--            <asp:Button class="btn  btn-primary" ID="Button2" runat="server" 
                Text="enter" onclick="Button1_Click"></asp:Button>--%>
        </div>
    </div>
    <asp:Button ID="Button1" runat="server" Text="ADD" Height="31px" 
        onclick="Button1_Click1" Width="78px" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="CID" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" Height="196px" Width="503px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="CID" HeaderText="CID" InsertVisible="False" 
                ReadOnly="True" SortExpression="CID">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="PCat" HeaderText="PCat" SortExpression="PCat">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        SelectCommand="SELECT * FROM [category_tbll]"></asp:SqlDataSource>
</asp:Content>

