<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="project-single.aspx.cs" Inherits="mykb_modern.project_single" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


<div class="ttm-page-title-row" style="background-image: url(../../Site/Pages/Banners/FAQ.webp);">
    <div class="ttm-page-title-row-inner">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <div class="page-title-heading" >
                        <h2 style="color: #cda274;" class="title">Projects</h2>
                    </div>
                    <div class="breadcrumb-wrapper">
                        <div class="container">
                            <div class="breadcrumb-wrapper-inner">
                                <span>
                                    <a title="Go to Delmont." href="default.aspx" class="home"><i class="themifyicon ti-home"></i>&nbsp;&nbsp;Home</a>
                                </span>
                                <span class="ttm-bread-sep">&nbsp; / &nbsp;</span>
                                <span>Projects</span>
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

            
            <!-- project-single-section -->
            <section class="ttm-row project-single-section clearfix">
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="ttm-pf-single-content-wrapper-innerbox ttm-pf-view-top-image">
                                <div class="ttm-pf-single-content-wrapper">
                                    <!-- ttm_single_image-wrapper -->
                                    <div class="ttm_single_image-wrapper">
                                        <asp:Image ID="Image1" runat="server" CssClass="img-fluid" width="100%" height="100%" alt="portfolio-img" ImageUrl='<%# Eval("pro_big_img") %>'/>
                                    </div><!-- ttm_single_image-wrapper end -->
                                    <div class="ttm-pf-single-detail-box ttm-bgcolor-darkgrey ttm-textcolor-white">
                                        <h2 class="ttm-pf-detailbox-title">Project Details:</h2>
                                        <ul class="ttm-pf-detailbox-list">
                                            <li>
                                                <div class="ttm-pf-data-title">Project</div>
                                                <div class="ttm-pf-data-details"><asp:Literal ID="Literal1" runat="server" Text='<%# Eval("pro_name") %>'></asp:Literal></div>
                                            </li>
                                            <li>
                                                <div class="ttm-pf-data-title">Clients</div>
                                                <div class="ttm-pf-data-details"><asp:Literal ID="Literal2" runat="server" Text='<%# Eval("pro_client") %>'></asp:Literal></div>
                                            </li>
                                            <li>
                                                <div class="ttm-pf-data-title">Location</div>
                                                <div class="ttm-pf-data-details"><asp:Literal ID="Literal3" runat="server" Text='<%# Eval("pro_loc") %>'></asp:Literal></div>
                                            </li>
                                            <li>
                                                <div class="ttm-pf-data-title">Project Year</div>
                                                <div class="ttm-pf-data-details"><asp:Literal ID="Literal4" runat="server" Text='<%# Eval("pro_year") %>'></asp:Literal></div>
                                            </li>
                                        </ul>
                                        <div class="ttm-single-pf-footer">
                                            <div class="ttm-social-share-wrapper">
                                                <div class="ttm-social-share-title">Share Media:</div>
                                                <div class="ttm-social-share-links">
                                                    <ul class="social-icons square">
                                                        <li class="social-facebook">
                                                            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li class="social-twitter">  
                                                            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li class="social-google-plus">
                                                            <a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li class="social-pinterest">
                                                            <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="ttm-pf-single-content-area">
                                    <p> <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("pro_desc") %>'></asp:Literal></p>
                                    <div class="row mt-25 mb-30">
                                        <div class="col-lg-4 col-md-6 col-sm-12">
                                            <div class="ttm_single_image-wrapper mt-15 mb-15 res-991-mt-20">
                                                <asp:Image ID="Image2" runat="server" CssClass="img-fluid" width="100%" height="100%" alt="project-01" ImageUrl='<%# Eval("pro_img1") %>'/>
                                                <%--<img width="580" height="610" class="img-fluid" src="https://via.placeholder.com/610x750/808080?text=610x750+portfolio-01-580x610.jpg" alt="project-01">--%>
                                            </div>
                                        </div>
