<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="blog-single.aspx.cs" Inherits="mykb_modern.blog_single" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



<div class="ttm-page-title-row" style="background-image: url(../../Site/Pages/Banners/Blog2.webp);">
    <div class="ttm-page-title-row-inner">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <div class="page-title-heading" >
                        <h2 style="color: #cda274;" class="title">Articles</h2>
                    </div>
                    <div class="breadcrumb-wrapper">
                        <div class="container">
                            <div class="breadcrumb-wrapper-inner">
                                <span>
                                    <a title="Go to Delmont." href="default.aspx" class="home"><i class="themifyicon ti-home"></i>&nbsp;&nbsp;Home</a>
                                </span>
                                <span class="ttm-bread-sep">&nbsp; / &nbsp;</span>
                                <span>Articles</span>
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

            
            <div class="ttm-row sidebar ttm-sidebar-right ttm-bgcolor-white pb-70 res-991-pb-30 overflow-hidden clearfix">
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-lg-8 content-area">
                            <!-- post -->
                            <article class="post ttm-blog-single clearfix">
                                 <!-- post-featured-wrapper -->
                                <div class="ttm-post-featured-wrapper ttm-featured-wrapper">
                                    <div class="ttm_single_image-wrapper text-lg-left text-center">
                                        <asp:Image ID="Image1" runat="server" width="100%" height="100%" CssClass="img-fluid"  ImageUrl='<%# Eval("blog_img") %>' />
                                    </div>
                                </div><!-- post-featured-wrapper end -->
                                <!-- ttm-blog-classic-content -->
                                <div class="ttm-blog-single-content">

                                    <div class="entry-content">
                                        <div class="ttm-box-desc-text">
                                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("blog_desc") %>'></asp:Literal>
                                            
                                            <blockquote>
                                            <p>We will meet with you one-on-one, design your kitchen remodeling or bathroom remodeling project, and finish the job on time while providing you with a fair, affordable price and a finished product guaranteed to meet with your satisfaction. We use state-of-the-art supplies and products so that you get the best possible result no matter what.</p>
                                            </blockquote>
                                            <div class="mt-15 mb-25">
                                            
                                            </div>
<%--                                            <div class="social-media-block">
                                                <div class="d-sm-flex justify-content-between">
                                                    <div class="ttm-social-share-wrapper mt-15">
                                                        <h6 class="font-weight-normal m-0 mr-2">Share:</h6>
                                                        <ul class="social-icons square">
                                                            <li class="social-facebook">
                                                                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                                            </li>
                                                            <li class="social-twitter">  
                                                                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                                            </li>
                                                            <li class="social-linkedin">
                                                                <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                                            </li>
                                                            <li class="social-pinterest">
                                                                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="mt-15">
                                                        <a class="ttm-btn ttm-btn-size-sm ttm-btn-shape-squar ttm-btn-style-fill ttm-btn-color-grey mr-2" href="#">Architecture</a>
                                                    </div>
                                                </div>
                                            </div>--%>

                                        </div>
                                    </div>
                                </div><!-- ttm-blog-classic-content end -->
                            </article><!-- post end -->
                        </div>
                        <div class="col-lg-4 widget-area sidebar-right widget_border">
                            <aside class="widget widget-search with-title">
                                <div role="search" class="search-form">
                                    <label>
                                    <span class="screen-reader-text">Search for:</span>
                                    <input type="search" class="input-text" placeholder="Search …" value="" name="s">
                                    </label>
                                    <button class="btn ttm-btn ttm-btn-size-md ttm-btn-shape-square ttm-btn-style-fill ttm-btn-color-skincolor" type="submit" value="Search"> <i class="fa fa-search" aria-hidden="true"></i> </button>
                                </div>
                            </aside>
<%--                            <aside class="widget widget-categories with-title">
                                <h3 class="widget-title">Categories</h3>
                                <ul>
                                    <li><a href="#">Decoration</a></li>
                                    <li><a href="#">Door Windows</a></li>
                                    <li><a href="#">Home Land</a></li>
                                    <li><a href="#">Roof Installation</a></li>
                                </ul>
                            </aside>--%>
