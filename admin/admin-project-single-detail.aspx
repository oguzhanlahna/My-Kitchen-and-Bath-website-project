<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="admin-project-single-detail.aspx.cs" Inherits="mykb_modern.admin.admin_project_single_detail" %>
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

                    
                  <div class="col-xs-6 col-sm-6">
                        <div class="card">
                            <div class="card-header">
                                <strong>Header Part</strong> <small> Project</small>
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
                                        <label for="input-small" class=" form-control-label">Short Desc</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="input-sm form-control-sm form-control" TextMode="MultiLine" placeholder="Enter a short description"></asp:TextBox>
                                    </div>
                                </div>



                                <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Title</label>
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




                         <div class="col-xs-6 col-sm-6">
                        <div class="card">
                            <div class="card-header">
                                <strong>Project Details</strong> <small> Project-single</small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                
                                  <div class="row form-group">
                                    <div class="col col-sm-5">
                                        <label for="input-small" class=" form-control-label">Name</label>
                                    </div>
                                    <div class="col col-sm-6">
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a name"></asp:TextBox>
                                    </div>
                                </div>

                                 <div class="row form-group">
                                    <div class="col col-sm-5">
                                        <label for="input-small" class=" form-control-label">Client</label>
                                    </div>
                                    <div class="col col-sm-6">
                                        <asp:TextBox ID="TextBox4" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a client"></asp:TextBox>
                                    </div>
                                </div>



                                <div class="row form-group">
                                    <div class="col col-sm-5">
                                        <label for="input-small" class=" form-control-label">Location</label>
                                    </div>
                                    <div class="col col-sm-6">
                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a location"></asp:TextBox>
                                    </div>
                                </div>

                                 <div class="row form-group">
                                    <div class="col col-sm-5">
                                        <label for="input-small" class=" form-control-label">Year</label>
                                    </div>
                                    <div class="col col-sm-6">
                                        <asp:TextBox ID="TextBox6" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a year"></asp:TextBox>
                                    </div>
                                </div>

                                 <div class="row form-group">
                                    <div class="col col-sm-5">
                                        <label for="input-small" class=" form-control-label">Category</label>
                                    </div>
                                    <div class="col col-sm-6">
                                        <asp:TextBox ID="TextBox7" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a category name"></asp:TextBox>
                                    </div>
                                </div>

                                 <div class="row form-group">
                                    <div class="col col-sm-5">
                                        <label for="input-small" class=" form-control-label">Do you want to show Home page?</label>
                                    </div>
                                    <div class="col col-sm-6">
                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="input-sm form-control-sm form-control">
                                            <asp:ListItem>No</asp:ListItem>
                                            <asp:ListItem>Yes</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                 <div class="row form-group">
                                    <div class="col col-sm-5">
                                        <label for="input-small" class=" form-control-label">Do you want to show Project-Single page?</label>
                                    </div>
                                    <div class="col col-sm-6">
                                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="input-sm form-control-sm form-control">
                                            <asp:ListItem>No</asp:ListItem>
                                            <asp:ListItem>Yes</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                            </div>
                         </div>
                       </div>
                     </div>
                   </div>





                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                     <asp:Button ID="Button1" runat="server" Text="Save"  CssClass="btn btn-outline-primary btn-lg btn-block" OnClick="Button1_Click" />
                    








                                        <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">IMAGE CONTROLS</strong>
                            </div>


                               <div class="row">



                  <%--BIG IMAGE--%>
                  <div class="col-xs-3 col-sm-3">
                        <div class="card">
                            <div class="card-header">
                                <strong>Big Image</strong> <small> Project-Single // size<1200x800></small>
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
                                    </div>



                            </div>
                         </div>
                       </div>
                     </div>
                   </div>





                   <%--IMAGE 1--%>
                  <div class="col-xs-3 col-sm-3">
                        <div class="card">
                            <div class="card-header">
                                <strong>1.Image</strong> <small> Project-single // size<610x750></small>
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
                                        <div class="col col-sm-12"><asp:Button ID="Button4" runat="server" Text="Upload" CssClass="btn btn-outline-primary btn-sm" OnClick="Button4_Click" /></div>
                                    </div>


                            </div>
                         </div>
                       </div>
                     </div>
                   </div>


                  <%--IMAGE 2--%>
                  <div class="col-xs-3 col-sm-3">
                        <div class="card">
                            <div class="card-header">
                                <strong>2.Image</strong> <small> Project-single // size<610x750></small>
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
                                        <div class="col col-sm-12"><asp:Button ID="Button5" runat="server" Text="Upload" CssClass="btn btn-outline-primary btn-sm" OnClick="Button5_Click" /></div>
                                    </div>


                            </div>
                         </div>
                       </div>
                     </div>
                   </div>


                  <%--IMAGE 3--%>
                  <div class="col-xs-3 col-sm-3">
                        <div class="card">
                            <div class="card-header">
                                <strong>3.Image</strong> <small> Project-single // size<610x750></small>
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
                                        <div class="col col-sm-12"><asp:Button ID="Button6" runat="server" Text="Upload" CssClass="btn btn-outline-primary btn-sm" OnClick="Button6_Click"/></div>
                                    </div>


                            </div>
                         </div>
                       </div>
                     </div>
                   </div>




                  <%--Home Image--%>
                  <div class="col-xs-3 col-sm-3">
                        <div class="card">
                            <div class="card-header">
                                <strong>Image</strong> <small> Homepage // size<610x750></small>
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
                                        <div class="col col-sm-12"><asp:Button ID="Button7" runat="server" Text="Upload" CssClass="btn btn-outline-primary btn-sm" OnClick="Button7_Click" /></div>
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
