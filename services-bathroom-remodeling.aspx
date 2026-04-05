<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="services-bathroom-remodeling.aspx.cs" Inherits="mykb_modern.services_bathroom_remodeling" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">






<div class="ttm-page-title-row" style="background-image: url(../../Site/Pages/Banners/Services-Bathroom.webp);">
    <div class="ttm-page-title-row-inner">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <div class="page-title-heading" >
                        <h2 style="color: #cda274;" class="title">Bathroom Remodeling</h2>
                    </div>
                    <div class="breadcrumb-wrapper">
                        <div class="container">
                            <div class="breadcrumb-wrapper-inner">
                                <span>
                                    <a title="Go to Delmont." href="default.aspx" class="home"><i class="themifyicon ti-home"></i>&nbsp;&nbsp;Home</a>
                                </span>
                                <span class="ttm-bread-sep">&nbsp; / &nbsp;</span>
                                <span>Bathroom Remodeling</span>
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

            <!-- sidebar -->
            <div class="ttm-row sidebar ttm-sidebar-left ttm-bgcolor-white clearfix">
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-lg-4 widget-area sidebar-left">
                            <aside class="widget widget-nav-menu">
                                <h3 class="widget-title">More Services</h3>
                                <ul class="widget-menu">
                                    <li><a href="services-kitchen-remodeling.aspx">Kitchen Remodeling</a></li>
                                    <li class="active"><a href="#">Bathroom Remodeling</a></li>
                                    <li><a href="services-basement-remodeling.aspx">Basement Remodeling</a></li>
                                    <li><a href="services-custom-closets.aspx">Custom Closets</a></li>
                                    <li><a href="services-blinds-shades.aspx">Blinds & Shades </a></li>
                                    <li><a href="services-flooring.aspx">Flooring</a></li>
                                    <li><a href="services-outdoor-kitchen.aspx">Outdoor Kitchen</a></li>
                                </ul>
                            </aside>
                                                       <aside class="widget contact-widget with-title">
                                <h3 class="widget-title">Vienna Showroom</h3>      
                                <div class="featured-icon-box icon-align-before-content icon-ver_align-top style1">
                                    <div class="featured-icon">
                                        <div class="ttm-icon ttm-icon_element-onlytxt ttm-icon_element-color-skincolor ttm-icon_element-size-xs">
                                            <i class="flaticon-call"></i>
                                        </div>
                                    </div>
                                    <div class="featured-content">
                                        <div class="featured-title">
                                            <h3>Phone Number</h3>
                                        </div>
                                        <div class="featured-desc">
                                            <asp:HyperLink ID="HyperLink30" runat="server" NavigateUrl="tel:7035370857" Text='<%# Eval("showroom1_phone") %>'></asp:HyperLink>
                                        </div>
                                    </div>
                                </div>
                                <div class="featured-icon-box icon-align-before-content icon-ver_align-top style1">
                                    <div class="featured-icon">
                                        <div class="ttm-icon ttm-icon_element-onlytxt ttm-icon_element-color-skincolor ttm-icon_element-size-xs">
                                            <i class="flaticon flaticon-email"></i>
                                        </div>
                                    </div>
                                    <div class="featured-content">
                                        <div class="featured-title">
                                            <h3>Email Address</h3>
                                        </div>
                                        <div class="featured-desc" style=" font-size: 14px;">
                                            <asp:HyperLink ID="HyperLink31" runat="server" NavigateUrl="mailto:vienna@mykitchenandbath.com" Text='<%# Eval("showroom1_mail") %>'></asp:HyperLink>
                                        </div>
                                    </div>
                                </div>
                                <div class="featured-icon-box icon-align-before-content icon-ver_align-top style1">
                                    <div class="featured-icon">
                                        <div class="ttm-icon ttm-icon_element-onlytxt ttm-icon_element-color-skincolor ttm-icon_element-size-xs">
                                            <i class="flaticon-location"></i>
                                        </div>
                                    </div>
                                    <div class="featured-content">
                                        <div class="featured-title">
                                            <h3>Location</h3>
                                        </div>
                                        <div class="featured-desc">
                                           <asp:HyperLink ID="HyperLink32" runat="server" NavigateUrl="https://www.google.com/maps?ll=38.901681,-77.266941&z=14&t=m&hl=en&gl=US&mapclient=embed&cid=13182877926552350715" Text='<%# Eval("showroom1_location") %>'></asp:HyperLink>
                                        </div>
                                    </div>
                                </div>
                            </aside>

                             <aside class="widget contact-widget with-title">
                                <h3 class="widget-title">Herndon Showroom</h3>      
                                <div class="featured-icon-box icon-align-before-content icon-ver_align-top style1">
                                    <div class="featured-icon">
                                        <div class="ttm-icon ttm-icon_element-onlytxt ttm-icon_element-color-skincolor ttm-icon_element-size-xs">
                                            <i class="flaticon-call"></i>
                                        </div>
                                    </div>
                                    <div class="featured-content">
                                        <div class="featured-title">
                                            <h3>Phone Number</h3>
                                        </div>
                                        <div class="featured-desc">
                                            <asp:HyperLink ID="HyperLink33" runat="server" NavigateUrl="tel:7034294323" Text='<%# Eval("showroom2_phone") %>'></asp:HyperLink>
                                           
                                        </div>
                                    </div>
                                </div>
                                <div class="featured-icon-box icon-align-before-content icon-ver_align-top style1">
                                    <div class="featured-icon">
                                        <div class="ttm-icon ttm-icon_element-onlytxt ttm-icon_element-color-skincolor ttm-icon_element-size-xs">
                                            <i class="flaticon flaticon-email"></i>
                                        </div>
                                    </div>
                                    <div class="featured-content">
                                        <div class="featured-title">
                                            <h3>Email Address</h3>
                                        </div>
                                        <div class="featured-desc">
                                            <asp:HyperLink ID="HyperLink34" runat="server" NavigateUrl="mailto:info@mykitchenandbath.com" Text='<%# Eval("showroom2_mail") %>'></asp:HyperLink>
                                        </div>
                                    </div>
                                </div>
                                <div class="featured-icon-box icon-align-before-content icon-ver_align-top style1">
                                    <div class="featured-icon">
                                        <div class="ttm-icon ttm-icon_element-onlytxt ttm-icon_element-color-skincolor ttm-icon_element-size-xs">
                                            <i class="flaticon-location"></i>
                                        </div>
                                    </div>
                                    <div class="featured-content">
                                        <div class="featured-title">
                                            <h3>Location</h3>
                                        </div>
                                        <div class="featured-desc">
                                            <asp:HyperLink ID="HyperLink35" runat="server" NavigateUrl="https://www.google.com/maps/place/My+Kitchen+and+Bath/@38.957069,-77.374354,14z/data=!4m6!3m5!1s0x89b64806ed74c613:0xcd655ecfe8cb3354!8m2!3d38.957069!4d-77.374354!16s%2Fg%2F11bychtkd5?hl=en&entry=ttu" Text='<%# Eval("showroom1_location") %>'></asp:HyperLink>
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
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:NewConnectionString %>' SelectCommand="SELECT TOP 9 * FROM [projects] ORDER BY [created_date] DESC">
    <SelectParameters>
        <asp:Parameter DefaultValue="yes" Name="home_top" Type="String"></asp:Parameter>
    </SelectParameters>
