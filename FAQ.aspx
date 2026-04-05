<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="mykb_modern.FAQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">





<div class="ttm-page-title-row" style="background-image: url(../../Site/Pages/Banners/FAQ.webp);">
    <div class="ttm-page-title-row-inner">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <div class="page-title-heading" >
                        <h2 style="color: #cda274;" class="title">FAQ</h2>
                    </div>
                    <div class="breadcrumb-wrapper">
                        <div class="container">
                            <div class="breadcrumb-wrapper-inner">
                                <span>
                                    <a title="Go to Delmont." href="default.aspx" class="home"><i class="themifyicon ti-home"></i>&nbsp;&nbsp;Home</a>
                                </span>
                                <span class="ttm-bread-sep">&nbsp; / &nbsp;</span>
                                <span>FAQ</span>
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


                <!--faq-section-->
            <section class="ttm-row faq-section bg-layer-equal-height pt-90 clearfix">
                <div class="container">
                    <!--row-->
                    <div class="row">
                        <div class="col-lg-6 col-md-7 col-sm-10 m-auto">
                            <!--section-title-->
                            <div class="section-title title-style-center_text">
                                <div class="title-header">
                                    <h3><asp:Literal ID="Literal1" runat="server" Text='<%# Eval("faq_mini_title") %>'></asp:Literal></h3>
                                    <p class="pb-15 res-991-pb-0"><asp:Literal ID="Literal2" runat="server" Text='<%# Eval("faq_title") %>'></asp:Literal></p>
                                </div>
                            </div><!--section-title end-->
                        </div>
                    </div><!--row end-->
                    <!--row-->
                    <div class="pt-25">
                        <div class="row">

                            <div class="col-md-12">
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
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:NewConnectionString %>' SelectCommand="SELECT * FROM [FAQ_QA]"></asp:SqlDataSource>


                                            <!-- toggle -->

                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!-- row end -->
                    </div>
                </div>
            </section><!--faq-section end-->
            </section><!--faq-section end-->


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
                                        
                                        <h2 class="title">Get a Free In-Home Estimate</h2>
                                    </div>
                                </div><!-- section title end -->
                                <a class="ttm-btn ttm-btn-size-md ttm-btn-shape-squar ttm-btn-style-border ttm-icon-btn-right ttm-btn-color-white mt-10" href="contact.aspx" tabindex="0">Contact Us</a>
                            </div>
                        </div>
                    </div><!--row end-->
                </div>
            </section>
            <!--connect-section end-->

        </div><!--site-main end-->










</asp:Content>
