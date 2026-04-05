<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="mykb_modern.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


 
<div class="ttm-page-title-row" style="background-image: url(../../Site/Pages/Banners/About-Us.webp);">
    <div class="ttm-page-title-row-inner">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <div class="page-title-heading" >
                        <h2 style="color: #cda274;" class="title">About Us</h2>
                    </div>
                    <div class="breadcrumb-wrapper">
                        <div class="container">
                            <div class="breadcrumb-wrapper-inner">
                                <span>
                                    <a title="Go to Delmont." href="default.aspx" class="home"><i class="themifyicon ti-home"></i>&nbsp;&nbsp;Home</a>
                                </span>
                                <span class="ttm-bread-sep">&nbsp; / &nbsp;</span>
                                <span>About Us</span>
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

            <!--welcome-section-->
            <section class="ttm-row welcome-section clearfix">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-7 col-md-8">
                            <div class="d-flex">
                                <div class="col">
                                    <!-- ttm_single_image-wrapper -->
                                    <div class="ttm_single_image-wrapper pt-50">
                                        <img width="320" height="500" class="img-fluid" src="Site/Pages/About-Us/sol.webp" alt="single_02">
                                    </div>
                                </div>
                                <div class="col">
                                    <!-- ttm_single_image-wrapper -->
                                    <div class="ttm_single_image-wrapper">
                                        <img width="320" height="500" class="img-fluid" src="Site/Pages/About-Us/sag.webp" alt="single_03">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-12">
                            <div class="pt-40 res-991-pt-0 res-991-mt-45">
                                <!-- section title -->
                                <div class="section-title">
                                    <div class="title-heade">
                                        <h3><asp:Literal ID="Literal1" runat="server" Text='<%# Eval("about_mini_title") %>'></asp:Literal></h3><%-- mini title--%>
                                        <h2 class="title"><asp:Literal ID="Literal2" runat="server" Text='<%# Eval("about_title") %>'></asp:Literal></h2> <%--title--%>
                                    </div>
                                </div><!-- section title end -->
                                <div class="pb-15 res-991-pb-0">
                                    <p><asp:Literal ID="Literal3" runat="server" Text='<%# Eval("about_desc") %>'></asp:Literal></p>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <ul class="ttm-list ttm-list-style-icon">
                                            <li><i class="ti ti-check"></i>
                                                <span class="ttm-list-li-content"><asp:Literal ID="Literal4" runat="server" Text='<%# Eval("about_line1") %>'></asp:Literal></span>
                                            </li>
                                            <li><i class="ti ti-check"></i>
                                                <span class="ttm-list-li-content"><asp:Literal ID="Literal5" runat="server" Text='<%# Eval("about_line2") %>'></asp:Literal></span>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-md-6">
                                        <ul class="ttm-list ttm-list-style-icon">
                                            <li><i class="ti ti-check"></i>
                                                <span class="ttm-list-li-content"><asp:Literal ID="Literal6" runat="server" Text='<%# Eval("about_line3") %>'></asp:Literal></span>
                                            </li>
                                            <li><i class="ti ti-check"></i>
                                                <span class="ttm-list-li-content"><asp:Literal ID="Literal7" runat="server" Text='<%# Eval("about_line4") %>'></asp:Literal></span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <a class="ttm-btn ttm-btn-size-md ttm-btn-shape-squar ttm-btn-style-border ttm-icon-btn-right ttm-btn-color-darkgrey mt-40 res-991-mt-30" href="tel:7034294323" tabindex="0">Call Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--welcome-section end-->




                   












            <!--zero_padding-section-->
            <section class="ttm-row zero_padding-section clearfix">
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-lg-8 col-md-8 col-sm-10 m-auto">
                            <!--section-title-->
                            <div class="section-title title-style-center_text">
                                <div class="title-header">
                                    <h3>TESTIMONIALS</h3>
                                    <h2 class="title">Our Featured Projects</h2>
                                </div>
                            </div><!--section-title end-->
                        </div>
                    </div><!-- row end -->
                    <!-- row -->
