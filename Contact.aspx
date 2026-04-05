<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="mykb_modern.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">




<div class="ttm-page-title-row" style="background-image: url(../../Site/Pages/Banners/Contact.webp);">
    <div class="ttm-page-title-row-inner">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <div class="page-title-heading" >
                        <h2 style="color: #cda274;" class="title">Contact Us</h2>
                    </div>
                    <div class="breadcrumb-wrapper">
                        <div class="container">
                            <div class="breadcrumb-wrapper-inner">
                                <span>
                                    <a title="Go to Delmont." href="default.aspx" class="home"><i class="themifyicon ti-home"></i>&nbsp;&nbsp;Home</a>
                                </span>
                                <span class="ttm-bread-sep">&nbsp; / &nbsp;</span>
                                <span>Contact Us</span>
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


            <section class="ttm-row pt-85 res-991-pt-45 pb-0 res-991-pb-0 clearfix">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-6 col-sm-12">
                            <!--featured-icon-box-->
                            <div class="featured-icon-box icon-align-top-content style7">
                                <div class="featured-inner">
                                    <div class="featured-icon">
                                        <div class="ttm-icon ttm-icon_element-onlytxt ttm-icon_element-color-skincolor ttm-icon_element-size-md ttm-icon_element-style-square"> 
                                            <i class="flaticon-call"></i>
                                        </div>
                                    </div>
                                    <div class="featured-content">
                                        <div class="featured-title">
                                            <h3>Phone Number</h3>
                                        </div>
                                        <div class="featured-desc">
                                            
                                            <p><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="tel:7034294323" Text='<%# Eval("showroom2_phone") %>'></asp:HyperLink></p>
                                            <p><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="tel:7035370857" Text='<%# Eval("showroom1_phone") %>'></asp:HyperLink></p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- featured-icon-box end-->
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-12">
                            <!--featured-icon-box-->
                            <div class="featured-icon-box icon-align-top-content style7">
                                <div class="featured-inner">
                                    <div class="featured-icon">
                                        <div class="ttm-icon ttm-icon_element-onlytxt ttm-icon_element-color-skincolor ttm-icon_element-size-md ttm-icon_element-style-square"> 
                                            <i class="flaticon-email"></i>
                                        </div>
                                    </div>
                                    <div class="featured-content">
                                        <div class="featured-title">
                                            <h3>Email Address</h3>
                                        </div>
                                        <div class="featured-desc">
                                            
                                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="mailto:info@mykitchenandbath.com" Text='<%# Eval("showroom2_mail") %>'></asp:HyperLink>
                                            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="mailto:vienna@mykitchenandbath.com" Text='<%# Eval("showroom1_mail") %>'></asp:HyperLink>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- featured-icon-box end-->
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-12">
                            <!--featured-icon-box-->
                            <div class="featured-icon-box icon-align-top-content style7">
                                <div class="featured-inner">
                                    <div class="featured-icon">
                                        <div class="ttm-icon ttm-icon_element-onlytxt ttm-icon_element-color-skincolor ttm-icon_element-size-md ttm-icon_element-style-square"> 
                                            <i class="flaticon-location"></i>
                                        </div>
                                    </div>
                                    <div class="featured-content">
                                        <div class="featured-title">
                                            <h3>Visit Us On</h3>
                                        </div>
                                        <div class="featured-desc">
                                            
                                            <p><asp:HyperLink ID="HyperLink6" runat="server" Target="_blank" NavigateUrl="https://g.co/kgs/BEnFbR">Herndon,VA</asp:HyperLink></p>
                                            <p><asp:HyperLink ID="HyperLink5" runat="server" Target="_blank" NavigateUrl="https://g.co/kgs/X2t3tG">Vienna,VA</asp:HyperLink></p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- featured-icon-box end-->
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-12">
                            <!--featured-icon-box-->
                            <div class="featured-icon-box icon-align-top-content style7">
                                <div class="featured-inner">
                                    <div class="featured-icon">
                                        <div class="ttm-icon ttm-icon_element-onlytxt ttm-icon_element-color-skincolor ttm-icon_element-size-md ttm-icon_element-style-square"> 
                                            <i class="flaticon-wall-clock"></i>
                                        </div>
                                    </div>
                                    <div class="featured-content">
                                        <div class="featured-title">
                                            <h3>Visit Between</h3>
                                        </div>
                                        <div class="featured-desc">
                                            <p>Mon - Fri : 9.00 - 6.00</p>
                                            <p>Sat :  10.00 - 4.00</p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- featured-icon-box end-->
                        </div>
                    </div>
                </div>
            </section>

            
            <!--- conatact-section -->
            <section class="ttm-row conatact-section bg-layer-equal-height mt_15 clearfix">
                <div class="container">
                    <!-- row -->
                    <div class="row">
                    <div class="col-lg-4">
                        <div class="col-bg-img-eight ttm-bg ttm-col-bgimage-yes ttm-textcolor-white spacing-11 z-index-2">
                            <asp:Image ID="Image1" runat="server" CssClass="ttm-col-wrapper-bg-layer ttm-bg-layer" ImageUrl="~/Site/Home/Form Live Chat.png" />
                            <div class="layer-content">
                                <h3 class="mb-5">Call Us Now</h3>
                                <p>My Kitchen and Bath provides you a complementary in-home estimate.</p>
                                <a class="ttm-btn ttm-btn-size-md ttm-btn-shape-squar ttm-btn-style-border ttm-icon-btn-right ttm-btn-color-white mt-15" href="tel:7034294323" tabindex="0">Call Now</a>
                            </div>
                        </div>
                        <!-- col-img-bg-img-eight end-->
                    </div>
                        <div class="col-lg-8">
                            <!-- col-img-img-eight -->
                            <div class="ttm-bg ttm-col-bgcolor-yes ttm-right-span spacing-12">
                                <div class="ttm-col-wrapper-bg-layer ttm-bg-layer"></div>
                                <div class="layer-content">
                                    <!-- section title -->
                                    <div class="section-title">
                                        <div class="title-header">
                                            <h2 class="title">Send Your Message To Us</h2>
                                        </div>
                                    </div><!-- section title end -->






                                        <div class="padding_top30">
                                        <div class="contact_form wrap-form clearfix">
                                            <div class="row ttm-boxes-spacing-20px">
                                                <div class="col-md-6">
                                                    <label>
                                                        <span class="text-input">
                                                            <asp:TextBox ID="TextBox1" runat="server" placeholder="First Name..." ></asp:TextBox>
                                                            

                                                        </span>
                                                    </label>
                                                </div>
                                                <div class="col-md-6">
                                                    <label>
                                                        <span class="text-input">
                                                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Last Name..." ></asp:TextBox>

                                                        </span>
                                                    </label>
                                                </div>
                                                <div class="col-md-6">
                                                    <label>
                                                        <span class="text-input">
                                                            <asp:TextBox ID="TextBox3" runat="server" placeholder="E-Mail Address..." ></asp:TextBox>

                                                        </span>
                                                    </label>
                                                </div>
                                                <div class="col-md-6">
                                                    <label>
                                                        <span class="text-input">
                                                           <asp:TextBox ID="TextBox4" runat="server" placeholder="Phone Number..." ></asp:TextBox>

                                                        </span>
                                                    </label>
                                                </div>



                                                <div class="col-md-12">
                                                    <label>
                                                        <span class="text-input">
                                                                                   <asp:DropDownList runat="server" ID="DropDownList2" Required="true">
                            <asp:ListItem Text="Select Project Type" Value="" Disabled="true" Selected="true"></asp:ListItem>
                            <asp:ListItem Text="Kitchen Remodeling" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Bathroom Remodeling" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Basement Remodeling" Value="3"></asp:ListItem>
                            <asp:ListItem Text="Custom Closet" Value="4"></asp:ListItem>
                            <asp:ListItem Text="Blinds & Shades" Value="5"></asp:ListItem>
                            <asp:ListItem Text="Flooring" Value="6"></asp:ListItem>
                            <asp:ListItem Text="Outdoor Kitchen" Value="7"></asp:ListItem>
                        </asp:DropDownList>

                                                        </span>
                                                    </label>
                                                </div>






                                                <div class="col-md-12">
                                                    <label>
                                                        <span class="text-input">
                                                            <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" placeholder="Message here..." ></asp:TextBox>

                                                            </span>
                                                    </label>
                                                </div>
                                                <div class="col-lg-12">
                                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="Button1_Click" CssClass="ttm-btn ttm-btn-size-md ttm-btn-shape-squar ttm-btn-style-border ttm-icon-btn-right ttm-btn-color-darkgrey mt-15">Send Your Message</asp:LinkButton>
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>










                                </div>
                            </div><!-- col-img-bg-img-two end-->
                        </div>
                    </div><!-- row end -->                
                </div>
            </section>
            <!-- conatact-section end -->


            <!--google_map-->


