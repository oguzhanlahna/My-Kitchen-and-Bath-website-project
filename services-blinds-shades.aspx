<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="services-blinds-shades.aspx.cs" Inherits="mykb_modern.services_blinds_shades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <style>
    .justify-content-center .row {
        justify-content: space-between;
    }
</style>

<style> /*ReadMore and ReadLess algorithm*/ 
  .overflow-hidden {
    overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 7; /* İlk başta görüntülenecek satır sayısı */
    -webkit-box-orient: vertical;
    line-height: 1.8em; /* Satır yüksekliği */
    max-height: 30.4em; /* Satır sayısı * satır yüksekliği */
  }
</style>



<div class="ttm-page-title-row" style="background-image: url(../../Site/Pages/Banners/Services-Blinds-Shades.webp);">
    <div class="ttm-page-title-row-inner">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <div class="page-title-heading" >
                        <h2 style="color: #cda274;" class="title">Blinds & Shades</h2>
                    </div>
                    <div class="breadcrumb-wrapper">
                        <div class="container">
                            <div class="breadcrumb-wrapper-inner">
                                <span>
                                    <a title="Go to Delmont." href="default.aspx" class="home"><i class="themifyicon ti-home"></i>&nbsp;&nbsp;Home</a>
                                </span>
                                <span class="ttm-bread-sep">&nbsp; / &nbsp;</span>
                                <span>Blinds & Shades</span>
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
                                    <li><a href="services-bathroom-remodeling.aspx">Bathroom Remodeling</a></li>
                                    <li><a href="services-basement-remodeling.aspx">Basement Remodeling</a></li>
                                    <li><a href="services-custom-closets.aspx">Custom Closets</a></li>
                                    <li class="active"><a href="#">Blinds & Shades</a></li>
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




                                        <div class="mt-15 mb-25">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="ttm_single_image-wrapper res-767-pb-30">
                                                             <asp:Image ID="Image6" runat="server" width="420" height="240" CssClass="img-fluid" alt="project-9" ImageUrl='<%# Eval("image5_file") %>' />