<div class="row slick_slider mr_450 res-991-mr-0 mt-12 res-991-mt-0" data-slick='{"slidesToShow": 2, "slidesToScroll": 1, "arrows":true, "autoplay":false, "dots":false, "infinite":true, "responsive":[{"breakpoint":1199,"settings": {"slidesToShow": 3}}, {"breakpoint":992,"settings":{"slidesToShow": 2}},{"breakpoint":620,"settings":{"slidesToShow": 1}}]}' style="margin-left: -15px; margin-right: -15px;">                                                <div class="col-lg-4">
                            <!-- featured-imagebox-portfolio -->
                            <div class="featured-imagebox featured-imagebox-portfolio style3">
                                <!-- featured-thumbnail -->
                                <div class="featured-thumbnail"> 
<iframe width="650" height="400" src="https://www.youtube.com/embed/k3bMZlfwTIM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>                                </div>
                                <!-- featured-thumbnail end-->

                            </div><!-- featured-imagebox-portfolio end-->
                        </div>




                                                <div class="col-lg-4">                            <!-- featured-imagebox-portfolio -->
                            <div class="featured-imagebox featured-imagebox-portfolio style3">
                                <!-- featured-thumbnail -->
                                <div class="featured-thumbnail"> 
<iframe width="650" height="400" src="https://www.youtube.com/embed/jRDoawphxV0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>                                <!-- featured-thumbnail end-->

                            </div><!-- featured-imagebox-portfolio end-->
                        </div>
                                                    </div>
                       
					   
                        
                                                <div class="col-lg-4">                            <!-- featured-imagebox-portfolio -->
                            <div class="featured-imagebox featured-imagebox-portfolio style3">
                                <!-- featured-thumbnail -->
                                <div class="featured-thumbnail"> 
<iframe width="650" height="400" src="https://www.youtube.com/embed/1B86AmW-PCg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>                                <!-- featured-thumbnail end-->

                            </div><!-- featured-imagebox-portfolio end-->
                        </div>
                                                    </div>




                                                <div class="col-lg-4">                            <!-- featured-imagebox-portfolio -->
                            <div class="featured-imagebox featured-imagebox-portfolio style3">
                                <!-- featured-thumbnail -->
                                <div class="featured-thumbnail"> 
<iframe width="650" height="400" src="https://www.youtube.com/embed/RqkzYB1CoOY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>                                <!-- featured-thumbnail end-->

                            </div><!-- featured-imagebox-portfolio end-->
                        </div>
                                                    </div>



                                                <div class="col-lg-4">                            <!-- featured-imagebox-portfolio -->
                            <div class="featured-imagebox featured-imagebox-portfolio style3">
                                <!-- featured-thumbnail -->
                                <div class="featured-thumbnail"> 
<iframe width="650" height="400" src="https://www.youtube.com/embed/p9Wpri0X1GE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>                                <!-- featured-thumbnail end-->

                            </div><!-- featured-imagebox-portfolio end-->
                        </div>
                                                    </div>
                      
					  

                                               <div class="col-lg-4">                            <!-- featured-imagebox-portfolio -->
                            <div class="featured-imagebox featured-imagebox-portfolio style3">
                                <!-- featured-thumbnail -->
                                <div class="featured-thumbnail"> 
<iframe width="650" height="400" src="https://www.youtube.com/embed/8gZ2vHPhcbs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>                                <div class="featured-content-inner">
                                  
                                </div>
                            </div><!-- featured-imagebox-portfolio end-->
                        </div>
                                                                                                        </div>


                                                <div class="col-lg-4">                            <!-- featured-imagebox-portfolio -->
                            <div class="featured-imagebox featured-imagebox-portfolio style3">
                                <!-- featured-thumbnail -->
                                <div class="featured-thumbnail"> 
