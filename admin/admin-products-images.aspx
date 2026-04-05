<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="admin-products-images.aspx.cs" Inherits="mykb_modern.admin.admin_products_images" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div id="right-panel" class="right-panel">


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="product_id" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:BoundField DataField="product_id" HeaderText="product_id" ReadOnly="True" InsertVisible="False" SortExpression="product_id"></asp:BoundField>
            <asp:BoundField DataField="page" HeaderText="page" SortExpression="page"></asp:BoundField>
            <asp:BoundField DataField="pro_cate" HeaderText="pro_cate" SortExpression="pro_cate"></asp:BoundField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" Text="Detail" CssClass="btn btn-warning btn-sm" CommandName="products-single-detail" CommandArgument='<%# Eval("product_id")%>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button2" runat="server" Text="Button" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:NewConnectionString %>' SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>




        </div>

</asp:Content>
