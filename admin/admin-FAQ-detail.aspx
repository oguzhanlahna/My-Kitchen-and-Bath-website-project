<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="admin-FAQ-detail.aspx.cs" Inherits="mykb_modern.admin.admin_FAQ_detail" %>
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
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="input-sm form-control-sm form-control" ></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Answer</label> 
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="input-sm form-control-sm form-control" ></asp:TextBox>
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


                     </div>

                </div>
            </div><!-- .animated -->
        </div><!-- .content -->


</asp:Content>
