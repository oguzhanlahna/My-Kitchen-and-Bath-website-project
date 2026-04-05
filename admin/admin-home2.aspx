<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="admin-home2.aspx.cs" Inherits="mykb_modern.admin.admin_home2" %>
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
                                <h1>Homepage</h1>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-8">
                        <div class="page-header float-right">
                            <div class="page-title">
                                <ol class="breadcrumb text-right">
                                    <li><asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-info" Target="_blank" NavigateUrl="https://www.mykitchenandbath.com/default">View Page</asp:HyperLink> </li>
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
                                <strong class="card-title">Category Section</strong>
                            </div>


                               <div class="row">



                  <%--MAIN--%>
                  <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <strong>MAIN</strong> <small> Details</small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                
                                  <div class="row form-group">
                                    <div class="col col-sm-1">
                                        <label for="input-small" class=" form-control-label">Mini Title</label> 
                                    </div>
                                    <div class="col col-sm-5">
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a mini title"></asp:TextBox>
                                    </div>
                                </div>

                                  <div class="row form-group">
                                    <div class="col col-sm-1">
                                        <label for="input-small" class=" form-control-label">Description</label> 
                                    </div>
                                    <div class="col col-sm-5">
                                        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" CssClass="input-sm form-control-sm form-control" placeholder="Enter a Title"></asp:TextBox>
                                    </div>
                                </div>


                                  <div class="row form-group">
                                    <div class="col col-sm-1">
                                        <label for="input-small" class=" form-control-label">Description</label> 
                                    </div>
                                    <div class="col col-sm-5">
                                        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" CssClass="input-sm form-control-sm form-control" placeholder="Enter a Description"></asp:TextBox>
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
                                <strong class="card-title">Category Section</strong>
                            </div>


                               <div class="row">



                  <%--PHOTO 1--%>
                  <div class="col-xs-4 col-sm-4">
                        <div class="card">
                            <div class="card-header">
                                <strong>1.Photo Part</strong> <small> Details</small>
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
                                        <label for="input-small" class=" form-control-label">Desc</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" CssClass="input-sm form-control-sm form-control" placeholder="Enter a description"></asp:TextBox>
                                    </div>
                                </div>


                                
                                   <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Line-1</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox6" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a line-1"></asp:TextBox>
                                    </div>
                                </div>


                                
                                   <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Line-2</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox7" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a line-2"></asp:TextBox>
                                    </div>
                                </div>


                                
                                   <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Line-3</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox8" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a line-3"></asp:TextBox>
                                    </div>
                                </div>


                            </div>
                         </div>
                       </div>
                     </div>
                   </div>





                   <%--PHOTO 2--%>
                  <div class="col-xs-4 col-sm-4">
                        <div class="card">
                            <div class="card-header">
                                <strong>2.Photo Part</strong> <small> Details</small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                

                                   <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Title</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox9" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a title"></asp:TextBox>
                                    </div>
                                </div>


                                
                                   <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Desc</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine" CssClass="input-sm form-control-sm form-control" placeholder="Enter a description"></asp:TextBox>
                                    </div>
                                </div>


                                
                                   <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Line-1</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox11" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a line-1"></asp:TextBox>
                                    </div>
                                </div>


                                
                                   <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Line-2</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox12" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a line-2"></asp:TextBox>
                                    </div>
                                </div>


                                
                                   <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Line-3</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox13" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a line-3"></asp:TextBox>
                                    </div>
                                </div>


                            </div>
                         </div>
                       </div>
                     </div>
                   </div>


                  <%--PHOTO 3--%>
                  <div class="col-xs-4 col-sm-4">
                        <div class="card">
                            <div class="card-header">
                                <strong>3.Photo Part</strong> <small> Details</small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                

                                   <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Title</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox14" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a title"></asp:TextBox>
                                    </div>
                                </div>


                                
                                   <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Desc</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox15" runat="server" TextMode="MultiLine" CssClass="input-sm form-control-sm form-control" placeholder="Enter a description"></asp:TextBox>
                                    </div>
                                </div>


                                
                                   <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Line-1</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox16" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a line-1"></asp:TextBox>
                                    </div>
                                </div>


                                
                                   <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Line-2</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox17" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a line-2"></asp:TextBox>
                                    </div>
                                </div>


                                
                                   <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Line-3</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox18" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a line-3"></asp:TextBox>
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













                      <asp:Button ID="Button2" runat="server" Text="Save" CssClass="btn btn-primary btn-sm" OnClick="Button2_Click"/>












                </div>
            </div><!-- .animated -->
        </div><!-- .content -->

              
    </div>

</asp:Content>
