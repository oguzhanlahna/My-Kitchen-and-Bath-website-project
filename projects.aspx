<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="projects.aspx.cs" Inherits="mykb_modern.projects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="ttm-page-title-row" style="background-image: url(../../Site/Pages/Banners/Projects-Style2.webp);">
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

            <!--grid-section-->
            <section class="ttm-row grid-section clearfix">
                <div class="container">
                    <div class="row">





                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
                            <ItemTemplate>


                       <div class="ttm-box-col-wrapper col-lg-4 col-md-6 col-sm-6">
                            <!-- featured-imagebox-portfolio -->
                            <div class="featured-imagebox featured-imagebox-portfolio style5">
                                <div class="ttm-box-view-overlay">
                                    <!-- featured-thumbnail -->
                                    <div class="featured-thumbnail">
                                        <asp:Image ID="Image1" runat="server" CssClass="img-fluid" alt="image" ImageUrl='<%# Eval("pro_home_img")%>' Height="100%" Width="100%" />
                                        <%--<img width="610" height="750" class="img-fluid" src="https://via.placeholder.com/610x750/808080?text=610x750+portfolio-01-610x750.jpg" alt="image"> --%>
                                    </div>
                                    <div class="ttm-footer">
                                        <%--<a class="ttm-btn btn-inline ttm-btn-size-md ttm-icon-btn-right ttm-btn-color-skincolor" href="#"><i class="fa fa-long-arrow-right"></i></a>--%>
                                       <%-- <asp:LinkButton ID="LinkButton2" runat="server" CssClass="ttm-btn btn-inline ttm-btn-size-md ttm-icon-btn-right ttm-btn-color-skincolor"><i class="fa fa-long-arrow-right"></i></asp:LinkButton>--%>
                                    </div>
                                    <!-- featured-thumbnail end-->
                                    <div class="featured-content">
                                        <div class="featured-desc">
                                            <p><asp:Literal ID="Literal1" runat="server" Text='<%# Eval("pro_mini_desc")%>'></asp:Literal></p> <%--// pro_cat--%>
                                        </div>
                                        <div class="featured-title">
                                            <h3><asp:Literal ID="Literal2" runat="server" Text='<%# Eval("pro_title") %>'></asp:Literal></h3> <%--pro_title--%>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- featured-imagebox-portfolio end-->
                        </div>


                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:NewConnectionString %>' SelectCommand="SELECT * FROM [projects] ORDER BY [created_date] DESC"></asp:SqlDataSource>















                    </div>
                </div>
            </section><!--grid-section end-->


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
                                        <h2 class="title">If you're looking for kitchen and bathroom remodeling services in the DC, Maryland, or the Northern Virginia area, My Kitchen and Bath has you covered!</h2>
                                    </div>
                                </div><!-- section title end -->
                                <a class="ttm-btn ttm-btn-size-md ttm-btn-shape-squar ttm-btn-style-fill ttm-icon-btn-right ttm-btn-color-skincolor mt-10" href="https://mykb.typeform.com/to/JmCY9mky?typeform-source=www.ctu-consulting.com" tabindex="0">Get A Quote</a>
                            </div>
                        </div>
                    </div><!--row end-->
                </div>
            </section>
            <!--connect-section_1 end-->
            

        </div><!--site-main end-->

</asp:Content>