<iframe width="650" height="400" src="https://www.youtube.com/embed/4a5dz4NFcLA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>                                <div class="featured-content-inner">
                                   
                                </div>
                            </div><!-- featured-imagebox-portfolio end-->
                        </div>
                                                                                                                                                            </div>

                     
					 
                    </div><!-- row end -->
                </div>
            </section>
            <!--zero_padding-section end-->
















































            <%--quote part 1--%>
            <div class="ttm-row sidebar ttm-sidebar-right ttm-bgcolor-white pb-70 res-991-pb-30 overflow-hidden clearfix">
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-lg-12 content-area">
                            <!-- post -->
                            <article class="post ttm-blog-single clearfix">
                                 <!-- post-featured-wrapper -->

                                <!-- ttm-blog-classic-content -->
                                <div class="ttm-blog-single-content">

                                    <div class="entry-content">
                                        <div class="ttm-box-desc-text">
                                            <blockquote>
                                            <p>
                                                <asp:Literal ID="Literal8" runat="server" Text='<%# Eval("about_quote") %>'></asp:Literal>
                                            </p>
                                            </blockquote>


                                        </div>
                                    </div>
                                </div><!-- ttm-blog-classic-content end -->
                            </article><!-- post end -->
                        </div>

                    </div><!-- row end -->
                </div>
            </div>



                        <!--client-section YAPILMADI!!!!! OUR PROJECTS-->
            <div class="ttm-row procedure-section clearfix" style="padding: 0px 0 77px;">
                <div class="container">
                    <!-- row -->
                    <div class="row text-center">
                        <div class="col-md-12">
                    <div class="row">
                        <div class="col-lg-8 col-md-8 col-sm-10 m-auto">
                            <!--section-title-->
                            <div class="section-title title-style-center_text">
                                <div class="title-header">
                                    <h3>OUR PARTNERS</h3>
                                    <h2 class="title">Products</h2>
                                </div>
                            </div><!--section-title end-->
                        </div>
                    </div><!-- row end -->


                            <!-- slick_slider -->
                            <div class="row slick_slider" data-slick='{"slidesToShow": 5, "slidesToScroll": 1, "arrows":false, "autoplay":true, "infinite":true, "responsive": [{"breakpoint":1200,"settings":{"slidesToShow": 5}}, {"breakpoint":1024,"settings":{"slidesToShow": 4}}, {"breakpoint":777,"settings":{"slidesToShow": 3}}, {"breakpoint":575,"settings":{"slidesToShow": 2}}]}'>
                                <div class="col-lg-12">
                                    <div class="client-box">
                                        <div class="client-thumbnail">
                                            <img width="178" height="70" class="img-fluid" src="Site/products/My-Kitchen-and-bath-Herndon-Vienna-Armstrong-Flooring.png" alt="image">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="client-box">
                                        <div class="client-thumbnail">
                                            <img width="178" height="70" class="img-fluid" src="Site/products/My-Kitchen-and-bath-Herndon-Vienna-Benjamin-Moore.png" alt="image">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="client-box">
                                        <div class="client-thumbnail">
                                            <img width="178" height="70" class="img-fluid" src="Site/products/My-Kitchen-and-bath-Herndon-Vienna-Bruce-Hardwood-Flooring.png" alt="image">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="client-box">
                                        <div class="client-thumbnail">
                                            <img width="178" height="70" class="img-fluid" src="Site/products/My-Kitchen-and-bath-Herndon-Vienna-Cambria-Quartz-Countertop.png" alt="image">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="client-box">
                                        <div class="client-thumbnail">
                                            <img width="178" height="70" class="img-fluid" src="Site/products/My-Kitchen-and-bath-Herndon-Vienna-Cosentino-Ferguson-Build-com.png" alt="image">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="client-box">
                                        <div class="client-thumbnail">
                                            <img width="178" height="70" class="img-fluid" src="Site/products/My-Kitchen-and-bath-Herndon-Vienna-Cosentino-Quartz-Countertop.png" alt="image">
                                        </div>
                                    </div>
                                </div>
                                                                <div class="col-lg-12">
                                    <div class="client-box">
                                        <div class="client-thumbnail">
                                            <img width="178" height="70" class="img-fluid" src="Site/products/My-Kitchen-and-bath-Herndon-Vienna-DecoVita-Porcelain-Tile.png" alt="image">
                                        </div>
                                    </div>
                                </div>
                                                                <div class="col-lg-12">
                                    <div class="client-box">
                                        <div class="client-thumbnail">
                                            <img width="178" height="70" class="img-fluid" src="Site/products/My-Kitchen-and-bath-Herndon-Vienna-Delta-Shower-Faucet-Sink.png" alt="image">
                                        </div>
                                    </div>
                                </div>
                                                                <div class="col-lg-12">
                                    <div class="client-box">
                                        <div class="client-thumbnail">
                                            <img width="178" height="70" class="img-fluid" src="Site/products/My-Kitchen-and-bath-Herndon-Vienna-DesignersChoice-Kitchen-Cabinets.png" alt="image">
                                        </div>
                                    </div>
                                </div>
                                                                <div class="col-lg-12">
                                    <div class="client-box">
                                        <div class="client-thumbnail">
                                            <img width="178" height="70" class="img-fluid" src="Site/products/My-Kitchen-and-bath-Herndon-Vienna-Elements-Knobs-Handles.png" alt="image">
                                        </div>
                                    </div>
                                </div>
                                                                <div class="col-lg-12">
                                    <div class="client-box">
                                        <div class="client-thumbnail">
                                            <img width="178" height="70" class="img-fluid" src="Site/products/My-Kitchen-and-bath-Herndon-Vienna-Fabuwood-Kitchen-Cabinets.png" alt="image">
                                        </div>
                                    </div>
                                </div>
                                                                <div class="col-lg-12">
                                    <div class="client-box">
                                        <div class="client-thumbnail">
                                            <img width="178" height="70" class="img-fluid" src="Site/products/My-Kitchen-and-bath-Herndon-Vienna-Forevermark-Kitchen-Cabinets.png" alt="image">
                                        </div>
                                    </div>
                                </div>
                                                                                                <div class="col-lg-12">
                                    <div class="client-box">
                                        <div class="client-thumbnail">
                                            <img width="178" height="70" class="img-fluid" src="Site/products/My-Kitchen-and-bath-Herndon-Vienna-HappyFloors-Porcelain-Tile-LVT-LVP-Waterproof.png" alt="image">
                                        </div>
                                    </div>
                                </div>
                                                                                                <div class="col-lg-12">
                                    <div class="client-box">
                                        <div class="client-thumbnail">
                                            <img width="178" height="70" class="img-fluid" src="Site/products/My-Kitchen-and-bath-Herndon-Vienna-Hardware-Resources-Countertop.png" alt="image">
                                        </div>
                                    </div>
                                </div>
                                                                                                <div class="col-lg-12">
                                    <div class="client-box">
                                        <div class="client-thumbnail">
                                            <img width="178" height="70" class="img-fluid" src="Site/products/My-Kitchen-and-bath-Herndon-Vienna-Jeffrey-Alexander-Knobs-Handles.png" alt="image">
                                        </div>
                                    </div>
                                </div>
                                                                                                <div class="col-lg-12">
                                    <div class="client-box">
                                        <div class="client-thumbnail">
                                            <img width="178" height="70" class="img-fluid" src="Site/products/My-Kitchen-and-bath-Herndon-Vienna-Kohler-Shower-Faucet-Sink.png" alt="image">
                                        </div>
                                    </div>
                                </div>
                                                                                                <div class="col-lg-12">
                                    <div class="client-box">
                                        <div class="client-thumbnail">
                                            <img width="178" height="70" class="img-fluid" src="Site/products/My-Kitchen-and-bath-Herndon-Vienna-Kraftmaid-Kitchen-Cabinets.png" alt="image">
                                        </div>
                                    </div>
                                </div>
                                                                                                <div class="col-lg-12">
                                    <div class="client-box">
                                        <div class="client-thumbnail">
                                            <img width="178" height="70" class="img-fluid" src="Site/products/My-Kitchen-and-bath-Herndon-Vienna-Medallion-Kitchen-Cabinets.png" alt="image">
                                        </div>
                                    </div>
                                </div>
                                                                                                <div class="col-lg-12">
                                    <div class="client-box">
                                        <div class="client-thumbnail">
                                            <img width="178" height="70" class="img-fluid" src="Site/products/My-Kitchen-and-bath-Herndon-Vienna-Mosaic-Porcelain-Tile.png" alt="image">
                                        </div>
                                    </div>
                                </div>
                                 <div class="col-lg-12">
                                    <div class="client-box">
                                        <div class="client-thumbnail">
                                            <img width="178" height="70" class="img-fluid" src="Site/products/My-Kitchen-and-bath-Herndon-Vienna-MSI-Porcelain-Tile-LVT-LVP-Flooring.png" alt="image">
                                        </div>
                                    </div>
                                </div>
                                 </div>
                            </div><!-- ttm-client end -->      
                        </div>
                    </div><!-- row end -->
                </div>





            <%--quote part 2--%>
            <!--connect-section_1-->
            <section class="ttm-row connect-section_1 ttm-bgcolor-grey clearfix">
                <div class="container">
                    <!--row-->
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <div class="row-title style2">
                                <!-- section title -->
                                <div class="section-title without-seperator text-center">
                                    <div class="title-header">
                                        <h2 class="title"><asp:Literal ID="Literal9" runat="server" Text='<%# Eval("about_quote2") %>'></asp:Literal></h2>
                                    </div>
                                </div><!-- section title end -->
                                <a class="ttm-btn ttm-btn-size-md ttm-btn-shape-squar ttm-btn-style-fill ttm-icon-btn-right ttm-btn-color-skincolor mt-10" href="https://mykb.typeform.com/to/JmCY9mky?typeform-source=www.ctu-consulting.com" tabindex="0">Get A Quote</a>
                            </div>
                        </div>
                    </div><!--row end-->
                </div>
            </section>
            <!--connect-section_1 end-->















    
                <!--faq-section-->
            <section class="ttm-row faq-section bg-layer-equal-height pt-90 clearfix">
                <div class="container">
                    <!--row-->
                    <div class="row">
                        <div class="col-lg-6 col-md-7 col-sm-10 m-auto">
                            <!--section-title-->
                            <div class="section-title title-style-center_text">
                                <div class="title-header">
                                    <h3><asp:Literal ID="Literal20" runat="server" Text='<%# Eval("faq_mini_title") %>'></asp:Literal></h3>
                                    <h2 class="pb-15 res-991-pb-0"><asp:Literal ID="Literal21" runat="server" Text='<%# Eval("faq_title") %>'></asp:Literal></h2>
                                </div>
                                <p><asp:Literal ID="Literal22" runat="server" Text='<%# Eval("faq_desc") %>'></asp:Literal> </p>
                            </div><!--section-title end-->
                        </div>
                    </div><!--row end-->
                    <!--row-->
                    <div class="pt-25">
                        <div class="row">
                            <div class="col-lg-6">
                                <!-- col-img-bg-img-six-->
                                <div class="col-bg-img-six ttm-bg ttm-col-bgimage-yes">
                                    <div class="ttm-col-wrapper-bg-layer ttm-bg-layer"></div>
                                    <div class="layer-content">
                                    </div>
                                </div>
                                <!-- col-img-bg-img-six end-->
                                <img src="Site/Pages/About-Us/faq-about-us.webp" class="ttm-equal-height-image" alt="bg-image">
                            </div>
                            <div class="col-lg-6 col-md-12">
                                <div class="ttm-bg ttm-col-bgcolor-yes spacing-10 z-index-2">
                                    <div class="ttm-col-wrapper-bg-layer ttm-bg-layer"></div>
                                    <div class="layer-content">
                                        <div class="accordion">



