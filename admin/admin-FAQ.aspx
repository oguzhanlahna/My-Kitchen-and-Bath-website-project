<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="admin-FAQ.aspx.cs" Inherits="mykb_modern.admin.admin_FAQ" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
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
                                <h1>FAQ</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="page-header float-right">
                            <div class="page-title">
                                <ol class="breadcrumb text-right">
                                    <li><asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-info" Target="_blank" NavigateUrl="https://www.mykitchenandbath.com/admin-FAQ">View Page</asp:HyperLink> </li>
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


                     <div class="col-md-6">
                        <div class="card">
                            <div class="card-header">
                                <strong>Title/Description</strong> <small> Section 1</small>
                            </div>
                            <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                  <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Mini Title</label> 
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a mini title"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Title</label> 
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a title"></asp:TextBox>
                                    </div>
                                </div>


                                <div class="form-actions form-group">
                                    <asp:Button ID="Button1" runat="server" Text="SAVE" CssClass="btn btn-primary btn-sm" OnClick="Button1_Click"/>
                                </div>



                                    </div>
                                </div>
                            </div>
                        </div>
                     </div>







                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-header">
                                <strong>FAQ </strong> <small> Create ( Question/Answer ) </small>
                            </div>
                            <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                  <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Question</label> 
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a question"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Answer</label> 
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox4" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a answer"></asp:TextBox>
                                    </div>
                                </div>


                                <div class="form-actions form-group">
                                    <asp:Button ID="Button4" runat="server" Text="ADD" CssClass="btn btn-primary btn-sm" OnClick="Button4_Click" />
                                </div>





                                    </div>
                                </div>
                            </div>
                        </div>
                     </div>


                     <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <strong>Question/Answer</strong> <small> Details</small>
                            </div>
                            <div class="card-body">
                                <div class="card-body card-block">



                                 <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="FAQ_id" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AllowPaging="True" HorizontalAlign="Center" RowHeaderColumn="FAQ_about" OnRowDeleting="GridView1_RowDeleting" OnRowCommand="GridView1_RowCommand">
                                    <AlternatingRowStyle BackColor="#DCDCDC"></AlternatingRowStyle>
                                    <Columns>
                                        <asp:BoundField DataField="FAQ_id" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="FAQ_id"></asp:BoundField>
                                        <asp:BoundField DataField="FAQ_question" HeaderText="Question" SortExpression="FAQ_question"></asp:BoundField>
                                        <asp:BoundField DataField="FAQ_answer" HeaderText="Answer" SortExpression="FAQ_answer"></asp:BoundField>
                                        <asp:BoundField DataField="FAQ_about" HeaderText="Page" SortExpression="FAQ_about"></asp:BoundField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:Button ID="Button5" runat="server" Text="Detail" CssClass="btn btn-warning btn-sm" CommandName="FAQ-detail" CommandArgument='<%# Eval("FAQ_id")%>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:Button ID="Button3" runat="server"  Text="Delete" CommandName="Delete" CssClass="btn btn-danger btn-sm" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black"></FooterStyle>

                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                    <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black"></RowStyle>

                                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                                    <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                                    <SortedAscendingHeaderStyle BackColor="#0000A9"></SortedAscendingHeaderStyle>

                                    <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                                    <SortedDescendingHeaderStyle BackColor="#000065"></SortedDescendingHeaderStyle>
                                </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:NewConnectionString %>' SelectCommand="SELECT * FROM [FAQ_QA]" DeleteCommand="DELETE FROM [FAQ_QA] WHERE [FAQ_id] = @FAQ_id">
    <DeleteParameters>
        <asp:Parameter Name="FAQ_id" Type="Int32" />
    </DeleteParameters>
</asp:SqlDataSource>




                                    </div>
                                </div>
                            </div>
                        </div>
                     </div>










                    <asp:Button ID="Button2" runat="server" Text="Save" CssClass="btn btn-primary btn-sm"  />
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>





                </div>
            </div><!-- .animated -->
        </div><!-- .content -->

              
 

</asp:Content>
