<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="admin-blogs.aspx.cs" Inherits="mykb_modern.admin.admin_blogs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div id="right-panel" class="right-panel">
     
         <div class="breadcrumbs">
            <div class="breadcrumbs-inner">
                <div class="row m-0">
                    <div class="col-sm-4">
                        <div class="page-header float-left">
                            <div class="page-title">
                                <h1>Projects</h1>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-8">
                        <div class="page-header float-right">
                            <div class="page-title">
                                <ol class="breadcrumb text-right">
                                    <li><asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-info" Target="_blank" NavigateUrl="https://www.mykitchenandbath.com/blogs">View Page</asp:HyperLink> </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

             
        <div class="content">
            <div class="animated fadeIn">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">Projects Section</strong>
                            </div>
                               <div class="row">



                  <%--MAIN--%>
                  <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <strong>Blogs</strong> <small> Details/Delete</small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">








                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="blog_id" DataSourceID="SqlDataSource1" CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" HorizontalAlign="Center">
                                    <Columns>
                                        <asp:BoundField DataField="blog_id" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="blog_id"></asp:BoundField>

                                        <asp:BoundField DataField="blog_title" HeaderText="Title" SortExpression="blog_title"></asp:BoundField>
                                        <asp:BoundField DataField="blog_homepage" HeaderText="Home" SortExpression="blog_homepage"></asp:BoundField>
                                        <asp:TemplateField HeaderText="Home">
                                            <ItemTemplate>
                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("blog_img") %>' Width="150" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Detail">
                                            <ItemTemplate>
                                                <asp:Button ID="Button1" runat="server" Text="Detail" CssClass="btn btn-warning btn-sm" CommandName="blog-single-detail" CommandArgument='<%# Eval("blog_id")%>'/>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Delete">
                                            <ItemTemplate>
                                                <asp:Button ID="Button2" runat="server" Text="Delete" CommandName="Delete" CssClass="btn btn-danger btn-sm" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>

                                    <FooterStyle BackColor="White" ForeColor="#000066"></FooterStyle>

                                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                    <PagerStyle HorizontalAlign="Left" BackColor="White" ForeColor="#000066"></PagerStyle>

                                    <RowStyle ForeColor="#000066"></RowStyle>

                                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                                    <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                                    <SortedAscendingHeaderStyle BackColor="#007DBB"></SortedAscendingHeaderStyle>

                                    <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                                    <SortedDescendingHeaderStyle BackColor="#00547E"></SortedDescendingHeaderStyle>
                                </asp:GridView>








                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:NewConnectionString %>' SelectCommand="SELECT * FROM [blogs]" DeleteCommand="DELETE FROM [blogs] WHERE [blog_id] = @blog_id"></asp:SqlDataSource>


                                    </div>
                                </div>
                            </div>
                        </div>
                      </div>






                     </div>
                 </div>
              </div>
          </div>
       </div>
   </div>
 </div>

</asp:Content>
