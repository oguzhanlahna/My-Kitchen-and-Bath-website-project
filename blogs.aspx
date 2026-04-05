<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="blogs.aspx.cs" Inherits="mykb_modern.blogs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="ttm-page-title-row" style="background-image: url(../../Site/Pages/Banners/blog.webp);">
    <div class="ttm-page-title-row-inner">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <div class="page-title-heading" >
                        <h2 style="color: #cda274;" class="title">Blogs</h2>
                    </div>
                    <div class="breadcrumb-wrapper">
                        <div class="container">
                            <div class="breadcrumb-wrapper-inner">
                                <span>
                                    <a title="Go to Delmont." href="default.aspx" class="home"><i class="themifyicon ti-home"></i>&nbsp;&nbsp;Home</a>
                                </span>
                                <span class="ttm-bread-sep">&nbsp; / &nbsp;</span>
                                <span>Blogs</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


        <!--site-main start-->
        <div class="site-main">

            
            <!--grid-section-->
            <section class="ttm-row grid-section clearfix">
                <div class="container">
                    <div class="row ttm-boxes-spacing-25px">





                        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand" DataSourceID="SqlDataSource1">
                            <ItemTemplate>



                        <div class="ttm-box-col-wrapper col-lg-4">
                        <!--featured-imagebox-blog-->
                        <div class="featured-imagebox featured-imagebox-post style1">
                            <div class="featured-thumbnail">
                                <asp:Image ID="Image2" runat="server" CssClass="img-fluid" ImageUrl='<%# Eval("blog_home_img") %>' width="100%" height="100%" />
                            </div>
                            <div class="featured-content">
                                <div class="ttm-box-post-date">
                                    <span class="ttm-entry-date">


                                        <div class="entry-date"><asp:Literal ID="Literal58" runat="server" Text='<%# Eval("blog_day") %>'></asp:Literal>
                                        <span class="entry-month entry-year"><asp:Literal ID="Literal59" runat="server" Text='<%# Eval("blog_month") %>'></asp:Literal></span>
                                        </div>


                                    </span>
                                </div>
                                <div class="featured-title">
                                    
                                    <h3> <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("blog_title") %>' CommandName="blog-single" CommandArgument='<%# Eval("blog_id")%>'></asp:LinkButton>
                                    </h3>
                                </div>
                                <div class="ttm-postbox-desc-footer">
                                    
                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="blog-single" CommandArgument='<%# Eval("blog_id")%>' CssClass="ttm-btn ttm-btn-size-md ttm-btn-shape-squar ttm-btn-style-border ttm-icon-btn-right ttm-btn-color-darkgrey">Read More
                                     </asp:LinkButton>

                                    
                                    
                                </div>
                            </div>
                        </div>
                        <!--featured-imagebox-post end-->
                        </div>





                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:NewConnectionString %>' SelectCommand="SELECT * FROM [blogs]"></asp:SqlDataSource>





















                    </div>
                </div>
            </section>
            <!--grid-section end-->
            

        </div><!--site-main end-->




</asp:Content>
