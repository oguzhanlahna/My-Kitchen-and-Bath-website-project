<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="admin_contact.aspx.cs" Inherits="mykb_new.admin.admin_contact" %>
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
                                <h1>Contact</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="page-header float-right">
                            <div class="page-title">
                                <ol class="breadcrumb text-right">
                                    <li><asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-info" Target="_blank" NavigateUrl="https://www.mykitchenandbath.com/contact-us">View Page</asp:HyperLink> </li>
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







                   <%-- RIGHT PART--%>

                    <div class="col-xs-6 col-sm-6">
                        <div class="card">
                            <div class="card-header">
                                <strong>CONTACT</strong> <small> GET IN TOUCH</small>
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
                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="input-sm form-control-sm form-control" TextMode="MultiLine" placeholder="You can enter a description"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row form-group">
                                     <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Location</label>
                                    </div>
                                    <div class="col col-sm-5">
                                        <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" CssClass="input-sm form-control-sm form-control" placeholder="You can enter Location"></asp:TextBox>
                                    </div>
                                      <div class="col col-sm-5">
                                        <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" CssClass="input-sm form-control-sm form-control" placeholder="You can enter Location -2"></asp:TextBox>
                                    </div>
                                </div>




                                <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Phone</label>
                                    </div>
                                    <div class="col col-sm-5">
                                        <asp:TextBox ID="TextBox8" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="You can enter Phone"></asp:TextBox>
                                    </div>
                                  <div class="col col-sm-5">
                                        <asp:TextBox ID="TextBox11" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="You can enter Phone -2"></asp:TextBox>
                                    </div>
                                </div>



                                  <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">E-Mail</label>
                                    </div>
                                    <div class="col col-sm-5">
                                        <asp:TextBox ID="TextBox12" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="You can enter E-Mail"></asp:TextBox>
                                    </div>
                                                                          <div class="col col-sm-5">
                                        <asp:TextBox ID="TextBox13" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="You can enter E-Mail -2"></asp:TextBox>
                                    </div>
                                </div>





                                  <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Fax</label>
                                    </div>
                                    <div class="col col-sm-5">
                                        <asp:TextBox ID="TextBox14" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="You can enter Fax"></asp:TextBox>
                                    </div>
                                                                          <div class="col col-sm-5">
                                        <asp:TextBox ID="TextBox15" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="You can enter Fax -2"></asp:TextBox>
                                    </div>
                                </div>


                                 

                                <div class="row form-group">
                                    <div class="col col-sm-2">
                                        <label for="input-small" class=" form-control-label">Work Time</label>
                                    </div>
                                    <div class="col col-sm-10">
                                        <asp:TextBox ID="TextBox9" runat="server" CssClass="input-sm form-control-sm form-control" placeholder="You can enter working hours"></asp:TextBox><br />
                                    </div>
                                </div>

                                
                            </div>
                        </div>
                        <div class="card-footer">
                         <asp:Button ID="Button2" runat="server" Text="Save" CssClass="btn btn-primary btn-sm"  />
                         <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                           
                        </div> 



                            
                       </div>
                     </div>
                   </div>

                   <%-- RIGHT PART END--%>







             </div>


        </div><!-- .animated -->
      </div><!-- .content -->
   

              


</div>


</asp:Content>