<%--                        <section class="ttm-row faq-section bg-layer-equal-height pt-90 clearfix">
                <div class="container">
                    <!--row-->
                    <div class="row">




            <div id="google_map" class="google_map">
                <div class="map_container">
                    <div id="map">


                          <div class="row">
                            <div class="col-lg-6">
                                <div class="section-title title-style-center_text">
                                 <div class="title-header">
                                    <h3>Have any Questions</h3>
                                    <h2 class="title">Recently Asked Questions</h2>
                                </div></div>

<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12410.206760162979!2d-77.374354!3d38.957069!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b64806ed74c613%3A0xcd655ecfe8cb3354!2sMy%20Kitchen%20and%20Bath!5e0!3m2!1sen!2sus!4v1688934547963!5m2!1sen!2sus" height="400" width="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                </div>

                                                          <div class="col-lg-6">

<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12419.901085885173!2d-77.2669406!3d38.9016808!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b64b8d71dc68a5%3A0xb6f2fda0d97daffb!2sMy%20Kitchen%20and%20Bath!5e0!3m2!1sen!2sus!4v1688934510725!5m2!1sen!2sus" height="400" width="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                </div>
                              </div>



                    </div>
                </div>
            </div>



                        </div>
                    </div>
                            </section>--%>

            



                        <!--team-section-->
            <section class="ttm-row team-section mt_10 res-991-mt-0 pb-85 clearfix">
                <div class="container">
                    <!-- row -->
                    <div class="row">
						                        <div class="col-lg-6">
                            <!--section-title-->
                            <div class="section-title title-style-center_text">
                                <div class="title-header">
                                    <h3>Our Showrooms</h3>
                                    <h2 class="title">Vienna Showroom</h2>
                                </div>
                            </div><!--section-title end-->
<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12419.901085885173!2d-77.2669406!3d38.9016808!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b64b8d71dc68a5%3A0xb6f2fda0d97daffb!2sMy%20Kitchen%20and%20Bath!5e0!3m2!1sen!2sus!4v1689040373106!5m2!1sen!2sus" height="400" width="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
						
						
						
						
						                        <div class="col-lg-6">
                            <!--section-title-->
                            <div class="section-title title-style-center_text">
                                <div class="title-header">
                                    <h3>Our Showrooms</h3>
                                    <h2 class="title">Herndon Showroom</h2>
                                </div>
                            </div><!--section-title end-->
<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12410.206760162979!2d-77.374354!3d38.957069!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b64806ed74c613%3A0xcd655ecfe8cb3354!2sMy%20Kitchen%20and%20Bath!5e0!3m2!1sen!2sus!4v1688934547963!5m2!1sen!2sus" height="400" width="600" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

                        </div>
						
						
						
						
						
						
                    </div><!-- row end-->
                    <!-- row -->
                    


                     
                       
                
                   
                </div>
            </section> <!--team-section end-->




        </div><!--site-main end-->



</asp:Content>