<%--                                        <div class="col-lg-4 col-md-6 col-sm-12">
                                            <div class="ttm_single_image-wrapper mt-15 mb-15 res-991-mt-20">
                                                <asp:Image ID="Image3" runat="server" CssClass="img-fluid" width="100%" height="100%" alt="project-01" ImageUrl='<%# Eval("pro_img2") %>'/>
                                                <%--<img width="580" height="610" class="img-fluid" src="https://via.placeholder.com/610x750/808080?text=610x750+portfolio-02-580x610.jpg" alt="project-02">--%>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6 col-sm-12">
                                            <div class="ttm_single_image-wrapper mt-15 mb-15 res-991-mt-20">
                                                <asp:Image ID="Image4" runat="server" CssClass="img-fluid" width="100%" height="100%" alt="project-01" ImageUrl='<%# Eval("pro_img3") %>'/>
                                                <%--<img width="580" height="610" class="img-fluid" src="https://via.placeholder.com/610x750/808080?text=610x750+portfolio-03-580x610.jpg" alt="project-03">--%>
                                            </div>
                                        </div>--%>
                                    </div>
                                    <div class="ttm-horizontal_sep width-100 mt-25 mb-25 res-991-mt-15"></div>
                                    <div class="row">
                                        <div class="col-lg-4 col-md-6 col-sm-12">
                                            <!-- featured-icon-box -->
                                            <div class="featured-icon-box icon-align-before-content icon-ver_align-top style6">
                                                <div class="featured-icon icon-with-bg-shape">
                                                    <div class="ttm-icon ttm-icon_element-fill ttm-icon ttm-icon_element-color-skincolor ttm-icon_element-size-md">
                                                        <i class="flaticon-computer"></i>
                                                    </div>
                                                </div>
                                                <div class="featured-content">
                                                    <div class="featured-title">
                                                        <h3>Designing</h3>
                                                    </div>
                                                    <div class="featured-desc">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor. </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6 col-sm-12">
                                            <!-- featured-icon-box -->
                                            <div class="featured-icon-box icon-align-before-content icon-ver_align-top style6">
                                                <div class="featured-icon icon-with-bg-shape">
                                                    <div class="ttm-icon ttm-icon_element-fill ttm-icon ttm-icon_element-color-skincolor ttm-icon_element-size-md">
                                                        <i class="flaticon-mechanic"></i>
                                                    </div>
                                                </div>
                                                <div class="featured-content">
                                                    <div class="featured-title">
                                                        <h3>Building</h3>
                                                    </div>
                                                    <div class="featured-desc">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor. </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6 col-sm-12">
                                            <!-- featured-icon-box -->
                                            <div class="featured-icon-box icon-align-before-content icon-ver_align-top style6">
                                                <div class="featured-icon icon-with-bg-shape">
                                                    <div class="ttm-icon ttm-icon_element-fill ttm-icon ttm-icon_element-color-skincolor ttm-icon_element-size-md">
                                                        <i class="flaticon-team"></i>
                                                    </div>
                                                </div>
                                                <div class="featured-content">
                                                    <div class="featured-title">
                                                        <h3>Inspecting</h3>
                                                    </div>
                                                    <div class="flaticon-licensing">
                                                        <p>Commercial heating are responsible for the heater repair and maintenance.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>                                 
                                </div>
                                <div class="ttm-pf-single-related-wrapper mb_15">
                                    <h2>Related Projects</h2>
                                    <div class="row">



                                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
                                            <ItemTemplate>


                                                
                                        <div class="ttm-box-col-wrapper col-lg-4 col-md-6 col-sm-6">
                                            <!-- featured-imagebox-portfolio -->
                                            <div class="featured-imagebox featured-imagebox-portfolio style3">
                                                <!-- featured-thumbnail -->
                                                <div class="featured-thumbnail"> 
                                                    <asp:Image ID="Image2" runat="server" CssClass="img-fluid" width="100%" height="100%" alt="image" ImageUrl='<%# Eval("pro_home_img") %>'/>
                                                    <%--<img width="610" height="750" class="img-fluid" src="https://via.placeholder.com/610x750/808080?text=610x750+portfolio-01-610x750.jpg" alt="image"> --%>
                                                </div>
                                                <!-- featured-thumbnail end-->
                                                <div class="featured-content-inner">
                                                    <div class="featured-content">
                                                        <div class="featured-title">
                                                            <h3><asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("pro_title") %>' CommandName="project-single" CommandArgument='<%# Eval("project_id")%>'></asp:LinkButton></a></h3>
                                                        </div>
                                                        <div class="featured-desc">
                                                            <p><asp:Literal ID="Literal6" runat="server" Text='<%# Eval("pro_mini_desc") %>'></asp:Literal></p>
                                                        </div>
                                                    </div>
                                                    <div class="ttm-footer">
                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="project-single" CommandArgument='<%# Eval("project_id")%>' CssClass="ttm-btn btn-inline ttm-btn-size-md ttm-icon-btn-right ttm-btn-color-dark">Read More
									<i class="la la-arrow-right"></i>
									</asp:LinkButton>
                                                    </div>
                                                </div>
                                            </div><!-- featured-imagebox-portfolio end-->
                                        </div>


                                            </ItemTemplate>
                                        </asp:Repeater>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:NewConnectionString %>' SelectCommand="SELECT TOP 9 * FROM [projects] ORDER BY [created_date] DESC">
    <SelectParameters>
        <asp:Parameter DefaultValue="yes" Name="home_top" Type="String"></asp:Parameter>
    </SelectParameters>
</asp:SqlDataSource>






                             
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- project-single-section end -->
            

        </div><!--site-main end-->


</asp:Content>
