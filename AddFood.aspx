<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AddFood.aspx.cs" Inherits="AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div  class="container>
    <div class="row">
        <div class="col-md-12">
            <asp:Image ID="Image1" runat="server"></asp:Image>
            <hr />
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label1" runat="server" Text="Enter Food Name"></asp:Label>
            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label2" runat="server" Text="Enter Food Category"></asp:Label>
            <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="PCat" DataValueField="PCat"></asp:DropDownList>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label3" runat="server" Text="Enter Food Rate"></asp:Label>
            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label4" runat="server" Text="Enter Food Detail"></asp:Label>
            <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"></asp:TextBox>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label5" runat="server" Text="Enter Food Image"></asp:Label>
            <asp:FileUpload CssClass="form-control" ID="FileUpload1" runat="server"></asp:FileUpload>
        </div>
         <div class="col-md-6">
            <asp:Label ID="Label6" runat="server" Text="Enter Food Image1"></asp:Label>
            <asp:FileUpload CssClass="form-control" ID="FileUpload2" runat="server"></asp:FileUpload>
        </div>
        <div class="col-md-6">
            <asp:Label ID="Label7" runat="server" Text="Enter Food Image2"></asp:Label>
            <asp:FileUpload CssClass="form-control" ID="FileUpload3" runat="server"></asp:FileUpload>
        </div>
         <div class="col-md-6">
            <asp:Label ID="Label9" runat="server" Text="Enter Food Quantity"></asp:Label>
            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click"></asp:Button>
    </div>
</div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        SelectCommand="SELECT * FROM [category_tbll]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataKeyNames="PID" DataSourceID="SqlDataSource2" Height="149px" 
        Width="441px">
        <Columns>
            <asp:BoundField DataField="PID" HeaderText="PID" InsertVisible="False" 
                ReadOnly="True" SortExpression="PID" />
            <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
            <asp:BoundField DataField="PCat" HeaderText="PCat" SortExpression="PCat" />
            <asp:BoundField DataField="PRate" HeaderText="PRate" SortExpression="PRate" />
            <asp:BoundField DataField="PDesc" HeaderText="PDesc" SortExpression="PDesc" />
            <asp:BoundField DataField="PImg" HeaderText="PImg" SortExpression="PImg" />
            <asp:BoundField DataField="PImg2" HeaderText="PImg2" SortExpression="PImg2" />
            <asp:BoundField DataField="PImg3" HeaderText="PImg3" SortExpression="PImg3" />
            <asp:BoundField DataField="PQnt" HeaderText="PQnt" SortExpression="PQnt" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:conn %>" 
        DeleteCommand="DELETE FROM [food_tbl] WHERE [PID] = @PID" 
        InsertCommand="INSERT INTO [food_tbl] ([PName], [PCat], [PRate], [PDesc], [PImg], [PImg2], [PImg3], [PQnt]) VALUES (@PName, @PCat, @PRate, @PDesc, @PImg, @PImg2, @PImg3, @PQnt)" 
        SelectCommand="SELECT * FROM [food_tbl]" 
        UpdateCommand="UPDATE [food_tbl] SET [PName] = @PName, [PCat] = @PCat, [PRate] = @PRate, [PDesc] = @PDesc, [PImg] = @PImg, [PImg2] = @PImg2, [PImg3] = @PImg3, [PQnt] = @PQnt WHERE [PID] = @PID">
        <DeleteParameters>
            <asp:Parameter Name="PID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PName" Type="String" />
            <asp:Parameter Name="PCat" Type="String" />
            <asp:Parameter Name="PRate" Type="String" />
            <asp:Parameter Name="PDesc" Type="String" />
            <asp:Parameter Name="PImg" Type="String" />
            <asp:Parameter Name="PImg2" Type="String" />
            <asp:Parameter Name="PImg3" Type="String" />
            <asp:Parameter Name="PQnt" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PName" Type="String" />
            <asp:Parameter Name="PCat" Type="String" />
            <asp:Parameter Name="PRate" Type="String" />
            <asp:Parameter Name="PDesc" Type="String" />
            <asp:Parameter Name="PImg" Type="String" />
            <asp:Parameter Name="PImg2" Type="String" />
            <asp:Parameter Name="PImg3" Type="String" />
            <asp:Parameter Name="PQnt" Type="String" />
            <asp:Parameter Name="PID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

