<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="admin-projects.aspx.cs" Inherits="mykb_modern.admin.admin_projects" %>
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
                                    <li><asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-info" Target="_blank" NavigateUrl="https://www.mykitchenandbath.com/projects">View Page</asp:HyperLink> </li>
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
                                <strong>Projects</strong> <small> Details/Delete</small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">








                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="project_id" DataSourceID="SqlDataSource1" CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" HorizontalAlign="Center">
                                    <Columns>
                                        <asp:BoundField DataField="project_id" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="project_id"></asp:BoundField>

                                        <asp:BoundField DataField="pro_title" HeaderText="Title" SortExpression="pro_title"></asp:BoundField>
                                        <asp:BoundField DataField="pro_name" HeaderText="Name" SortExpression="pro_name"></asp:BoundField>
                                        <asp:BoundField DataField="pro_client" HeaderText="Client" SortExpression="pro_client"></asp:BoundField>
                                        <asp:BoundField DataField="pro_loc" HeaderText="Location" SortExpression="pro_loc"></asp:BoundField>
                                        <asp:BoundField DataField="pro_year" HeaderText="Year" SortExpression="pro_year"></asp:BoundField>
                                        <asp:BoundField DataField="admin" HeaderText="Admin" SortExpression="admin"></asp:BoundField>
                                        <asp:BoundField DataField="created_date" HeaderText="Created" SortExpression="created_date"></asp:BoundField>
                                        <asp:BoundField DataField="home_top" HeaderText="Home" SortExpression="home_top"></asp:BoundField>
                                        <asp:BoundField DataField="single_top" HeaderText="Single" SortExpression="single_top"></asp:BoundField>
                                        <asp:TemplateField HeaderText="Home">
                                            <ItemTemplate>
                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("pro_home_img") %>' Width="150" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Detail">
                                            <ItemTemplate>
                                                <asp:Button ID="Button1" runat="server" Text="Detail" CssClass="btn btn-warning btn-sm" CommandName="project-single-detail" CommandArgument='<%# Eval("project_id")%>'/>
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








                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:NewConnectionString %>' SelectCommand="SELECT * FROM [projects] ORDER BY [created_date] DESC" DeleteCommand="DELETE FROM [projects] WHERE [project_id] = @project_id"></asp:SqlDataSource>


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
