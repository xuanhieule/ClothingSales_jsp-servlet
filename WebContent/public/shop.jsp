<%@page import="model.bean.Products"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/public/inc/header.jsp" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/templates/public/assets/css/shop.css">
<div id="nt_content">

        <!--category menu-->
        <div class="kalles-section cat-shop pr tc">
            <a href="#" class="has_ic	on cat_nav_js dib">Categories<i class="facl facl-angle-down"></i></a>
            <div class="dn" id="cat_kalles">
                <ul class="cat_lv_0">
                    <li class="cat-item"><a class="cat_link dib" href="<%=request.getContextPath()%>/cua-hang?id=1&page=1">Men</a></li>
                    <li class="cat-item"><a class="cat_link dib" href="<%=request.getContextPath()%>/cua-hang?id=2&page=1">Woman</a></li>
                    <li class="cat-item"><a class="cat_link dib" href="<%=request.getContextPath()%>/cua-hang?id=3&page=1">Jacket</a></li>
                    <li class="cat-item"><a class="cat_link dib" href="<%=request.getContextPath()%>/cua-hang?id=4&page=1">Accessory</a></li>
                    
                </ul>
            </div>
        </div>
        <!--end category menu-->

        <!--shop banner-->
        <div class="kalles-section page_section_heading">
            <div class="page-head tc pr oh cat_bg_img page_head_">
                <div class="parallax-inner nt_parallax_false lazyload nt_bg_lz pa t__0 l__0 r__0 b__0" data-bgset="<%=request.getContextPath()%>/templates/public/assets/images/shop/shop-banner.jpg"></div>
                <div class="container pr z_100">
                    <h1 class="mb__5 cw">Women</h1>
                    <p class="mg__0">Shop through our latest selection of Women’s Clothing and Accessories.</p>
                </div>
            </div>
        </div>
        <!--end shop banner-->

        <div class="container container_cat pop_default cat_default mb__20">

            <!--grid control-->
            <div class="cat_toolbar row fl_center al_center mt__30">
                <div class="cat_filter col op__0 pe_none">
                    <a href="#" data-opennt="#kalles-section-nt_filter" data-pos="left" data-remove="true" data-class="popup_filter" data-bg="hide_btn" class="has_icon btn_filter mgr"><i class="iccl fwb iccl-filter fwb mr__5"></i>Filter</a>
                    <a href="#" data-id="#kalles-section-nt_filter" class="btn_filter js_filter dn mgr"><i class="iccl fwb iccl-filter fwb mr__5"></i>Filter</a>
                </div>
                <div class="cat_view col-auto">
                    <div class="dn dev_desktop">
                        <a href="#" data-mode="grid" data-dev="dk" data-col="6" class="pr mr__10 cat_view_page view_6"></a>
                        <a href="#" data-mode="grid" data-dev="dk" data-col="4" class="pr mr__10 cat_view_page view_4"></a>
                        <a href="#" data-mode="grid" data-dev="dk" data-col="3" class="pr mr__10 cat_view_page view_3 active"></a>
                        <a href="#" data-mode="grid" data-dev="dk" data-col="15" class="pr mr__10 cat_view_page view_15"></a>
                        <a href="#" data-mode="grid" data-dev="dk" data-col="2" class="pr cat_view_page view_2"></a>
                    </div>
                    <div class="dn dev_tablet dev_view_cat">
                        <a href="#" data-dev="tb" data-col="6" class="pr mr__10 cat_view_page view_6"></a>
                        <a href="#" data-dev="tb" data-col="4" class="pr mr__10 cat_view_page view_4"></a>
                        <a href="#" data-dev="tb" data-col="3" class="pr cat_view_page view_3"></a>
                    </div>
                    <div class="flex dev_mobile dev_view_cat">
                        <a href="#" data-dev="mb" data-col="12" class="pr mr__10 cat_view_page view_12"></a>
                        <a href="#" data-dev="mb" data-col="6" class="pr cat_view_page view_6"></a>
                    </div>
                </div>
                <div class="cat_sortby cat_sortby_js col tr kalles_dropdown kalles_dropdown_container">
                    <a class="in_flex fl_between al_center sortby_pick kalles_dropDown_label" href="#">
                        <span class="lbl-title sr_txt dn">Featured</span>
                        <span class="lbl-title sr_txt_mb">Sort by</span>
                        <i class="ml__5 mr__5 facl facl-angle-down"></i>
                    </a>
                    <div class="nt_sortby dn">
                        <svg class="ic_triangle_svg" viewBox="0 0 20 9" role="presentation">
                            <path d="M.47108938 9c.2694725-.26871321.57077721-.56867841.90388257-.89986354C3.12384116 6.36134886 5.74788116 3.76338565 9.2467995.30653888c.4145057-.4095171 1.0844277-.40860098 1.4977971.00205122L19.4935156 9H.47108938z" fill="#ffffff"></path>
                        </svg>
                        <div class="h3 mg__0 tc cd tu ls__2 dn_lg db">Sort by<i class="pegk pe-7s-close fs__50 ml__5"></i>
                        </div>
                        <div class="nt_ajaxsortby wrap_sortby kalles_dropdown_options">
                            <a data-label="Featured" class="kalles_dropdown_option truncate selected" href="#">Featured</a>
                            <a data-label="Price, low to high" class="kalles_dropdown_option truncate" href="#">Price, low to high</a>
                            <a data-label="Price, high to low" class="kalles_dropdown_option truncate" href="#">Price, high to low</a>
                        </div>
                    </div>
                </div>
            </div>
            <!--end grid control-->

            <!--filter panel area-->
            <div class="filter_area_js filter_area lazyload">
                <div id="kalles-section-nt_filter" class="kalles-section nt_ajaxFilter section_nt_filter">
                    <div class="h3 mg__0 tu bgb cw visible-sm fs__16 pr">Filter<i class="close_pp pegk pe-7s-close fs__40 ml__5"></i>
                    </div>
                    <div class="cat_shop_wrap">
                        <div class="cat_fixcl-scroll">
                            <div class="cat_fixcl-scroll-content css_ntbar">
                                <div class="row wrap_filter">
                                    <div class="col-12 col-md-3 widget">
                                        <h5 class="widget-title">By Color</h5>
                                        <div class="loke_scroll">
                                            <ul class="nt_filter_block nt_filter_color css_ntbar" data-filter_condition="and">
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag color black">
                                                        <div class="filter-swatch">
                                                            <span class="swatch__value bg_color_black lazyload"></span>
                                                        </div>
                                                        black</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag color cyan">
                                                        <div class="filter-swatch">
                                                            <span class="swatch__value bg_color_cyan lazyload"></span>
                                                        </div>
                                                        cyan</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag color green">
                                                        <div class="filter-swatch">
                                                            <span class="swatch__value bg_color_green lazyload"></span>
                                                        </div>
                                                        green</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag color grey">
                                                        <div class="filter-swatch">
                                                            <span class="swatch__value bg_color_grey lazyload"></span>
                                                        </div>
                                                        grey</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag color pink">
                                                        <div class="filter-swatch">
                                                            <span class="swatch__value bg_color_pink lazyload"></span>
                                                        </div>
                                                        pink</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag color pink clay">
                                                        <div class="filter-swatch">
                                                            <span class="swatch__value bg_color_pink-clay lazyload"></span>
                                                        </div>
                                                        pink clay</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag color sliver">
                                                        <div class="filter-swatch">
                                                            <span class="swatch__value bg_color_sliver lazyload"></span>
                                                        </div>
                                                        sliver</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag color white">
                                                        <div class="filter-swatch">
                                                            <span class="swatch__value bg_color_white lazyload"></span>
                                                        </div>
                                                        white</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag color white cream">
                                                        <div class="filter-swatch">
                                                            <span class="swatch__value bg_color_white-cream lazyload" data-bg="<%=request.getContextPath()%>/templates/public/assets/images/shop/color-white-cream.jpg"></span>
                                                        </div>
                                                        white cream</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag color beige">
                                                        <div class="filter-swatch">
                                                            <span class="swatch__value bg_color_beige lazyload"></span>
                                                        </div>
                                                        beige</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag color blue">
                                                        <div class="filter-swatch">
                                                            <span class="swatch__value bg_color_blue lazyload"></span>
                                                        </div>
                                                        blue</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag color brown">
                                                        <div class="filter-swatch">
                                                            <span class="swatch__value bg_color_brown lazyload"></span>
                                                        </div>
                                                        brown</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-3 widget">
                                        <h5 class="widget-title">By Price</h5>
                                        <div class="loke_scroll">
                                            <ul class="nt_filter_block nt_filter_styleck css_ntbar" data-filter_condition="or">
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag price $50-$100">$50-$100</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag price $100-$150">$100-$150</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag price $150-$200">$150-$200</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag price $250-$300">$250-$300</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag price $350-$400">$350-$400</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag price $450-$500">$450-$500</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-3 widget">
                                        <h5 class="widget-title">By Size</h5>
                                        <div class="loke_scroll">
                                            <ul class="nt_filter_block nt_filter_styleck css_ntbar" data-filter_condition="and">
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag size s">s</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag size m">m</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag size l">l</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag size xs">xs</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag size xl">xl</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag size xxl">xxl</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-3 widget">
                                        <h5 class="widget-title">By Brand</h5>
                                        <div class="loke_scroll">
                                            <ul class="nt_filter_block nt_filter_styleck css_ntbar" data-filter_condition="and">
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag vendor ck">ck</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag vendor h&amp;m">h&amp;m</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag vendor kalles">kalles</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag vendor levi's">levi's</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag vendor monki">monki</a>
                                                </li>
                                                <li>
                                                    <a href="#" aria-label="Narrow selection to products matching tag vendor nike">nike</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-12 tc mt__20 mb__20 dn">
                                        <a class="button clear_filter_js" href="#">Clear All Filter</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--end filter panel area-->

            <!--product section-->
            <div class="row">
                <div class="col-lg-12 col-12">
                    <div class="kalles-section tp_se_cdt">

                        <!--filter result-->
                        <div class="result_clear mt__30 mb__20 dn">
                            <div class="sp_result_html dib cb clear_filter"><span class="cp">20</span> Products Found
                            </div>
                            <a class="clear_filter dib" href="#">Clear All Filter</a><a href="#" class="clear_filter dib bf_icons" aria-label="Remove tag Size  M">Size M</a><a href="#" class="clear_filter dib bf_icons" aria-label="Remove tag Color  Cyan">Color Cyan</a><a href="#" class="clear_filter dib bf_icons" aria-label="Remove tag Vendor  Kalles">Vendor Kalles</a>
                        </div>
                        <!--end filter result-->

                        <!--products list-->
                        <div class="on_list_view_false products nt_products_holder row fl_center row_pr_1 cdt_des_1 round_cd_false nt_cover ratio_nt position_8 space_30 nt_default">
                        <%	ArrayList<Products> listProduct = null;
				 			if(request.getAttribute("pronull")!=null){
				 			out.print("<p>Hiện tại chưa có sản phẩm nào !!!</p>");
				 		}
				 			if(request.getAttribute("listProduct")!=null){
				 			listProduct = new ArrayList<Products>((ArrayList<Products>)request.getAttribute("listProduct"));
				 			for(Products pro : listProduct){
				 			
				 		%>
                            <div class="col-lg-3 col-md-3 col-6 pr_animated done mt__30 pr_grid_item product nt_pr desgin__1">
                                <div class="product-inner pr">
                                    <div class="product-image pr oh lazyload">
                                        <span class="tc nt_labels pa pe_none cw"><span class="nt_label new">New</span></span>
                                        <a class="d-block" href="<%=request.getContextPath()%>/chi-tiet-san-pham?id=<%=pro.getId()%>">
                                            <div class="pr_lazy_img main-img nt_img_ratio nt_bg_lz lazyload padding-top__127_571" data-bgset="<%=request.getContextPath()%>/images/products/<%=pro.getImage()%>"></div>
                                        </a>
                                        <div class="hover_img pa pe_none t__0 l__0 r__0 b__0 op__0">
                                            <div class="pr_lazy_img back-img pa nt_bg_lz lazyload padding-top__127_571" data-bgset="<%=request.getContextPath()%>/images/products/<%=pro.getImage()%>"></div>
                                        </div>
                                        
                                        <div class="hover_button op__0 tc pa flex column ts__03">
                                            <a class="pr nt_add_qv js_add_qv cd br__40 pl__25 pr__25 bgw tc dib ttip_nt tooltip_top_left" href="<%=request.getContextPath()%>/chi-tiet-san-pham?id=<%=pro.getId()%>"><span class="tt_txt">View</span><i class="iccl iccl-eye"></i><span>View	</span></a>
                                        </div>
                                        <div class="product-attr pa ts__03 cw op__0 tc">
                                            <p class="truncate mg__0 w__100">XS, S, M, L, XL</p>
                                        </div>
                                    </div>
                                    <div class="product-info mt__15">
                                        <h3 class="product-title pr fs__14 mg__0 fwm">
                                            <a class="cd chp" href="product-detail-layout-01.html"><%=pro.getName()%></a>
                                        </h3>
                                        <span class="price dib mb__5">$<%=pro.getMoney()%></span>
                                    </div>
                                </div>
                            </div>
                            <%}
				 	} %>
                        </div>
                        <!--end products list-->
						
						<%
						int currentPage = (Integer)request.getAttribute("currentPage");
						int numberOfPages = (Integer)request.getAttribute("numberOfPages");
						if(listProduct != null && listProduct.size() > 0){
						%>
                        <!--navigation-->
                        <div class="products-footer tc mt__40">
                            <nav class="nt-pagination w__100 tc paginate_ajax">
                                <ul class="pagination-page page-numbers">
                                	<li><a class="prev page-numbers" href="#">Prev</a></li>
	                                <%	
	                                	String active ="";
	                                	for(int i = 1 ; i < numberOfPages; i++){
	                                		if(currentPage == i){
	                                			active ="current";
	                                		}%>
	                                		 <li><a class="page-numbers <%=active %>" href="<%=request.getContextPath()%>/cua-hang?id=1&page=<%=i%>"><%=i %></a></li>
	                                	<%
	                                	}
	                                %>
                                   
                                    <li><a class="next page-numbers" href="#">Next</a></li>
                                </ul>
                            </nav>
                        </div>
                        <!--end navigation-->
						<%} %>
                    </div>
                </div>
            </div>
            <!--end product section-->

        </div>

    </div>

    <!-- footer -->
    <footer id="nt_footer" class="bgbl footer-1">
        <div id="kalles-section-footer_top" class="kalles-section footer__top type_instagram">
            <div class="footer__top_wrap footer_sticky_false footer_collapse_true nt_bg_overlay pr oh pb__30 pt__80">
                <div class="container pr z_100">
                    <div class="row">
                        <div class="col-lg-3 col-md-6 col-12 mb__50 order-lg-1 order-1">
                            <div class="widget widget_text widget_logo">
                                <h3 class="widget-title fwsb flex al_center fl_between fs__16 mg__0 mb__30 dn_md">
                                    <span class="txt_title">Get in touch</span>
                                    <span class="nav_link_icon ml__5"></span>
                                </h3>
                                <div class="widget_footer">
                                    <div class="footer-contact">
                                        <p>
                                            <a class="d-block" href="index.html">
                                                <img class="w__100 mb__15 lazyload max-width__95px" src="data:image/svg+xml,%3Csvg%20viewBox%3D%220%200%20220%2066%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3C%2Fsvg%3E" alt="Kalles Template" data-src="<%=request.getContextPath()%>/templates/public/assets/images/svg/kalles.svg">
                                            </a>
                                        </p>
                                        <p>
                                            <i class="pegk pe-7s-map-marker"> </i><span>184 Main Rd E, St Albans <br> <span class="pl__30">VIC 3021, Australia</span></span>
                                        </p>
                                        <p><i class="pegk pe-7s-mail"></i>
                                            <span><a href="https://themes.the4.co/cdn-cgi/l/email-protection#dfbcb0b1abbebcab9fbcb0b2afbeb1a6f1bcb0b2"><span class="__cf_email__" data-cfemail="04676b6a7065677044676b6974656a7d2a676b69">[email&#160;protected]</span></a></span>
                                        </p>
                                        <p><i class="pegk pe-7s-call"></i> <span>+001 2233 456 </span></p>
                                        <div class="nt-social">
                                            <a href="https://www.facebook.com/" class="facebook cb ttip_nt tooltip_top">
                                                <span class="tt_txt">Follow on Facebook</span>
                                                <i class="facl facl-facebook"></i>
                                            </a>
                                            <a href="https://twitter.com/" class="twitter cb ttip_nt tooltip_top">
                                                <span class="tt_txt">Follow on Twitter</span>
                                                <i class="facl facl-twitter"></i>
                                            </a>
                                            <a href="https://www.instagram.com/" class="instagram cb ttip_nt tooltip_top">
                                                <span class="tt_txt">Follow on Instagram</span>
                                                <i class="facl facl-instagram"></i>
                                            </a>
                                            <a href="https://www.linkedin.com/" class="linkedin cb ttip_nt tooltip_top">
                                                <span class="tt_txt">Follow on Linkedin</span>
                                                <i class="facl facl-linkedin"></i>
                                            </a>
                                            <a href="https://www.pinterest.com/" class="pinterest cb ttip_nt tooltip_top">
                                                <span class="tt_txt">Follow on Pinterest</span>
                                                <i class="facl facl-pinterest"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-12 mb__50 order-lg-2 order-1">
                            <div class="widget widget_nav_menu">
                                <h3 class="widget-title fwsb flex al_center fl_between fs__16 mg__0 mb__30">
                                    <span class="txt_title">Categories</span>
                                    <span class="nav_link_icon ml__5"></span>
                                </h3>
                                <div class="menu_footer widget_footer">
                                    <ul class="menu">
                                        <li class="menu-item">
                                            <a href="shop-filter-options.html">Men</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="shop-filter-options.html">Women</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="shop-1600px-layout.html">Accessories</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="shop-1600px-layout.html">Shoes</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="shop-1600px-layout.html">Denim</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="shop-1600px-layout.html">Dress</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-12 mb__50 order-lg-3 order-1">
                            <div class="widget widget_nav_menu">
                                <h3 class="widget-title fwsb flex al_center fl_between fs__16 mg__0 mb__30">
                                    <span class="txt_title">Infomation</span>
                                    <span class="nav_link_icon ml__5"></span>
                                </h3>
                                <div class="menu_footer widget_footer">
                                    <ul class="menu">
                                        <li class="menu-item">
                                            <a href="about-us.html">About Us</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="contact-us.html">Contact Us</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="terms-conditions.html">Terms &amp; Conditions</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="returns-exchanges.html">Returns &amp; Exchanges</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="shipping-delivery.html">Shipping &amp; Delivery</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="privacy-policy.html">Privacy Policy</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-12 mb__50 order-lg-4 order-1">
                            <div class="widget widget_nav_menu">
                                <h3 class="widget-title fwsb flex al_center fl_between fs__16 mg__0 mb__30">
                                    <span class="txt_title">Useful links</span>
                                    <span class="nav_link_icon ml__5"></span>
                                </h3>
                                <div class="menu_footer widget_footer">
                                    <ul class="menu">
                                        <li class="menu-item">
                                            <a href="store-location.html">Store Location</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="blog-grid.html">Latest News</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="my-account.html">My Account</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="size-guide.html">Size Guide</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="faqs-2.html">FAQs 2</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="faqs.html">FAQs</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-12 mb__50 order-lg-5 order-1">
                            <div class="widget widget_text">
                                <h3 class="widget-title fwsb flex al_center fl_between fs__16 mg__0 mb__30">
                                    <span class="txt_title">Newsletter Signup</span>
                                    <span class="nav_link_icon ml__5"></span>
                                </h3>
                                <div class="widget_footer newl_des_1">
                                    <p>Subscribe to our newsletter and get 10% off your first purchase</p>
                                    <form id="contact_form" class="mc4wp-form pr z_100">
                                        <div class="mc4wp-form-fields">
                                            <div class="signup-newsletter-form row no-gutters pr oh ">
                                                <div class="col col_email">
                                                    <input type="email" name="email" placeholder="Your email address" value="" class="tc tl_md input-text" required="required">
                                                </div>
                                                <div class="col-auto">
                                                    <button type="submit" class="btn_new_icon_false w__100 submit-btn truncate">
                                                        <span>Subscribe</span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <p class="mt__20">
                                        <img class="w__100 lazyload w__max-width__197" data-src="<%=request.getContextPath()%>/templates/public/assets/images/payment2.png" src="data:image/svg+xml,%3Csvg%20viewBox%3D%220%200%20197%2020%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3C%2Fsvg%3E" alt="">
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="kalles-section-footer_bot" class="kalles-section footer__bot">
            <div class="footer__bot_wrap pt__20 pb__20">
                <div class="container pr tc">
                    <div class="row">
                        <div class="col-lg-6 col-md-12 col-12 col_1">Copyright © 2021
                            <span class="cp">Kalles</span> all rights reserved. Powered by <a href="https://themes.the4.co/kalles-html">The4</a></div>
                        <div class="col-lg-6 col-md-12 col-12 col_2">
                            <ul id="footer-menu" class="clearfix">
                                <li class="menu-item">
                                    <a href="shop-filter-options.html">Shop</a>
                                </li>
                                <li class="menu-item">
                                    <a href="about-us.html">About Us</a>
                                </li>
                                <li class="menu-item">
                                    <a href="contact-us.html">Contact</a>
                                </li>
                                <li class="menu-item">
                                    <a href="blog-grid.html">Blog</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- end footer -->

</div>

<

<!-- back to top button-->
<a id="nt_backtop" class="pf br__50 z__100 des_bt1" href="#"><span class="tc br__50 db cw"><i class="pr pegk pe-7s-angle-up"></i></span></a>	

<%@include file="/templates/public/inc/footer.jsp" %>