<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
    <ItemTemplate>
        <div class="toggle ttm-toggle_style_classic ttm-toggle-title-bgcolor-grey">
            <div class="toggle-title">
                <a href="#" class="<%# Container.ItemIndex == 0 ? "active" : "" %>">
                    <asp:Literal ID="Literal20" runat="server" Text='<%# Eval("FAQ_question") %>'></asp:Literal>
                </a>
            </div>
            <div class="toggle-content <%# Container.ItemIndex != 0 ? "hide" : "" %>">
                <p>
                    <asp:Literal ID="Literal23" runat="server" Text='<%# Eval("FAQ_answer") %>'></asp:Literal>
                </p>
            </div>
        </div><!-- toggle end -->
    </ItemTemplate>
</asp:Repeater>


<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:NewConnectionString %>' SelectCommand="SELECT TOP 5 * FROM [FAQ_QA] WHERE ([FAQ_about] = @FAQ_about)">
    <SelectParameters>
        <asp:Parameter DefaultValue="About" Name="FAQ_about" Type="String"></asp:Parameter>
    </SelectParameters>
</asp:SqlDataSource>


                                            <!-- toggle -->

                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!-- row end -->
                    </div>
                </div>
            </section><!--faq-section end-->




            <!--fid-section-->
            <section class="ttm-row fid-section ttm-bgcolor-grey clearfix">
                <div class="container">
                    <div class="row no-gutters">
                        <div class="col-lg-12 col-md-12">
                            <div class="row no-gutters ttm-vertical_sep">
                                <div class="col-lg-3 col-md-6 col-sm-6 ttm-box-col-wrapper">
                                    <!-- ttm-fid -->
                                    <div class="ttm-fid inside ttm-fid-with-icon ttm-fid-view-top_icon style2">
                                        <div class="ttm-fid-contents">
                                            <h4 class="ttm-fid-inner">
                                                  <span   data-appear-animation="animateDigits" 
                                                        data-from="0" 
                                                        data-to="2" 
                                                        data-interval="1" 
                                                        data-before="" 
                                                        data-before-style="sup" 
                                                        data-after="" 
                                                        data-after-style="sub" 
                                                        class="numinate">
                                                    2 
                                                </span>
                                                 <span class="ml_15 res-991-ml-0">k</span>
                                            </h4>
                                            <h3 class="ttm-fid-title"><asp:Literal ID="Literal11" runat="server" Text='<%# Eval("counter1_title") %>'></asp:Literal></h3>
                                        </div>
                                    </div><!-- ttm-fid end -->
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6 ttm-box-col-wrapper">
                                    <!-- ttm-fid -->
                                    <div class="ttm-fid inside ttm-fid-with-icon ttm-fid-view-top_icon style2">
                                        <div class="ttm-fid-contents">
                                            <h4 class="ttm-fid-inner">
                                                <span   data-appear-animation="animateDigits" 
                                                        data-from="0" 
                                                        data-to="16"
                                                        data-interval="5" 
                                                        data-before="" 
                                                        data-before-style="sup" 
                                                        data-after="" 
                                                        data-after-style="sub" 
                                                        class="numinate">
                                                    16
                                                </span>
                                            </h4>
                                            <h3 class="ttm-fid-title"><asp:Literal ID="Literal13" runat="server" Text='<%# Eval("counter2_title") %>'></asp:Literal></h3>
                                        </div>
                                    </div><!-- ttm-fid end -->
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6 ttm-box-col-wrapper">
                                    <!-- ttm-fid -->
                                    <div class="ttm-fid inside ttm-fid-with-icon ttm-fid-view-top_icon style2">
                                        <div class="ttm-fid-contents">
                                            <h4 class="ttm-fid-inner">
                                                <span   data-appear-animation="animateDigits" 
                                                        data-from="0" 
                                                        data-to="47"
                                                        data-interval="5" 
                                                        data-before="" 
                                                        data-before-style="sup" 
                                                        data-after="" 
                                                        data-after-style="sub" 
                                                        class="numinate">
                                                    47
                                                </span>
                                            </h4>
                                            <h3 class="ttm-fid-title"><asp:Literal ID="Literal15" runat="server" Text='<%# Eval("counter3_title") %>'></asp:Literal></h3>
                                        </div>
                                    </div><!-- ttm-fid end -->
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6 ttm-box-col-wrapper">
                                    <!-- ttm-fid -->
                                    <div class="ttm-fid inside ttm-fid-with-icon ttm-fid-view-top_icon style2">
                                        <div class="ttm-fid-contents">
                                            <h4 class="ttm-fid-inner">
                                                <span   data-appear-animation="animateDigits" 
                                                        data-from="0" 
                                                        data-to="200" 
                                                        data-interval="1" 
                                                        data-before="" 
                                                        data-before-style="sup" 
                                                        data-after="" 
                                                        data-after-style="sub" 
                                                        class="numinate">
                                                   200
                                                </span>
                                                <span class="ml_15 res-991-ml-0">+</span>
                                            </h4>
                                            <h3 class="ttm-fid-title"><asp:Literal ID="Literal17" runat="server" Text='<%# Eval("counter4_title") %>'></asp:Literal></h3>
                                        </div>
                                    </div><!-- ttm-fid end -->
                                </div>
                            </div>
                        </div>
                    </div><!-- row end -->
                </div>
            </section>
            <!--fid-section end-->






                         <!--last-section-->
            <section class="ttm-row faq-section bg-layer-equal-height pt-90 clearfix">
                <div class="container">
                    <!--row-->
                    <div class="row">
                        <div class="col-lg-12 m-auto">
                                                            <div class="ttm-horizontal_sep width-100 mt-30 mb-30 res-991-mt-15"></div>
                                    <div class="row">
                                        <div class="col-md-7">
                                            <h2><asp:Literal ID="Literal18" runat="server" Text='<%# Eval("photo1_title") %>'></asp:Literal></h2>
                                            <div id="content" class="overflow-hidden"> <asp:Literal ID="Literal19" runat="server" Text='<%# Eval("photo1_desc") %>'></asp:Literal> </div>
                                            <a class="ttm-btn ttm-btn-size-md ttm-btn-shape-squar ttm-btn-style-border ttm-icon-btn-right ttm-btn-color-darkgrey mt-20" href="tel:7034294323" tabindex="0">Call Now</a>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="ttm_single_image-wrapper res-767-pt-30">
                                                <img width="450" height="500" class="img-fluid" src="Site/Pages/About-Us/(450 × 500 px).webp" alt="team-img02">
                                            </div>
                                        </div>
                                    </div>
                        </div>
                    </div><!--row end-->
                    <!--row-->
                </div>
            </section><!--last-section end-->







             <div class="ttm-row procedure-section clearfix">
                <div class="container">
                    <!-- row -->
                    <div class="row text-center">
                        <div class="col-md-12">



                           <iframe loading="lazy" src="https://my.matterport.com/show/?m=vnVkQTA4AGJ" width="600" height="400" frameborder="0" scrolling="auto"></iframe>





                            </div>
                        </div>
                    </div>
               </div>













                <!--connect-section-->
            <section class="ttm-row connect-section bg-img4 ttm-bgcolor-skincolor ttm-bg ttm-bgimage-yes ttm-textcolor-white clearfix">
                <div class="ttm-row-wrapper-bg-layer ttm-bg-layer"></div>
                <div class="container">
                    <!--row-->
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <div class="row-title">
                                <!-- section title -->
                                <div class="section-title without-seperator text-center">
                                    <div class="title-header">
                                        <h3>GET A FREE ESTIMATE!</h3>
                                        <h2 class="title">We provide you a free design, <br>  free estimate and 18 months 0% APR financing with approved credit!</h2>
                                    </div>
                                </div><!-- section title end -->
                                <a class="ttm-btn ttm-btn-size-md ttm-btn-shape-squar ttm-btn-style-border ttm-icon-btn-right ttm-btn-color-white mt-10" href="Contact.aspx" tabindex="0">Contact Us</a>
                            </div>
                        </div>
                    </div><!--row end-->
                </div>
            </section>
            <!--connect-section end-->





        </div><!--site-main end-->







</asp:Content>
