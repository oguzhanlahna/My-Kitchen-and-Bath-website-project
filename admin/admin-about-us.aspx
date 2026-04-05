<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="admin-about-us.aspx.cs" Inherits="mykb_modern.admin.admin_about_us" %>
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
                                <h1>About Us</h1>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-8">
                        <div class="page-header float-right">
                            <div class="page-title">
                                <ol class="breadcrumb text-right">
                                    <li><asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-info" Target="_blank" NavigateUrl="https://www.mykitchenandbath.com/About-Us">View Page</asp:HyperLink> </li>
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
                                <strong class="card-title">Section 1</strong>
                            </div>
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
                                        <label for="input-small" class=" form-control-label">Title</label> 
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




                      <div class="col-md-6">
                        <div class="card">
                            <div class="card-header">
                                <strong>Line Part</strong> <small> Section 1</small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                


                                
                                <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Line1-</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a line"></asp:TextBox>
                                    </div>
                                </div>

                                                                <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Line2-</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox4" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a line"></asp:TextBox>
                                    </div>
                                </div>


                                                                <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Line3-</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a line"></asp:TextBox>
                                    </div>
                                </div>


                                                                <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Line4-</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox6" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a line"></asp:TextBox>
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
                                <strong>QUOTE 1</strong> <small> Section 2</small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
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
                     </div> <%--QUOTE1--%>


                       <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <strong>QUOTE 2</strong> <small> Section 2</small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
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
                     </div> <%--QUOTE2--%>








                      <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">Counter Section</strong>
                            </div>


                               <div class="row">



                  <%--Counter 1--%>
                  <div class="col-xs-3 col-sm-3">
                        <div class="card">
                            <div class="card-header">
                                <strong>1st Counter</strong> <small> Section</small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                

                                   <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Value</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox7" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a value"></asp:TextBox>
                                    </div>
                                </div>


                                
                                   <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Title</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine" CssClass="input-sm form-control-sm form-control" placeholder="Enter a title"></asp:TextBox>
                                    </div>
                                </div>



                            </div>
                         </div>
                       </div>
                     </div>
                   </div>





                   <%--Counter 2--%>
                  <div class="col-xs-3 col-sm-3">
                        <div class="card">
                            <div class="card-header">
                                <strong>2nd Counter</strong> <small> Section</small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                

                                   <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Value</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox9" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a value"></asp:TextBox>
                                    </div>
                                </div>


                                
                                   <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Title</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine" CssClass="input-sm form-control-sm form-control" placeholder="Enter a title"></asp:TextBox>
                                    </div>
                                </div>


                               


                            </div>
                         </div>
                       </div>
                     </div>
                   </div>


                  <%--Counter 3--%>
                  <div class="col-xs-3 col-sm-3">
                        <div class="card">
                            <div class="card-header">
                                <strong>3rd Counter</strong> <small> Section</small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                

                                   <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Value</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox11" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a value"></asp:TextBox>
                                    </div>
                                </div>


                                
                                   <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Title</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox12" runat="server" TextMode="MultiLine" CssClass="input-sm form-control-sm form-control" placeholder="Enter a title"></asp:TextBox>
                                    </div>
                                </div>





                            </div>
                         </div>
                       </div>
                     </div>
                   </div>


                  <%--Counter 4--%>
                  <div class="col-xs-3 col-sm-3">
                        <div class="card">
                            <div class="card-header">
                                <strong>4th Counter</strong> <small> Section</small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                

                                   <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Value</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox13" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a value"></asp:TextBox>
                                    </div>
                                </div>


                                
                                   <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Title</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox14" runat="server" TextMode="MultiLine" CssClass="input-sm form-control-sm form-control" placeholder="Enter a title"></asp:TextBox>
                                    </div>
                                </div>





                            </div>
                         </div>
                       </div>
                     </div>
                   </div>









                 






      




                           
						   


                               </div>

                        </div>
                    </div>  <%--Counter--%> 









                      <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <strong>QUOTE</strong> <small> Section Last</small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                  <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Title</label> 
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox15" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a title"></asp:TextBox>
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
                     </div>  <%--QUOTE3--%>








                  <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <strong>Title/Description</strong> <small> FAQ </small>
                            </div>
                        <div class="card-body">
                                <div class="card-body card-block">
                            <div class="form-horizontal">
                                
                                  <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Mini Title</label> 
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox16" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a mini title"></asp:TextBox>
                                    </div>
                                </div>

                                                                  <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Title</label> 
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox17" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="Enter a title"></asp:TextBox>
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





            <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-primary btn-sm" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>






                </div>
              </div>
    

































    
</asp:Content>
