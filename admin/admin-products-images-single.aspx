<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="admin-products-images-single.aspx.cs" Inherits="mykb_modern.admin.admin_products_images_single" %>
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
                                <h1>Producs</h1>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-8">
                        <div class="page-header float-right">
                            <div class="page-title">
                                <ol class="breadcrumb text-right">
                                    <li><asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-info" Target="_blank" NavigateUrl="https://www.mykitchenandbath.com/default.aspx">View Page</asp:HyperLink> </li>
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
                            <div class="card-header"
                                <strong class="card-title">IMAGE CONTROLS</strong>
                            </div>


                               <div class="row">



                  <%--Big Image--%>
                  <div class="col-sm-4">
                        <div class="card">
                            <div class="card-header">
                                <strong>Big Image</strong> <small> Products // size<1200x800></small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                
                                     <div class="row form-group">
                                        <div class="col col-sm-12"><asp:Image ID="Image1" runat="server" Width="300" Height="200"/></div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col col-sm-12"><asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control-file" /></div>
                                    </div>


                                      <div class="row form-group">
                                        <div class="col col-sm-12"><asp:Button ID="Button3" runat="server" Text="Upload" CssClass="btn btn-outline-primary btn-sm" OnClick="Button3_Click" /></div>
                                          <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                    </div>



                            </div>
                         </div>
                       </div>
                     </div>
                   </div>





                   <%--Image 1--%>
                  <div class="col-sm-4">
                        <div class="card">
                            <div class="card-header">
                                <strong>Image 1</strong> <small> Products // size<385x224></small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                

                                     <div class="row form-group">
                                       <div class="col col-sm-12"><asp:Image ID="Image2" runat="server" Width="300" Height="200"/></div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col col-sm-12"><asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control-file" /></div>
                                    </div>


                                      <div class="row form-group">
                                        <div class="col col-sm-12"><asp:Button ID="Button4" runat="server" Text="Upload" CssClass="btn btn-outline-primary btn-sm"  /></div>
                                    </div>


                            </div>
                         </div>
                       </div>
                     </div>
                   </div>


                  <%--Image 2--%>
                  <div class="col-sm-4">
                        <div class="card">
                            <div class="card-header">
                                <strong>Image 2</strong> <small> Products // size<385x224></small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">

                                     <div class="row form-group">
                                        <div class="col col-sm-12"><asp:Image ID="Image3" runat="server" Width="300" Height="200"/></div>
                                    </div>

                                
                                    <div class="row form-group">
                                        <div class="col col-sm-12"><asp:FileUpload ID="FileUpload3" runat="server" CssClass="form-control-file" /></div>
                                    </div>


                                      <div class="row form-group">
                                        <div class="col col-sm-12"><asp:Button ID="Button5" runat="server" Text="Upload" CssClass="btn btn-outline-primary btn-sm"  /></div>
                                    </div>


                            </div>
                         </div>
                       </div>
                     </div>
                   </div>


                  <%--Image 3--%>
                  <div class="col-sm-4">
                        <div class="card">
                            <div class="card-header">
                                <strong>Image 3</strong> <small> Products // size<450x500></small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                


                                      <div class="row form-group">
                                       <div class="col col-sm-12"><asp:Image ID="Image4" runat="server" Width="300" Height="200"/></div>
                                    </div>


                                    <div class="row form-group">
                                        <div class="col col-sm-12"><asp:FileUpload ID="FileUpload4" runat="server" CssClass="form-control-file" /></div>
                                    </div>


                                      <div class="row form-group">
                                        <div class="col col-sm-12"><asp:Button ID="Button6" runat="server" Text="Upload" CssClass="btn btn-outline-primary btn-sm" /></div>
                                    </div>


                            </div>
                         </div>
                       </div>
                     </div>
                   </div>




                  <%--Image 4--%>
                  <div class="col-sm-4">
                        <div class="card">
                            <div class="card-header">
                                <strong>Image 4</strong> <small> Products // size<450x500></small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                


                                     <div class="row form-group">
                                       <div class="col col-sm-12"><asp:Image ID="Image5" runat="server" Width="300" Height="200"/></div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col col-sm-12"><asp:FileUpload ID="FileUpload5" runat="server" CssClass="form-control-file" /></div>
                                    </div>


                                      <div class="row form-group">
                                        <div class="col col-sm-12"><asp:Button ID="Button7" runat="server" Text="Upload" CssClass="btn btn-outline-primary btn-sm"  /></div>
                                    </div>


                            </div>
                         </div>
                       </div>
                     </div>
                   </div>




                   <%--Image 5--%>
                  <div class="col-sm-4">
                        <div class="card">
                            <div class="card-header">
                              <strong>Image 5</strong> <small> Products // size<450x500></small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                


                                     <div class="row form-group">
                                       <div class="col col-sm-12"><asp:Image ID="Image6" runat="server" Width="300" Height="200"/></div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col col-sm-12"><asp:FileUpload ID="FileUpload6" runat="server" CssClass="form-control-file" /></div>
                                    </div>


                                      <div class="row form-group">
                                        <div class="col col-sm-12"><asp:Button ID="Button1" runat="server" Text="Upload" CssClass="btn btn-outline-primary btn-sm"  /></div>
                                    </div>


                            </div>
                         </div>
                       </div>
                     </div>
                   </div>




                  <%--Image 6--%>
                  <div class="col-sm-4">
                        <div class="card">
                            <div class="card-header">
                                <strong>Image 6</strong> <small> Products // size<450x500></small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                


                                     <div class="row form-group">
                                       <div class="col col-sm-12"><asp:Image ID="Image7" runat="server" Width="300" Height="200"/></div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col col-sm-12"><asp:FileUpload ID="FileUpload7" runat="server" CssClass="form-control-file" /></div>
                                    </div>


                                      <div class="row form-group">
                                        <div class="col col-sm-12"><asp:Button ID="Button2" runat="server" Text="Upload" CssClass="btn btn-outline-primary btn-sm"  /></div>
                                    </div>


                            </div>
                         </div>
                       </div>
                     </div>
                   </div>




                  <%--Image 7--%>
                  <div class="col-sm-4">
                        <div class="card">
                            <div class="card-header">
                                <strong>Image 7</strong> <small> Products // size<450x500></small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                


                                     <div class="row form-group">
                                       <div class="col col-sm-12"><asp:Image ID="Image8" runat="server" Width="300" Height="200"/></div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col col-sm-12"><asp:FileUpload ID="FileUpload8" runat="server" CssClass="form-control-file" /></div>
                                    </div>


                                      <div class="row form-group">
                                        <div class="col col-sm-12"><asp:Button ID="Button8" runat="server" Text="Upload" CssClass="btn btn-outline-primary btn-sm"  /></div>
                                    </div>


                            </div>
                         </div>
                       </div>
                     </div>
                   </div>



                  <%--Image 8--%>
                  <div class="col-sm-4">
                        <div class="card">
                            <div class="card-header">
                                <strong>Image 8</strong> <small> Products // size<450x500></small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                


                                     <div class="row form-group">
                                       <div class="col col-sm-12"><asp:Image ID="Image9" runat="server" Width="300" Height="200"/></div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col col-sm-12"><asp:FileUpload ID="FileUpload9" runat="server" CssClass="form-control-file" /></div>
                                    </div>


                                      <div class="row form-group">
                                        <div class="col col-sm-12"><asp:Button ID="Button9" runat="server" Text="Upload" CssClass="btn btn-outline-primary btn-sm"  /></div>
                                    </div>


                            </div>
                         </div>
                       </div>
                     </div>
                   </div>





                  <%--Image 9--%>
                  <div class="col-sm-4">
                        <div class="card">
                            <div class="card-header">
                                <strong>Image 9</strong> <small> Products // size<450x500></small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                


                                     <div class="row form-group">
                                       <div class="col col-sm-12"><asp:Image ID="Image10" runat="server" Width="300" Height="200"/></div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col col-sm-12"><asp:FileUpload ID="FileUpload10" runat="server" CssClass="form-control-file" /></div>
                                    </div>


                                      <div class="row form-group">
                                        <div class="col col-sm-12"><asp:Button ID="Button10" runat="server" Text="Upload" CssClass="btn btn-outline-primary btn-sm"  /></div>
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

   
               
               
               


        </div><!-- .animated -->
      </div><!-- .content -->
   

              


</div>


</asp:Content>