</asp:SqlDataSource>



                                </div>
                            </aside>



                          </div>

                        <div class="col-lg-8 content-area">
                            <article class="ttm-service-single-content-area">
                                <h2><asp:Literal ID="Literal1" runat="server" Text='<%# Eval("ser_title") %>'></asp:Literal></h2> <%--title--%>
                                <!-- service-featured-wrapper -->
                                <div class="ttm-service-featured-wrapper ttm-featured-wrapper">
                                    <div class="ttm_single_image-wrapper pt-20 mb-20 res-991-mb-30">
                                        <asp:Image ID="Image1" runat="server" width="799" height="350" CssClass="img-fluid" alt="project-9" ImageUrl='<%# Eval("big_image_file") %>'/> <%-- big image--%>
                                        <%--<img width="799" height="350" class="img-fluid" src="https://via.placeholder.com/799x350/808080?text=799x350+single-img-09.png" alt="project-9">--%>
                                    </div>
                                </div><!-- service-featured-wrapper end -->
                                <!-- ttm-service-classic-content -->
                                <div class="ttm-service-classic-content">
                                    <p><asp:Literal ID="Literal2" runat="server" Text='<%# Eval("ser_desc") %>'></asp:Literal></p> <%--description--%>




                                    <div class="ttm-horizontal_sep width-100 mt-30 mb-30 res-991-mt-15"></div>
                                    <div class="row">

                                                                                <div class="col-md-5">
                                            <div class="ttm_single_image-wrapper res-767-pt-30">
                                               <asp:Image ID="Image4" runat="server" width="100%" height="100%" CssClass="img-fluid" alt="project-9" ImageUrl='<%# Eval("image1_file") %>' />
                                            </div>
                                        </div>

                                        <div class="col-md-7">
                                            <h2><asp:Literal ID="Literal23" runat="server" Text='<%# Eval("image1_title") %>'></asp:Literal></h2>
                                            <div id="content" class="overflow-hidden"> <asp:Literal ID="Literal24" runat="server" Text='<%# Eval("image1_desc") %>'></asp:Literal> </div>
                                            <a class="ttm-btn ttm-btn-size-md ttm-btn-shape-squar ttm-btn-style-border ttm-icon-btn-right ttm-btn-color-darkgrey mt-20" href="https://mykb.typeform.com/to/JmCY9mky?typeform-source=www.ctu-consulting.com">Get A Quote</a>
                                            
                                        </div>

                                    </div>
                                    <div class="ttm-horizontal_sep width-100 mt-30 mb-30"></div>
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="ttm_single_image-wrapper res-767-pb-30">
                                                <asp:Image ID="Image5" runat="server" width="100%" height="100%" CssClass="img-fluid" alt="project-9" ImageUrl='<%# Eval("image2_file") %>' />
                                            </div>
                                        </div>
                                        <div class="col-md-7">
                                            <h2><asp:Literal ID="Literal25" runat="server" Text='<%# Eval("image2_title") %>'></asp:Literal></h2>
                                            <div id="content1" class="overflow-hidden"> <asp:Literal ID="Literal26" runat="server" Text='<%# Eval("image2_desc") %>'></asp:Literal> </div>
                                            <a class="ttm-btn ttm-btn-size-md ttm-btn-shape-squar ttm-btn-style-border ttm-icon-btn-right ttm-btn-color-darkgrey mt-20" href="https://mykb.typeform.com/to/JmCY9mky?typeform-source=www.ctu-consulting.com">Get A Quote</a>
                                            
                                        </div>
                                    </div>



                                    <div class="pt-30">
                                        <h2>Words From Our Customers</h2>
                                    </div>
                                    <!--row-->
                                    <div class="row slick_slider slick-dots-style2" data-slick='{"slidesToShow": 1, "slidesToScroll": 1, "arrows":false, "autoplay":false, "dots":false, "infinite":true, "responsive":[{"breakpoint":1199,"settings": {"slidesToShow": 3}}, {"breakpoint":992,"settings":{"slidesToShow": 2}},{"breakpoint":620,"settings":{"slidesToShow": 1}}]}'>
                                       
                          <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>


                          <div class="col-lg-12">
                            <!--testimonials-->
                            <div class="testimonials style1"> 
                                <div class="testimonials-inner-item">
                                    <div class="testimonial-content">
                                        <div class="ttm-ratting-star">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <blockquote><asp:Literal ID="Literal44" runat="server" Text='<%# Eval("review_comment") %>'></asp:Literal></blockquote>
                                        <div class="testimonial-avatar">
                                            <div class="testimonial-caption">
                                                <h3><asp:Literal ID="Literal45" runat="server" Text='<%# Eval("review_client") %>'></asp:Literal></h3>
                                            </div>
                                        </div>
                                    </div>
                                </div> 
                            </div><!--testimonials end-->
                        </div>


                            </ItemTemplate>
                        </asp:Repeater>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:NewConnectionString %>' SelectCommand="SELECT * FROM [reviews]"></asp:SqlDataSource>

                                    </div><!--row end-->