<%--                                                            <img width="420" height="240" class="img-fluid" src="https://via.placeholder.com/420x240/808080?text=420x240+single-img-12.png" alt="single_image-12">--%>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 pl-5 res-991-pl-15">
                                                        <ul class="ttm-list ttm-list-style-icon ttm-list-icon-color-skincolor style2">
                                                            <li><i class="flaticon-checked"></i>
                                                                <span class="ttm-list-li-content"><asp:Literal ID="Literal7" runat="server" Text='<%# Eval("image1_line1") %>'></asp:Literal></span>
                                                            </li>
                                                            <li><i class="flaticon-checked"></i>
                                                                <span class="ttm-list-li-content"><asp:Literal ID="Literal8" runat="server" Text='<%# Eval("image1_line2") %>'></asp:Literal></span>
                                                            </li>
                                                            <li><i class="flaticon-checked"></i>
                                                                <span class="ttm-list-li-content"><asp:Literal ID="Literal9" runat="server" Text='<%# Eval("image1_line3") %>'></asp:Literal></span>
                                                            </li>
                                                            <li><i class="flaticon-checked"></i>
                                                               <span class="ttm-list-li-content"><asp:Literal ID="Literal10" runat="server" Text='<%# Eval("image1_line4") %>'></asp:Literal></span>
                                                            </li>
                                                            <li><i class="flaticon-checked"></i>
                                                                <span class="ttm-list-li-content"><asp:Literal ID="Literal11" runat="server" Text='<%# Eval("image1_line5") %>'></asp:Literal></span>
                                                            </li>
                                                            <li><i class="flaticon-checked"></i>
                                                                <span class="ttm-list-li-content"><asp:Literal ID="Literal12" runat="server" Text='<%# Eval("image2_line1") %>'></asp:Literal></span>
                                                            </li>
                                                            <li><i class="flaticon-checked"></i>
                                                                <span class="ttm-list-li-content"><asp:Literal ID="Literal13" runat="server" Text='<%# Eval("image2_line2") %>'></asp:Literal></span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>                                               
                                            </div












                                    <div class="ttm-horizontal_sep width-100 mt-30 mb-30"></div>

                                    <div class="ttm-horizontal_sep width-100 mt-30 mb-30 res-991-mt-15"></div>
                                    <div class="row">
                                                                                <div class="col-md-5">
                                            <div class="ttm_single_image-wrapper res-767-pt-30">
                                               <asp:Image ID="Image2" runat="server" width="100%" height="100%" CssClass="img-fluid" alt="project-9" ImageUrl='<%# Eval("image1_file") %>' />
                                            </div>
                                        </div>

                                        <div class="col-md-7">
                                            <h2><asp:Literal ID="Literal23" runat="server" Text='<%# Eval("image1_title") %>'></asp:Literal></h2>
                                            <div id="content" class="overflow-hidden"> <asp:Literal ID="Literal24" runat="server" Text='<%# Eval("image1_desc") %>'></asp:Literal> </div>
                                            <a class="ttm-btn ttm-btn-size-md ttm-btn-shape-squar ttm-btn-style-border ttm-icon-btn-right ttm-btn-color-darkgrey mt-20" href="https://nationsblinds.com/">Read More</a>
                                            
                                        </div>

                                    </div>
                                    <div class="ttm-horizontal_sep width-100 mt-30 mb-30"></div>
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="ttm_single_image-wrapper res-767-pb-30">
                                                <asp:Image ID="Image3" runat="server" width="100%" height="100%" CssClass="img-fluid" alt="project-9" ImageUrl='<%# Eval("image2_file") %>' />
                                            </div>
                                        </div>
                                        <div class="col-md-7">
                                            <h2><asp:Literal ID="Literal25" runat="server" Text='<%# Eval("image2_title") %>'></asp:Literal></h2>
                                            <div id="content1" class="overflow-hidden"> <asp:Literal ID="Literal26" runat="server" Text='<%# Eval("image2_desc") %>'></asp:Literal> </div>
                                            <a class="ttm-btn ttm-btn-size-md ttm-btn-shape-squar ttm-btn-style-border ttm-icon-btn-right ttm-btn-color-darkgrey mt-20" href="https://nationsblinds.com/">Read More</a>
                                            
                                        </div>
                                    </div>


                                   <div class="ttm-horizontal_sep width-100 mt-30 mb-30 res-991-mt-15"></div>
                                    <div class="row">
                                                                                <div class="col-md-5">
                                            <div class="ttm_single_image-wrapper res-767-pt-30">
                                               <asp:Image ID="Image4" runat="server" width="100%" height="100%" CssClass="img-fluid" alt="project-9" ImageUrl='<%# Eval("image3_file") %>' />
                                            </div>
                                        </div>

                                        <div class="col-md-7">
                                            <h2><asp:Literal ID="Literal3" runat="server" Text='<%# Eval("image3_title") %>'></asp:Literal></h2>
                                            <div id="content2" class="overflow-hidden"> <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("image3_desc") %>'></asp:Literal> </div>
                                            <a class="ttm-btn ttm-btn-size-md ttm-btn-shape-squar ttm-btn-style-border ttm-icon-btn-right ttm-btn-color-darkgrey mt-20" href="https://nationsblinds.com/">Read More</a>>
                                            
                                        </div>

                                    </div>
                                    <div class="ttm-horizontal_sep width-100 mt-30 mb-30"></div>
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="ttm_single_image-wrapper res-767-pb-30">
                                                <asp:Image ID="Image5" runat="server" width="100%" height="100%" CssClass="img-fluid" alt="project-9" ImageUrl='<%# Eval("image4_file") %>' />
                                            </div>
                                        </div>
                                        <div class="col-md-7">
                                            <h2><asp:Literal ID="Literal5" runat="server" Text='<%# Eval("image4_title") %>'></asp:Literal></h2>
                                            <div id="content3" class="overflow-hidden"> <asp:Literal ID="Literal6" runat="server" Text='<%# Eval("image4_desc") %>'></asp:Literal> </div>
                                            <a class="ttm-btn ttm-btn-size-md ttm-btn-shape-squar ttm-btn-style-border ttm-icon-btn-right ttm-btn-color-darkgrey mt-20" href="https://nationsblinds.com/">Read More</a>
                                            
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










                                </div><!-- ttm-service-classic-content end -->
                            </article>
                        </div>







                    </div><!-- row end -->
                </div>
            </div>
            <!-- sidebar end -->
            

        </div><!--site-main end-->

</asp:Content>