<%--                            <aside class="widget widget-recent-post with-title">
                                <h3 class="widget-title">Recent Post</h3>
                                <ul class="widget-post ttm-recent-post-list">
                                    <li>
                                        <a href="blog-single.html">
                                            <img width="150" height="150" src="https://via.placeholder.com/150x150/808080?text=150x150+project-1-150x150.jpg" class="img-fluid" alt="post-img"></a>
                                        <div class="post-detail">
                                            <span class="post-date"><i class="fa fa-calendar"></i>June 5, 2021</span>
                                            <a href="blog-single.html">Things to Know When Choosing the Perfect Sofa</a>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="blog-single.html">
                                            <img width="150" height="150" src="https://via.placeholder.com/150x150/808080?text=150x150+project-3-150x150.jpg" class="img-fluid" alt="post-img"></a>
                                        <div class="post-detail">
                                            <span class="post-date"><i class="fa fa-calendar"></i>May 23, 2021</span>
                                            <a href="blog-single.html">Colour Schemes to Introduce Spring in Your Home</a>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="blog-single.html">
                                            <img width="150" height="150" src="https://via.placeholder.com/150x150/808080?text=150x150+project-2-150x150.jpg" class="img-fluid" alt="post-img"></a>
                                        <div class="post-detail">
                                            <span class="post-date"><i class="fa fa-calendar"></i>May 15, 2021</span>
                                            <a href="blog-single.html">4 Ways to Create Extra Space in Small Homes</a>
                                        </div>
                                    </li>
                                </ul>
                            </aside>--%>
<%--                            <aside class="widget tagcloud-widget">
                                <h3 class="widget-title">Tags</h3>
                                <div class="tagcloud">
                                    <a href="#" class="tag-cloud-link">Architecture</a>
                                    <a href="#" class="tag-cloud-link">Building</a>
                                    <a href="#" class="tag-cloud-link">Exterior</a>
                                    <a href="#" class="tag-cloud-link">interior</a>
                                    <a href="#" class="tag-cloud-link">Kitchen Style</a>
                                    <a href="#" class="tag-cloud-link">Plan</a>
                                    <a href="#" class="tag-cloud-link">Planning</a>
                                </div>
                            </aside>--%>
                            <aside class="widget widget-follow-us">
                                <h3 class="widget-title">Follow Us</h3>
                                <div class="ttm-social-share-links">
                                    <ul class="social-icons square">
                                        <li class="social-facebook">
                                            <a class="tooltip-top" target="_blank" href="https://www.facebook.com/mykandb/" data-tooltip="Facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                        </li>
                                        <li class="social-twitter">
                                            <a class="tooltip-top" target="_blank" href="https://twitter.com/mykandb" data-tooltip="Twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                        </li>
                                        <li class="social-linkedin">
                                            <a class="tooltip-top" target="_blank" href="https://www.linkedin.com/company/my-kitchen-and-bath" data-tooltip="Linkedin"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                        </li>
                                        <li class="social-pinterest">
                                            <a class="tooltip-top" target="_blank" href="https://tr.pinterest.com/MyKB1994/_created/" data-tooltip="Pinterest"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </aside>
                            <aside class="widget widget-banner">
                                <div class="ttm-col-bgcolor-yes ttm-bgcolor-darkgrey ttm-textcolor-white col-bg-img-seven ttm-col-bgimage-yes ttm-bg spacing-13">
                                    <div class="ttm-col-wrapper-bg-layer ttm-bg-layer">
                                        <div class="ttm-col-wrapper-bg-layer-inner"></div>
                                    </div>
                                    <div class="layer-content">
                                        <h3 class="widget-title">Need Help?</h3>
                                        <div class="widget-text">Creating your dream kitchen or bathroom has never been easier with My Kitchen and Bath!
                                            <div class="ttm-quicklink-box">
                                               <div class="ttm-lefticon-box">
                                                    <i class="fa fa fa-headphones"></i>
                                               </div>
                                               <div class="ttm-righttext-box">
                                                    <h3>Call Us On:</h3>
                                                    <p class="custom-heading">703-429-4323</p>
                                              </div>    
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </aside>




                           <aside class="widget widget-archive">
                                <h3 class="widget-title"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/projects.aspx">Gallery</asp:HyperLink></h3>
                                <div id="gallery-2" class="gallery-wrapper">




                                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2" OnItemCommand="Repeater2_ItemCommand">
                                        <ItemTemplate>
                                                       
        <figure class="gallery-item">
            <div class="gallery-icon landscape">
                <a href="projects.aspx">
                    <asp:Image runat="server" Width="100" Height="100" CssClass="img-fluid" ImageUrl='<%# Eval("pro_home_img") %>' AlternateText="Projects" />
                </a>
            </div>
        </figure>

                                        </ItemTemplate>
                                    </asp:Repeater>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:NewConnectionString %>' SelectCommand="SELECT TOP 9 * FROM [projects]">
    <SelectParameters>
        <asp:Parameter DefaultValue="yes" Name="home_top" Type="String"></asp:Parameter>
    </SelectParameters>
</asp:SqlDataSource>



                                </div>
                            </aside>

                        </div>
                    </div><!-- row end -->
                </div>
            </div>
            

        </div><!--site-main end-->



</asp:Content>
