<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="admin-services-basement-remodeling.aspx.cs" Inherits="mykb_modern.admin.admin_services_basement_remodeling" %>
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
                                <h1>Basement Remodeling</h1>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-8">
                        <div class="page-header float-right">
                            <div class="page-title">
                                <ol class="breadcrumb text-right">
                                    <li><asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-info" Target="_blank" NavigateUrl="https://www.mykitchenandbath.com/services-basement-remodeling">View Page</asp:HyperLink> </li>
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
                                <strong>Title/Description</strong> <small> Section 1</small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                  <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Title</label> 
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a title"></asp:TextBox>
                                    </div>
                                </div>
                                  <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Description</label> 
                                    </div>
                                    <div class="col col-sm-10">
                                        <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server"></CKEditor:CKEditorControl>
                                    </div>
                                </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                     </div>




                  <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">Section 2</strong>
                            </div>
                 <div class="row">
                  <div class="col-md-6">
                        <div class="card">
                            <div class="card-header">
                                <strong>1.Photo</strong> <small> Section 2</small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                  <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Title</label> 
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a title"></asp:TextBox>
                                    </div>
                                </div>
                                  <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Description</label> 
                                    </div>
                                    <div class="col col-sm-10">
                                        <CKEditor:CKEditorControl ID="CKEditorControl2" runat="server"></CKEditor:CKEditorControl>
                                    </div>
                                </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="card">
                            <div class="card-header">
                                <strong>2.Photo</strong> <small> Section 2</small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">                              
                                  <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Title</label> 
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a title"></asp:TextBox>
                                    </div>
                                </div>
                                  <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Description</label> 
                                    </div>
                                    <div class="col col-sm-10">
                                        <CKEditor:CKEditorControl ID="CKEditorControl3" runat="server"></CKEditor:CKEditorControl>
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





                  <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">Section 2</strong>
                            </div>
                 <div class="row">
                  <div class="col-md-6">
                        <div class="card">
                            <div class="card-header">
                                <strong>3.Photo</strong> <small> Section 2</small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                  <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Title</label> 
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox4" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a title"></asp:TextBox>
                                    </div>
                                </div>
                                  <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Description</label> 
                                    </div>
                                    <div class="col col-sm-10">
                                        <CKEditor:CKEditorControl ID="CKEditorControl4" runat="server"></CKEditor:CKEditorControl>
                                    </div>
                                </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="card">
                            <div class="card-header">
                                <strong>4.Photo</strong> <small> Section 2</small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">                              
                                  <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Title</label> 
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a title"></asp:TextBox>
                                    </div>
                                </div>
                                  <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Description</label> 
                                    </div>
                                    <div class="col col-sm-10">
                                        <CKEditor:CKEditorControl ID="CKEditorControl5" runat="server"></CKEditor:CKEditorControl>
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


                    <asp:Button ID="Button2" runat="server" Text="Save" CssClass="btn btn-primary btn-sm" OnClick="Button2_Click" />
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>


                </div>
            </div><!-- .animated -->
        </div><!-- .content -->

              
    </div>



</asp:Content>