<!-- procedure-section HOME PART 4 OUR EASY 5 STEPS -->
        <section class="ttm-row procedure-section clearfix">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-md-8 col-sm-10 m-auto">
                        <!-- section title -->
                        <div class="section-title title-style-center_text">
                            <div class="title-header">
                                <h3>
                                    <asp:Literal ID="Literal29" runat="server" Text='<%# Eval("mini_title") %>'></asp:Literal></h3>
                                <h2 class="title">
                                    <asp:Literal ID="Literal30" runat="server" Text='<%# Eval("title") %>'></asp:Literal></h2>
                            </div>
                            <p>
                                <asp:Literal ID="Literal31" runat="server" Text='<%# Eval("description") %>'></asp:Literal>
                            </p>
                        </div>
                        <!-- section title end -->
                    </div>
                </div>
                <!-- row -->
                <div class="col-lg-12">
                    <div class="featuredbox-number processbox">
                        <div class="row justify-content-center">
                            <!-- Added justify-content-center class  Our Easy 5 Step of Process -->
                            <div class="col-lg-2">
                                <!-- featured-imagebox -->
                                <div class="featured-icon-box icon-align-top-content style4">
                                    <div class="featured-icon">
                                        <div class="ttm-icon ttm-icon_element-border ttm-icon_element-color-skincolor ttm-icon_element-size-xl ttm-icon_element-style-rounded">
                                            <i class="flaticon-contact"></i>
                                            <span class="ttm-num"></span>
                                        </div>
                                    </div>
                                    <div class="featured-content">
                                        <div class="featured-title">
                                            <h3>
                                                <asp:Literal ID="Literal32" runat="server" Text='<%# Eval("icon1_title") %>'></asp:Literal></h3>
                                        </div>
                                        <div class="featured-desc">
                                            <p>
                                                <asp:Literal ID="Literal33" runat="server" Text='<%# Eval("icon1_desc") %>'></asp:Literal>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <!-- featured-imagebox end-->
                            </div>
                            <div class="col-lg-2">
                                <!-- featured-imagebox -->
                                <div class="featured-icon-box icon-align-top-content style4">
                                    <div class="featured-icon">
                                        <div class="ttm-icon ttm-icon_element-border ttm-icon_element-color-skincolor ttm-icon_element-size-xl ttm-icon_element-style-rounded">
                                            <i class="flaticon-kitchen"></i>
                                            <span class="ttm-num"></span>
                                        </div>
                                    </div>
                                    <div class="featured-content">
                                        <div class="featured-title">
                                            <h3>
                                                <asp:Literal ID="Literal34" runat="server" Text='<%# Eval("icon2_title") %>'></asp:Literal></h3>
                                        </div>
                                        <div class="featured-desc">
                                            <p>
                                                <asp:Literal ID="Literal35" runat="server" Text='<%# Eval("icon2_desc") %>'></asp:Literal>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <!-- featured-imagebox end-->
                            </div>
                            <div class="col-lg-2">
                                <!-- featured-imagebox -->
                                <div class="featured-icon-box icon-align-top-content style4">
                                    <div class="featured-icon">
                                        <div class="ttm-icon ttm-icon_element-border ttm-icon_element-color-skincolor ttm-icon_element-size-xl ttm-icon_element-style-rounded">
                                            <i class="flaticon-parquet"></i>
                                            <span class="ttm-num"></span>
                                        </div>
                                    </div>
                                    <div class="featured-content">
                                        <div class="featured-title">
                                            <h3>
                                                <asp:Literal ID="Literal36" runat="server" Text='<%# Eval("icon3_title") %>'></asp:Literal></h3>
                                        </div>
                                        <div class="featured-desc">
                                            <p>
                                                <asp:Literal ID="Literal37" runat="server" Text='<%# Eval("icon3_desc") %>'></asp:Literal>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <!-- featured-imagebox end-->
                            </div>
                            <div class="col-lg-2">
                                <!-- featured-imagebox -->
                                <div class="featured-icon-box icon-align-top-content style4">
                                    <div class="featured-icon">
                                        <div class="ttm-icon ttm-icon_element-border ttm-icon_element-color-skincolor ttm-icon_element-size-xl ttm-icon_element-style-rounded">
                                            <i class="flaticon-home"></i>
                                            <span class="ttm-num"></span>
                                        </div>
                                    </div>
                                    <div class="featured-content">
                                        <div class="featured-title">
                                            <h3>
                                                <asp:Literal ID="Literal38" runat="server" Text='<%# Eval("icon4_title") %>'></asp:Literal></h3>
                                        </div>
                                        <div class="featured-desc">
                                            <p>
                                                <asp:Literal ID="Literal39" runat="server" Text='<%# Eval("icon4_desc") %>'></asp:Literal>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <!-- featured-imagebox end-->
                            </div>
                            <div class="col-lg-2">
                                <!-- featured-imagebox -->
                                <div class="featured-icon-box icon-align-top-content style4">
                                    <div class="featured-icon">
                                        <div class="ttm-icon ttm-icon_element-border ttm-icon_element-color-skincolor ttm-icon_element-size-xl ttm-icon_element-style-rounded">
                                            <i class="flaticon-list"></i>
                                            <span class="ttm-num"></span>
                                        </div>
                                    </div>
                                    <div class="featured-content">
                                        <div class="featured-title">
                                            <h3>
                                                <asp:Literal ID="Literal40" runat="server" Text='<%# Eval("icon5_title") %>'></asp:Literal></h3>
                                        </div>
                                        <div class="featured-desc">
                                            <p>
                                                <asp:Literal ID="Literal41" runat="server" Text='<%# Eval("icon5_desc") %>'></asp:Literal>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <!-- featured-imagebox end-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


             <!--last-section-->
            <section class="ttm-row faq-section bg-layer-equal-height pt-90 clearfix">
                <div class="container">
                    <!--row-->
                    <div class="row">
                        <div class="col-lg-12 m-auto">
                            <!--section-title-->
                            <div class="section-title title-style-center_text">
                                <div class="title-header">
                                    <h3></h3>
                                    <h2 class="title"><asp:Literal ID="Litera27" runat="server" Text='<%# Eval("ser_title2") %>'></asp:Literal> <%--title--%></h2>
                                </div>
                                <p><asp:Literal ID="Literal28" runat="server" Text='<%# Eval("ser_desc2") %>'></asp:Literal></p> <%--description--%>
                            </div><!--section-title end-->
                        </div>
                    </div><!--row end-->
                    <!--row-->
                </div>
            </section><!--last-section end-->





                                </div><!-- ttm-service-classic-content end -->
                            </article>
                        </div>







                    </div><!-- row end -->
                </div>
            </div>
            <!-- sidebar end -->
            

        </div><!--site-main end-->
</asp:Content>
