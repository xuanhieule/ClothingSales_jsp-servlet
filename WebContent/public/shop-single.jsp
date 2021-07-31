<%@page import="java.util.ArrayList"%>
<%@page import="model.bean.Products"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/public/inc/header.jsp"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/templates/public/assets/css/single-masonry-theme.css">
 <link rel="stylesheet" href="<%=request.getContextPath()%>/templates/public/assets/css/single-product.css">
 <%
	if (request.getAttribute("infor") != null) {
		Products pro = (Products) request.getAttribute("infor");
 %>
         <div class="sp-single sp-single-1 des_pr_layout_1 mb__60">

            <!-- breadcrumb -->
            <div class="bgbl pt__20 pb__20 lh__1">
                <div class="container">
                    <div class="row al_center">
                        <div class="col">
                            <nav class="sp-breadcrumb">
                                <a href="index.html">Home</a><i class="facl facl-angle-right"></i><a href="shop-filter-sidebar.html">New Arrival</a><i class="facl facl-angle-right"></i><%=pro.getName()%>
                            </nav>
                        </div>
                        <div class="col-auto flex al_center">
                            <a href="product-detail-layout-01.html" class="pl__5 pr__5 fs__18 cd chp ttip_nt tooltip_bottom_left"><i class="las la-angle-left"></i><span class="tt_txt">Ridley High Waist</span></a>
                            <a href="product-detail-layout-01.html" class="pl__5 pr__5 fs__20 cd chp ttip_nt tooltip_bottom_left"><i class="fwb iccl iccl-grid fs__15"></i><span class="tt_txt">Back to New Arrival</span></a>
                            <a href="product-detail-layout-01.html" class="pl__5 pr__5 fs__18 cd chp ttip_nt tooltip_bottom_left"><i class="las la-angle-right"></i><span class="tt_txt">Cluse La Boheme Rose Gold</span></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end breadcrumb -->

            <div class="container container_cat cat_default">
                <div class="row product mt__40">
                    <div class="col-md-12 col-12 thumb_left">
                        <div class="row mb__50">

                            <!-- product thumbnails -->
                            <div class="col-md-6 col-12 pr product-images img_action_zoom pr_sticky_img kalles_product_thumnb_slide">
                                <div class="row theiaStickySidebar">
                                    <div class="col-12 col-lg col_thumb">
                                        <div class="p-thumb p-thumb_ppr images sp-pr-gallery equal_nt nt_contain ratio_imgtrue position_8 nt_slider pr_carousel" data-flickity='{"initialIndex": ".media_id_001","fade":true,"draggable":">1","cellAlign": "center","wrapAround": true,"autoPlay": false,"prevNextButtons":true,"adaptiveHeight": true,"imagesLoaded": false, "lazyLoad": 0,"dragThreshold" : 6,"pageDots": false,"rightToLeft": false }'>
                                            <div class="img_ptw p_ptw p-item sp-pr-gallery__img w__100 nt_bg_lz lazyload padding-top__127_66 media_id_001" data-mdid="001" data-height="1440" data-width="1128" data-ratio="0.7833333333333333" data-mdtype="image" data-src="<%=request.getContextPath()%>/images/products/<%=pro.getImage()%>" data-bgset="<%=request.getContextPath()%>/images/products/<%=pro.getImage()%>" data-cap="Cream women pants - shoot 1"></div>
                                            <div class="img_ptw p_ptw p-item sp-pr-gallery__img w__100 nt_bg_lz lazyload padding-top__127_66 media_id_002" data-mdid="002" data-height="1440" data-width="1128" data-ratio="0.7833333333333333" data-mdtype="image" data-src="<%=request.getContextPath()%>/images/products/<%=pro.getImage()%>" data-bgset="<%=request.getContextPath()%>/images/products/<%=pro.getImage()%>" data-cap="Cream women pants - shoot 2"></div>
                                            <div class="img_ptw p_ptw p-item sp-pr-gallery__img w__100 nt_bg_lz lazyload padding-top__127_66 media_id_003" data-mdid="003" data-height="1440" data-width="1128" data-ratio="0.7833333333333333" data-mdtype="image" data-src="<%=request.getContextPath()%>/images/products/<%=pro.getImage()%>" data-bgset="<%=request.getContextPath()%>/images/products/<%=pro.getImage()%>" data-cap="Cream women pants - shoot 3"></div>
                                        </div>
                                        <div class="p_group_btns pa flex">
                                            <button class="br__40 tc flex al_center fl_center show_btn_pr_gallery ttip_nt tooltip_top_left">
                                                <i class="las la-expand-arrows-alt"></i><span class="tt_txt">Click to enlarge</span>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="col-12 col-lg-auto col_nav nav_medium t4_show">
                                        <div class="p-nav ratio_imgtrue row equal_nt nt_cover position_8 nt_slider pr_carousel" data-flickityjs='{"initialIndex": ".media_id_001","cellSelector": ".n-item:not(.is_varhide)","cellAlign": "left","asNavFor": ".p-thumb","wrapAround": true,"draggable": ">1","autoPlay": 0,"prevNextButtons": 0,"percentPosition": 1,"imagesLoaded": 0,"pageDots": 0,"groupCells": 3,"rightToLeft": false,"contain":  1,"freeScroll": 0}'></div>
                                    </div>
                                    <div class="dt_img_zoom pa t__0 r__0 dib"></div>
                                </div>
                            </div>
                            <!-- end product thumbnails -->

                            <!-- product info -->
                            <div class="col-md-6 col-12 product-infors pr_sticky_su">
                                <div class="theiaStickySidebar">
                                    <div class="kalles-section-pr_summary kalles-section summary entry-summary mt__30">
                                        <h1 class="product_title entry-title fs__16"><%=pro.getName()%></h1>
                                        <div class="flex wrap fl_between al_center price-review">
                                            <p class="price_range" id="price_ppr">$<%=pro.getMoney()%></p>
                                            <a href="#tab_reviews_product" class="rating_sp_kl dib">
                                                <div class="kalles-rating-result">
                                                    <span class="kalles-rating-result__pipe">
                                                        <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                        <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                        <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                        <span class="kalles-rating-result__start kalles-rating-result__start--big active"></span>
                                                        <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                    </span>
                                                    <span class="kalles-rating-result__number">(12 reviews)</span>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="pr_short_des">
                                            <p class="mg__0"><%=pro.getContent()%></p>
                                        </div>
                                        <div class="btn-atc atc-slide btn_des_1 btn_txt_3">
                                            <div id="callBackVariant_ppr">
                                                <div class="nt_cart_form variations_form variations_form_ppr">
                                                    <div class="variations_button in_flex column w__100 buy_qv_false">
                                                        <div class="flex wrap">                                                      	
                                                         	<form action="<%=request.getContextPath()%>/gio-hang" class="cart" method="post">
																	<input name="id" value=<%=pro.getId()%> type="hidden">
																	<div class="quantity pr mr__10 order-1 qty__true d-inline-block" id="sp_qty_ppr">
		                                                                <input type="number" class="input-text qty text tc qty_pr_js qty_cart_js" name="qty" value="1" >
		                                                                <div class="qty tc fs__14">
		                                                                    <button type="button" class="plus db cb pa pd__0 pr__15 tr r__0">
		                                                                        <i class="facl facl-plus"></i></button>
		                                                                    <button type="button" class="minus db cb pa pd__0 pl__15 tl l__0">
		                                                                        <i class="facl facl-minus"></i></button>
		                                                                </div>
		                                                            </div>
																	<div class="nt_add_w ts__03 pa order-3">
		                                                                <a href="#" class="wishlistadd cb chp ttip_nt tooltip_top_left">
		                                                                    <span class="tt_txt">Add to Wishlist</span><i class="facl facl-heart-o"></i>
		                                                                </a>
		                                                            </div>
		                                                            <button type="submit" >
		                                                                <span class="txt_add ">Add to cart</span></button>
																</div>
															</form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="trust_seal_ppr" class="pr_trust_seal tl_md tc">
                                            <img class="img_tr_s1 lazyload w__100 max-width__330px" src="data:image/svg+xml,%3Csvg%20viewBox%3D%220%200%202244%20285%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3C%2Fsvg%3E" alt="" data-srcset="<%=request.getContextPath()%>/templates/public/assets/images/single-product/trust_img2.png"/>
                                        </div>
                                        <div class="extra-link mt__35 fwsb">
                                            <a class="ajax_pp_js cd chp mr__20" href="#" data-id="#popup-size-guide">Size Guide</a>
                                            <a class="ajax_pp_js cd chp mr__20" href="#" data-id="#popup-delivery-and-return">Delivery &amp; Return</a>
                                            <a class="ajax_pp_js cd chp" href="#" data-id="#popup-ask-a-question">Ask a Question</a>
                                        </div>
                                        <div class="product_meta">
                                            <span class="sku_wrapper"><span class="cb">SKU:</span> <span class="sku value cg d-inline-block">P15-2</span></span>
                                            <span class="posted_in"><span class="cb">Categories:</span> <a href="shop-filter-options.html" class="cg"><%=pro.getCategory_name()%></a></span>
                                            <span class="tagged_as"><span class="cb">Tags:</span> <a href="shop-filter-options.html" class="cg">Color Black</a>, <a href="shop-filter-options.html" class="cg">Color Grey</a>, <a href="shop-filter-options.html" class="cg">Color Pink</a>, <a href="shop-filter-options.html" class="cg">Price $7-$50</a>, <a href="shop-filter-options.html" class="cg">Size L</a>, <a href="shop-filter-options.html" class="cg">Size M</a>, <a href="shop-filter-options.html" class="cg">Size S</a></span>
                                        </div>
                                        <div class="social-share tc">
                                            <div class="at-share-btn-elements kalles-social-media d-block text-left fs__0 lh__1">
                                                <a href="https://www.facebook.com/" class="at-icon-wrapper at-share-btn at-svc-facebook bg-white kalles-social-media__btn">
                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" class="at-icon at-icon-facebook">
                                                        <g>
                                                            <path d="M22 5.16c-.406-.054-1.806-.16-3.43-.16-3.4 0-5.733 1.825-5.733 5.17v2.882H9v3.913h3.837V27h4.604V16.965h3.823l.587-3.913h-4.41v-2.5c0-1.123.347-1.903 2.198-1.903H22V5.16z" fill-rule="evenodd"></path>
                                                        </g>
                                                    </svg>
                                                </a>
                                                <a href="https://twitter.com/" class="at-icon-wrapper at-share-btn at-svc-twitter bg-white kalles-social-media__btn">
                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" class="at-icon at-icon-twitter">
                                                        <g>
                                                            <path d="M27.996 10.116c-.81.36-1.68.602-2.592.71a4.526 4.526 0 0 0 1.984-2.496 9.037 9.037 0 0 1-2.866 1.095 4.513 4.513 0 0 0-7.69 4.116 12.81 12.81 0 0 1-9.3-4.715 4.49 4.49 0 0 0-.612 2.27 4.51 4.51 0 0 0 2.008 3.755 4.495 4.495 0 0 1-2.044-.564v.057a4.515 4.515 0 0 0 3.62 4.425 4.52 4.52 0 0 1-2.04.077 4.517 4.517 0 0 0 4.217 3.134 9.055 9.055 0 0 1-5.604 1.93A9.18 9.18 0 0 1 6 23.85a12.773 12.773 0 0 0 6.918 2.027c8.3 0 12.84-6.876 12.84-12.84 0-.195-.005-.39-.014-.583a9.172 9.172 0 0 0 2.252-2.336" fill-rule="evenodd"></path>
                                                        </g>
                                                    </svg>
                                                </a>
                                                <a href="https://www.google.com/gmail/about" class="at-icon-wrapper at-share-btn at-svc-email bg-white">
                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" class="at-icon at-icon-email kalles-social-media__btn">
                                                        <g>
                                                            <g fill-rule="evenodd"></g>
                                                            <path d="M27 22.757c0 1.24-.988 2.243-2.19 2.243H7.19C5.98 25 5 23.994 5 22.757V13.67c0-.556.39-.773.855-.496l8.78 5.238c.782.467 1.95.467 2.73 0l8.78-5.238c.472-.28.855-.063.855.495v9.087z"></path>
                                                            <path d="M27 9.243C27 8.006 26.02 7 24.81 7H7.19C5.988 7 5 8.004 5 9.243v.465c0 .554.385 1.232.857 1.514l9.61 5.733c.267.16.8.16 1.067 0l9.61-5.733c.473-.283.856-.96.856-1.514v-.465z"></path>
                                                        </g>
                                                    </svg>
                                                </a>
                                                <a href="https://www.pinterest.com/" class="at-icon-wrapper at-share-btn at-svc-pinterest_share bg-white kalles-social-media__btn">
                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" class="at-icon at-icon-pinterest_share">
                                                        <g>
                                                            <path d="M7 13.252c0 1.81.772 4.45 2.895 5.045.074.014.178.04.252.04.49 0 .772-1.27.772-1.63 0-.428-1.174-1.34-1.174-3.123 0-3.705 3.028-6.33 6.947-6.33 3.37 0 5.863 1.782 5.863 5.058 0 2.446-1.054 7.035-4.468 7.035-1.232 0-2.286-.83-2.286-2.018 0-1.742 1.307-3.43 1.307-5.225 0-1.092-.67-1.977-1.916-1.977-1.692 0-2.732 1.77-2.732 3.165 0 .774.104 1.63.476 2.336-.683 2.736-2.08 6.814-2.08 9.633 0 .87.135 1.728.224 2.6l.134.137.207-.07c2.494-3.178 2.405-3.8 3.533-7.96.61 1.077 2.182 1.658 3.43 1.658 5.254 0 7.614-4.77 7.614-9.067C26 7.987 21.755 5 17.094 5 12.017 5 7 8.15 7 13.252z" fill-rule="evenodd"></path>
                                                        </g>
                                                    </svg>
                                                </a>
                                                <a href="https://www.messenger.com/" class="at-icon-wrapper at-share-btn at-svc-messenger bg-white kalles-social-media__btn">
                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" class="at-icon at-icon-messenger">
                                                        <g>
                                                            <path d="M16 6C9.925 6 5 10.56 5 16.185c0 3.205 1.6 6.065 4.1 7.932V28l3.745-2.056c1 .277 2.058.426 3.155.426 6.075 0 11-4.56 11-10.185C27 10.56 22.075 6 16 6zm1.093 13.716l-2.8-2.988-5.467 2.988 6.013-6.383 2.868 2.988 5.398-2.987-6.013 6.383z" fill-rule="evenodd"></path>
                                                        </g>
                                                    </svg>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- end product info -->

                        </div>
                    </div>
                </div>
            </div>

            <!-- description and review -->
            <div id="wrap_des_pr">
                <div class="container container_des">
                    <div class="kalles-section-pr_description kalles-section kalles-tabs sp-tabs nt_section">

                        <!-- tab buttons -->
                        <ul class="ul_none ul_tabs is-flex fl_center fs__16 des_mb_2 des_style_1">
                            <li class="tab_title_block active">
                                <a class="db cg truncate pr" href="#tab_product_description">Description</a></li>
                            <li class="tab_title_block">
                                <a class="db cg truncate pr" href="#tab_additional_information">Additional Information</a>
                            </li>
                            <li class="tab_title_block">
                                <a class="db cg truncate pr" href="#tab_warranty_and_shipping">Warranty &amp; Shipping</a>
                            </li>
                            <li class="tab_title_block">
                                <a class="db cg truncate pr" href="#tab_wash_and_care">Wash &amp; Care</a></li>
                            <li class="tab_title_block">
                                <a class="db cg truncate pr" href="#tab_reviews_product">Reviews</a>
                            </li>
                        </ul>
                        <!-- end tab buttons -->

                        <!-- tab contents -->
                        <div class="panel entry-content sp-tab des_mb_2 des_style_1 active" id="tab_product_description">
                            <div class="js_ck_view"></div>
                            <div class="heading bgbl dn">
                                <a class="tab-heading flex al_center fl_between pr cd chp fwm" href="#tab_product_description"><span class="txt_h_tab">Description</span><span class="nav_link_icon ml__5"></span></a>
                            </div>
                            <div class="sp-tab-content">
                                <p class="mb__40 cb">
                                    Design inspiration lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi commodo, ipsum sed pharetra gravida, orci magna rhoncus neque, id pulvinar odio lorem non turpis. Nullam sit amet enim. Suspendisse
                                    id velit vitae ligula volutpat condimentum. Aliquam erat volutpat. Sed quis velit. Nulla facilisi. Nulla libero. Vivamus pharetra posuere sapien. Nam consectetuer. Sed aliquam, nunc eget euismod ullamcorper, lectus
                                    nunc ullamcorper orci.
                                </p>
                                <div class="inc_lz inc_pr_laz lazyload">
                                    <div class="kalles-section nt_section type_instagram_shop type_pin_owl">
                                        <div class="nt_se_instagram_shop nt_full mt__30 mb__50">
                                            <div class="wrap_title mb__40 des_title_1">
                                                <h3 class="section-title tc pr flex fl_center al_center fs__24 title_1"><span class="mr__10 ml__10">Shop the look</span></h3>
                                            </div>
                                            <div class="ins_shop_wrap row ins_rounded_0 ins_spaces_0 nt_cover ratio1_1 position_8 equal_nt js_carousel nt_slider prev_next_0 btn_owl_1 dot_owl_1 dot_color_1 btn_vi_1 flickity_prev_disable flickity_next_enable" data-flickity='{"imagesLoaded": 0,"adaptiveHeight": 1, "contain": 1, "groupCells": "100%", "dragThreshold" : 5, "cellAlign": "left","wrapAround": false,"prevNextButtons": true,"percentPosition": 1,"pageDots": false, "autoPlay" : 0, "pauseAutoPlayOnHover" : true, "rightToLeft": false }'>
                                                <div class="pin__wr_js col_ins col-lg-3 col-md-3 col-4 pr_animated done item pr oh">
                                                    <a href="#" class="js_add_qv hotspot_ins pa op__0 dark spin-position__01"><span>1</span></a>
                                                    <div class="wrap_ins_img db pr oh">
                                                        <div class="lazyload nt_bg_lz pr_lazy_img" data-bgset="<%=request.getContextPath()%>/templates/public/assets/images/instagram/ins1_14.jpg"></div>
                                                    </div>
                                                </div>
                                                <div class="pin__wr_js col_ins col-lg-3 col-md-3 col-4 pr_animated done item pr oh">
                                                    <a href="#" class="js_add_qv hotspot_ins pa op__0 dark spin-position__02"><span>1</span></a>
                                                    <div class="wrap_ins_img db pr oh">
                                                        <div class="lazyload nt_bg_lz pr_lazy_img" data-bgset="<%=request.getContextPath()%>/templates/public/assets/images/instagram/ins1_8.jpg"></div>
                                                    </div>
                                                </div>
                                                <div class="pin__wr_js col_ins col-lg-3 col-md-3 col-4 pr_animated done item pr oh">
                                                    <a href="#" class="js_add_qv hotspot_ins pa op__0 dark spin-position__03"><span>1</span></a>
                                                    <a href="#" class="js_add_qv hotspot_ins pa op__0 dark spin-position__04"><span>2</span></a>
                                                    <div class="wrap_ins_img db pr oh">
                                                        <div class="lazyload nt_bg_lz pr_lazy_img" data-bgset="<%=request.getContextPath()%>/templates/public/assets/images/instagram/ins1_1.jpg"></div>
                                                    </div>
                                                </div>
                                                <div class="pin__wr_js col_ins col-lg-3 col-md-3 col-4 pr_animated done item pr oh">
                                                    <a href="#" class="js_add_qv hotspot_ins pa op__0 dark spin-position__05"><span>1</span></a>
                                                    <div class="wrap_ins_img db pr oh">
                                                        <div class="lazyload nt_bg_lz pr_lazy_img" data-bgset="<%=request.getContextPath()%>/templates/public/assets/images/instagram/ins1_6.jpg"></div>
                                                    </div>
                                                </div>
                                                <div class="pin__wr_js col_ins col-lg-3 col-md-3 col-4 pr_animated done item pr oh">
                                                    <a href="#" class="js_add_qv hotspot_ins pa op__0 dark spin-position__06"><span>1</span></a>
                                                    <div class="wrap_ins_img db pr oh">
                                                        <div class="lazyload nt_bg_lz pr_lazy_img" data-bgset="<%=request.getContextPath()%>/templates/public/assets/images/instagram/ins1_5.jpg"></div>
                                                    </div>
                                                </div>
                                                <div class="pin__wr_js col_ins col-lg-3 col-md-3 col-4 pr_animated done item pr oh">
                                                    <a href="#" class="js_add_qv hotspot_ins pa op__0 dark spin-position__07"><span>1</span></a>
                                                    <div class="wrap_ins_img db pr oh">
                                                        <div class="lazyload nt_bg_lz pr_lazy_img" data-bgset="<%=request.getContextPath()%>/templates/public/assets/images/instagram/ins1_4.jpg"></div>
                                                    </div>
                                                </div>
                                                <div class="pin__wr_js col_ins col-lg-3 col-md-3 col-4 pr_animated done item pr oh">
                                                    <a href="#" class="js_add_qv hotspot_ins pa op__0 dark spin-position__08"><span>1</span></a>
                                                    <div class="wrap_ins_img db pr oh">
                                                        <div class="lazyload nt_bg_lz pr_lazy_img" data-bgset="<%=request.getContextPath()%>/templates/public/assets/images/instagram/ins1_2.jpg"></div>
                                                    </div>
                                                </div>
                                                <div class="pin__wr_js col_ins col-lg-3 col-md-3 col-4 pr_animated done item pr oh">
                                                    <a href="#" class="js_add_qv hotspot_ins pa op__0 dark spin-position__09"><span>1</span></a>
                                                    <div class="wrap_ins_img db pr oh">
                                                        <div class="lazyload nt_bg_lz pr_lazy_img" data-bgset="<%=request.getContextPath()%>/templates/public/assets/images/instagram/ins1_13.jpg"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="panel entry-content sp-tab des_mb_2 des_style_1 dn" id="tab_additional_information">
                            <div class="js_ck_view"></div>
                            <div class="heading bgbl dn">
                                <a class="tab-heading flex al_center fl_between pr cd chp fwm" href="#tab_additional_information"><span class="txt_h_tab">Additional Information</span><span class="nav_link_icon ml__5"></span></a>
                            </div>
                            <div class="sp-tab-content">
                                <table class="pr_attrs">
                                    <tbody>
                                    <tr class="attr_pa_color">
                                        <th class="attr__label cb">Color</th>
                                        <td class="attr__value cb">
                                            <p>Grey, Pink, Black</p>
                                        </td>
                                    </tr>
                                    <tr class="attr_pa_size">
                                        <th class="attr__label cb">Size</th>
                                        <td class="attr__value cb">
                                            <p>S, M, L</p>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="panel entry-content sp-tab des_mb_2 des_style_1 dn" id="tab_warranty_and_shipping">
                            <div class="js_ck_view"></div>
                            <div class="heading bgbl dn">
                                <a class="tab-heading flex al_center fl_between pr cd chp fwm" href="#tab_warranty_and_shipping"><span class="txt_h_tab">Warranty &amp; Shipping</span><span class="nav_link_icon ml__5"></span></a>
                            </div>
                            <div class="sp-tab-content">
                                <div class="warranty-content cb">
                                    <h5 class="mt-0 mb__5"><b>Warranty</b></h5>
                                    <p class="mb__25">
                                        If issues experienced with the frame include a manufacturer's defect, or an issue resulting from an inherent flaw in the product, RAEN provides a 365 day warranty from the time of purchase. If you feel your
                                        product meets these requirements, please email
                                        <a href="https://themes.the4.co/cdn-cgi/l/email-protection#5f283e2d2d3e312b261f3b30323e3631713c3032"><span class="__cf_email__" data-cfemail="ff889e8d8d9e918b86bf9b90929e9691d19c9092">[email&#160;protected]</span></a> explaining the nature of your warranty claim and all necessary details.
                                        <br>
                                        Scratched lenses and physical damage are not covered by warranty. Unfortunately we do not manufacture or sell replacement lenses.
                                    </p>
                                    <h5 class="mt-0 mb__5"><b>Free FedEx 2-Day Shipping</b></h5>
                                    <p class="mb__25">Free FedEx 2-Day Shipping is available exclusively to the U.S. on orders over $150. FedEx 2-Day packages are delivered Monday through Friday.</p>
                                    <h5 class="mt-0 mb__5"><b>Free FedEx Ground Shipping</b></h5>
                                    <p class="mb__25">Free FedEx Ground Shipping is available exclusively to U.S. orders over $100.</p>
                                    <h5 class="mt-0 mb__5"><b>Free Returns</b></h5>
                                    <p class="mb__25">Free returns are available on all U.S. order within 14 days of shipment.</p>
                                    <p class="fwm"><i>*Free Shipping is not available with some promotions and other restrictions may apply.</i></p>
                                </div>
                            </div>
                        </div>
                        <div class="panel entry-content sp-tab des_mb_2 des_style_1 dn" id="tab_wash_and_care">
                            <div class="js_ck_view"></div>
                            <div class="heading bgbl dn">
                                <a class="tab-heading flex al_center fl_between pr cd chp fwm" href="#tab_wash_and_care"><span class="txt_h_tab">Wash and Care</span><span class="nav_link_icon ml__5"></span></a>
                            </div>
                            <div class="sp-tab-content">
                                <ul class="flex ul_none fl_center">
                                    <li class="l_custom_svg">
                                        <svg viewBox="0 0 40 40">
                                            <path fill="currentColor" d="M8.7 30.7h22.7c.3 0 .6-.2.7-.6l4-25.3c-.1-.4-.3-.7-.7-.8s-.7.2-.8.6L34 8.9l-3-1.1c-2.4-.9-5.1-.5-7.2 1-2.3 1.6-5.3 1.6-7.6 0-2.1-1.5-4.8-1.9-7.2-1L6 8.9l-.7-4.3c0-.4-.4-.7-.7-.6-.4.1-.6.4-.6.8l4 25.3c.1.3.3.6.7.6zm.8-21.6c2-.7 4.2-.4 6 .8 1.4 1 3 1.5 4.6 1.5s3.2-.5 4.6-1.5c1.7-1.2 4-1.6 6-.8l3.3 1.2-3 19.1H9.2l-3-19.1 3.3-1.2zM32 32H8c-.4 0-.7.3-.7.7s.3.7.7.7h24c.4 0 .7-.3.7-.7s-.3-.7-.7-.7zm0 2.7H8c-.4 0-.7.3-.7.7s.3.6.7.6h24c.4 0 .7-.3.7-.7s-.3-.6-.7-.6zm-17.9-8.9c-1 0-1.8-.3-2.4-.6l.1-2.1c.6.4 1.4.6 2 .6.8 0 1.2-.4 1.2-1.3s-.4-1.3-1.3-1.3h-1.3l.2-1.9h1.1c.6 0 1-.3 1-1.3 0-.8-.4-1.2-1.1-1.2s-1.2.2-1.9.4l-.2-1.9c.7-.4 1.5-.6 2.3-.6 2 0 3 1.3 3 2.9 0 1.2-.4 1.9-1.1 2.3 1 .4 1.3 1.4 1.3 2.5.3 1.8-.6 3.5-2.9 3.5zm4-5.5c0-3.9 1.2-5.5 3.2-5.5s3.2 1.6 3.2 5.5-1.2 5.5-3.2 5.5-3.2-1.6-3.2-5.5zm4.1 0c0-2-.1-3.5-.9-3.5s-1 1.5-1 3.5.1 3.5 1 3.5c.8 0 .9-1.5.9-3.5zm4.5-1.4c-.9 0-1.5-.8-1.5-2.1s.6-2.1 1.5-2.1 1.5.8 1.5 2.1-.5 2.1-1.5 2.1zm0-.8c.4 0 .7-.5.7-1.2s-.2-1.2-.7-1.2-.7.5-.7 1.2.3 1.2.7 1.2z"></path>
                                        </svg>
                                    </li>
                                    <li class="l_custom_svg">
                                        <svg viewBox="0 0 40 40">
                                            <path fill="currentColor" d="M36.7 31.1l-2.8-1.3-4.7-9.1 7.5-3.5c.4-.2.6-.6.4-1s-.6-.5-1-.4l-7.5 3.5-7.8-15c-.3-.5-1.1-.5-1.4 0l-7.8 15L4 15.9c-.4-.2-.8 0-1 .4s0 .8.4 1l7.5 3.5-4.7 9.1-2.8 1.3c-.4.2-.6.6-.4 1 .1.3.4.4.7.4.1 0 .2 0 .3-.1l1-.4-1.5 2.8c-.1.2-.1.5 0 .8.1.2.4.3.7.3h31.7c.3 0 .5-.1.7-.4.1-.2.1-.5 0-.8L35.1 32l1 .4c.1 0 .2.1.3.1.3 0 .6-.2.7-.4.1-.3 0-.8-.4-1zm-5.1-2.3l-9.8-4.6 6-2.8 3.8 7.4zM20 6.4L27.1 20 20 23.3 12.9 20 20 6.4zm-7.8 15l6 2.8-9.8 4.6 3.8-7.4zm22.4 13.1H5.4L7.2 31 20 25l12.8 6 1.8 3.5z"></path>
                                        </svg>
                                    </li>
                                    <li class="l_custom_svg">
                                        <svg viewBox="0 0 40 40">
                                            <path fill="currentColor" d="M5.9 5.9v28.2h28.2V5.9H5.9zM19.1 20l-8.3 8.3c-2-2.2-3.2-5.1-3.2-8.3s1.2-6.1 3.2-8.3l8.3 8.3zm-7.4-9.3c2.2-2 5.1-3.2 8.3-3.2s6.1 1.2 8.3 3.2L20 19.1l-8.3-8.4zM20 20.9l8.3 8.3c-2.2 2-5.1 3.2-8.3 3.2s-6.1-1.2-8.3-3.2l8.3-8.3zm.9-.9l8.3-8.3c2 2.2 3.2 5.1 3.2 8.3s-1.2 6.1-3.2 8.3L20.9 20zm8.4-10.2c-1.2-1.1-2.6-2-4.1-2.6h6.6l-2.5 2.6zm-18.6 0L8.2 7.2h6.6c-1.5.6-2.9 1.5-4.1 2.6zm-.9.9c-1.1 1.2-2 2.6-2.6 4.1V8.2l2.6 2.5zM7.2 25.2c.6 1.5 1.5 2.9 2.6 4.1l-2.6 2.6v-6.7zm3.5 5c1.2 1.1 2.6 2 4.1 2.6H8.2l2.5-2.6zm18.6 0l2.6 2.6h-6.6c1.4-.6 2.8-1.5 4-2.6zm.9-.9c1.1-1.2 2-2.6 2.6-4.1v6.6l-2.6-2.5zm2.6-14.5c-.6-1.5-1.5-2.9-2.6-4.1l2.6-2.6v6.7z"></path>
                                        </svg>
                                    </li>
                                    <li class="l_custom_svg">
                                        <svg viewBox="0 0 40 40">
                                            <path fill="currentColor" d="M35.1 33.6L33.2 6.2c0-.4-.3-.7-.7-.7H13.9c-.4 0-.7.3-.7.7s.3.7.7.7h18l.7 10.5H20.8c-8.8.2-15.9 7.5-15.9 16.4 0 .4.3.7.7.7h28.9c.2 0 .4-.1.5-.2s.2-.3.2-.5v-.2h-.1zm-28.8-.5C6.7 25.3 13 19 20.8 18.9h11.9l1 14.2H6.3zm11.2-6.8c0 1.2-1 2.1-2.1 2.1s-2.1-1-2.1-2.1 1-2.1 2.1-2.1 2.1 1 2.1 2.1zm6.3 0c0 1.2-1 2.1-2.1 2.1-1.2 0-2.1-1-2.1-2.1s1-2.1 2.1-2.1 2.1 1 2.1 2.1z"></path>
                                        </svg>
                                    </li>
                                    <li class="l_custom_svg">
                                        <svg viewBox="0 0 40 40">
                                            <path fill="currentColor" d="M20 33.8c7.6 0 13.8-6.2 13.8-13.8S27.6 6.2 20 6.2 6.2 12.4 6.2 20 12.4 33.8 20 33.8zm0-26.3c6.9 0 12.5 5.6 12.5 12.5S26.9 32.5 20 32.5 7.5 26.9 7.5 20 13.1 7.5 20 7.5zm-.4 15h.5c1.8 0 3-1.1 3-3.7 0-2.2-1.1-3.6-3.1-3.6h-2.6v10.6h2.2v-3.3zm0-5.2h.4c.6 0 .9.5.9 1.7 0 1.1-.3 1.7-.9 1.7h-.4v-3.4z"></path>
                                        </svg>
                                    </li>
                                    <li class="l_custom_svg">
                                        <svg viewBox="0 0 40 40">
                                            <path fill="currentColor" d="M30.2 29.3c2.2-2.5 3.6-5.7 3.6-9.3s-1.4-6.8-3.6-9.3l3.6-3.6c.3-.3.3-.7 0-.9-.3-.3-.7-.3-.9 0l-3.6 3.6c-2.5-2.2-5.7-3.6-9.3-3.6s-6.8 1.4-9.3 3.6L7.1 6.2c-.3-.3-.7-.3-.9 0-.3.3-.3.7 0 .9l3.6 3.6c-2.2 2.5-3.6 5.7-3.6 9.3s1.4 6.8 3.6 9.3l-3.6 3.6c-.3.3-.3.7 0 .9.1.1.3.2.5.2s.3-.1.5-.2l3.6-3.6c2.5 2.2 5.7 3.6 9.3 3.6s6.8-1.4 9.3-3.6l3.6 3.6c.1.1.3.2.5.2s.3-.1.5-.2c.3-.3.3-.7 0-.9l-3.8-3.6z"></path>
                                        </svg>
                                    </li>
                                    <li class="l_custom_svg">
                                        <svg viewBox="0 0 40 40">
                                            <path fill="currentColor" d="M34.1 34.1H5.9V5.9h28.2v28.2zM7.2 32.8h25.6V7.2H7.2v25.6zm13.5-18.3a.68.68 0 0 0-.7-.7.68.68 0 0 0-.7.7v10.9a.68.68 0 0 0 .7.7.68.68 0 0 0 .7-.7V14.5z"></path>
                                        </svg>
                                    </li>
                                </ul>
                                <p class="tc cb">LT01: 70% wool, 15% polyester, 10% polyamide, 5% acrylic 900 Grms/mt</p>
                            </div>
                        </div>
                        <div class="panel entry-content sp-tab des_mb_2 des_style_1 dn" id="tab_reviews_product">
                            <div class="js_ck_view"></div>
                            <div class="heading bgbl dn">
                                <a class="tab-heading flex al_center fl_between pr cd chp fwm" href="#tab_reviews_product"><span class="txt_h_tab">Reviews</span><span class="nav_link_icon ml__5"></span></a>
                            </div>
                            <div class="sp-tab-content">
                                <div class="lt-block-reviews">
                                    <div class="r--desktop r--tablet w__100">
                                        <div id="r--masonry-theme" class="r--show-part-preview">
                                            <div class="r--masonry-theme">
                                                <div class="header-v1 masonry-header">
                                                    <div class="r--header">
                                                        <div class="r--overview">
                                                            <div class="r--overview-left">
                                                                <div class="r--star-block r--star-850">
                                                                    <span class="r--title-average">Average</span>
                                                                    <span class="r--stars_average">4.8</span>
                                                                    <div class="r--stars cpl">
                                                                        <div class="kalles-rating-result">
                                                                            <span class="kalles-rating-result__pipe">
                                                                                <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                                <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                                <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                                <span class="kalles-rating-result__start kalles-rating-result__start--big active"></span>
                                                                                <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                            </span>
                                                                        </div>
                                                                        <span class="r--total-view">13 <span>reviews</span></span>
                                                                    </div>
                                                                </div>
                                                                <table class="r--rateList r--rate-850">
                                                                    <tr class="">
                                                                        <td class="r--rate-name">
                                                                            <div>Excellent</div>
                                                                        </td>
                                                                        <td class="r--rate-numeral">
                                                                            <span class="r--total-bar-default">
                                                                                <span class="r--bar_bak_gray width__93">
                                                                                    <span class="r--bar-active">
                                                                                        <span class="r--rate-percent-default">12
                                                                                            <span class="r--rate-after"></span> <span class="r--rate-before"></span>
                                                                                        </span>
                                                                                    </span>
                                                                                </span>
                                                                            </span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="r--disable">
                                                                        <td class="r--rate-name">
                                                                            <div>Very Good</div>
                                                                        </td>
                                                                        <td class="r--rate-numeral">
                                                                            <span class="r--total-bar-default">
                                                                                <span class="r--bar_bak_gray">
                                                                                    <span class="r--bar-active r--noneBack">
                                                                                        <span class="r--rate-percent-default">0
                                                                                            <span class="r--rate-after"></span> <span class="r--rate-before"></span>
                                                                                        </span>
                                                                                    </span>
                                                                                </span>
                                                                            </span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="">
                                                                        <td class="r--rate-name">
                                                                            <div>Average</div>
                                                                        </td>
                                                                        <td class="r--rate-numeral">
                                                                            <span class="r--total-bar-default">
                                                                                <span class="r--bar_bak_gray width__7">
                                                                                    <span class="r--bar-active">
                                                                                        <span class="r--rate-percent-default">1
                                                                                            <span class="r--rate-after"></span> <span class="r--rate-before"></span>
                                                                                        </span>
                                                                                    </span>
                                                                                </span>
                                                                            </span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="r--disable">
                                                                        <td class="r--rate-name">
                                                                            <div>Poor</div>
                                                                        </td>
                                                                        <td class="r--rate-numeral">
                                                                            <span class="r--total-bar-default">
                                                                                <span class="r--bar_bak_gray">
                                                                                    <span class="r--bar-active r--noneBack">
                                                                                        <span class="r--rate-percent-default">0
                                                                                            <span class="r--rate-after"></span> <span class="r--rate-before"></span>
                                                                                        </span>
                                                                                    </span>
                                                                                </span>
                                                                            </span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="r--disable">
                                                                        <td class="r--rate-name">
                                                                            <div>Terrible</div>
                                                                        </td>
                                                                        <td class="r--rate-numeral">
                                                                            <span class="r--total-bar-default">
                                                                                <span class="r--bar_bak_gray">
                                                                                    <span class="r--bar-active r--noneBack">
                                                                                        <span class="r--rate-percent-default">0
                                                                                            <span class="r--rate-after"></span> <span class="r--rate-before"></span>
                                                                                        </span>
                                                                                    </span>
                                                                                </span>
                                                                            </span>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                            <div class="r--overview-right">
                                                                <div class="show-modal-mobile">
                                                                    <a class="r--button r--flex-center bg-yellow text-white ajax_pp_js" href="#" data-id="#popup-leave-review">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="18.37" height="17.8" viewBox="0 0 21.682 21.602">
                                                                            <g id="Symbol_32_2" data-name="Symbol 32 – 2" transform="translate(-961.98 -374.155)">
                                                                                <path d="M0,0H4V11.2L1.937,14h0L0,11.2Z" transform="translate(979.891 381.756) rotate(40)" fill="none" stroke="#ffffff" stroke-linejoin="round" stroke-width="1"></path>
                                                                                <path d="M0,0H4" transform="translate(972.692 390.335) rotate(40)" fill="none" stroke="#ffffff" stroke-width="1"></path>
                                                                                <g transform="translate(981.126 380.964) rotate(40)" fill="none" stroke="#ffffff" stroke-width="1">
                                                                                    <rect width="3.128" height="1.4" stroke="none"></rect>
                                                                                    <rect x="0.5" y="0.5" width="2.128" height="0.4" fill="none"></rect>
                                                                                </g>
                                                                                <path d="M2858.324,3384.6h7.412" transform="translate(-1891.1 -3003.987)" fill="none" stroke="#ffffff" stroke-linecap="round" stroke-linejoin="round" stroke-width="1"></path>
                                                                                <path d="M2858.324,3384.6h7.412" transform="translate(-1891.1 -2999.611)" fill="none" stroke="#ffffff" stroke-linecap="round" stroke-width="1"></path>
                                                                                <path d="M8.952,0H15a2,2,0,0,1,2,2V15a2,2,0,0,1-2,2H2a2,2,0,0,1-2-2V12.162" transform="translate(979.48 391.655) rotate(180)" fill="none" stroke="#ffffff" stroke-linecap="round" stroke-linejoin="round" stroke-width="1"></path>
                                                                            </g>
                                                                        </svg>
                                                                        <span class="r--text-write">Write a review</span>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="r--filter-review">
                                                            <div class="r--filter-wrapper">
                                                                <div class="r--sortBy">
                                                                    <div class="r--unset-select r--sort-button r--filter-link r--flex-center el-popover__reference">
                                                                        <span class="r--select">Sort by: Latest </span>
                                                                        <img src="<%=request.getContextPath()%>/templates/public/assets/images/single-product/icon-down.svg" width="8" height="4" class="r--select r--icon-down" alt="">
                                                                    </div>
                                                                </div>
                                                                <div class="r--filter">
                                                                    <div class="r--unset-select r--sort-button r--filter-link r--flex-center el-popover__reference">
                                                                        <span class="r--select">Filter</span>
                                                                        <img src="<%=request.getContextPath()%>/templates/public/assets/images/single-product/icon-down.svg" width="8" height="4" class="r--select r--icon-down" alt="">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="r--showing r--f-left">
                                                                <span class="r--text-showing">Showing 1 - 6 of 13 reviews</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="r--grid">
                                                    <div class="r--grid-item">
                                                        <div class="r--author r--text-limit">
                                                            <div class="r--avatar-default text-center text-white">P</div>
                                                            <span class="r--author-review">Peter</span>
                                                        </div>
                                                        <div class="r--item-body">
                                                            <div class="r--item-body-top">
                                                                <div class="r--stars-author r--star-head r--body-item r--flex-center">
                                                                    <div class="kalles-rating-result">
                                                                        <span class="kalles-rating-result__pipe">
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big active"></span>
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <p class="r--title-review r--body-item">Contrary to popular belief</p>
                                                            <p class="r--content-review r--body-item">It is a long established fact that a reader will be distracted by the readable content of a page </p>
                                                            <time datetime="2020-01-28T17:29:54Z" class="r--date-review r--top r--text-limit">15 days ago</time>
                                                            <ul class="r--reply-helpul r--body-item r--flex-center">
                                                                <li class="r--helpul-item">
                                                                    <div class="r--like">
                                                                        <div class="r--like-icon like r--flex-center">
                                                                            <svg width="14" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 15.762 17.939" class="r--icon-like">
                                                                                <g transform="translate(-926.048 -414.43)">
                                                                                    <path d="M0,14.842V6.033l.266.709S3.779,4.692,3.9,1.674s2.5-1.661,2.624.45-.095,2.192.517,3.909c1.392-.021,2.211-.013,2.59-.006H9.71q.06,0,.119,0l.056,0v0A1.532,1.532,0,0,1,10.923,8.5a1.533,1.533,0,0,1,.45,2.515,1.533,1.533,0,0,1-.387,2.485,1.859,1.859,0,0,1,.257.966c0,.847-.515,1.584-1.15,1.584L9.237,16c-.7.042-2.286.125-2.717.131H6.448A31.646,31.646,0,0,1,0,14.842Z" transform="translate(929.463 415.021)" class="cls-1"></path>
                                                                                    <path d="M945.558,421.769v11.039l-2.9-.279V422.22Z" transform="translate(-16.112 -0.939)" class="cls-2"></path>
                                                                                </g>
                                                                            </svg>
                                                                            <span class="r--like-count like_0">12</span>
                                                                        </div>
                                                                        <div class="r--like-icon dislike r--flex-center">
                                                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 15.762 17.659" class="r--icon-dislike">
                                                                                <g transform="translate(956.922 435.325) rotate(180)">
                                                                                    <path d="M0,14.842V6.033l.266.709S3.779,4.692,3.9,1.674s2.5-1.661,2.624.45-.095,2.192.517,3.909c1.392-.021,2.211-.013,2.59-.006H9.71q.06,0,.119,0l.056,0v0A1.532,1.532,0,0,1,10.923,8.5a1.533,1.533,0,0,1,.45,2.515,1.533,1.533,0,0,1-.387,2.485,1.859,1.859,0,0,1,.257.966c0,.847-.515,1.584-1.15,1.584L9.237,16c-.7.042-2.286.125-2.717.131H6.448A31.646,31.646,0,0,1,0,14.842Z" transform="translate(944.575 418.257)" class="cls-1"></path>
                                                                                    <path d="M945.558,421.946v10.321l-2.9.261V421.777Z" transform="translate(-1 2.296)" class="cls-2"></path>
                                                                                </g>
                                                                            </svg>
                                                                            <span class="r--like-count like_0">08</span>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="r--helpul-item r--reply-review r--flex-center ajax_pp_js" data-id="#popup-reply-review">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 21.125 17.584" class="r--icon-reply">
                                                                        <defs>
                                                                            <clipPath>
                                                                                <rect width="14.094" height="3.924" class="cls-1"></rect>
                                                                            </clipPath>
                                                                        </defs>
                                                                        <g transform="translate(-784.909 -833.715)">
                                                                            <path d="M4.01,12.938H2a2,2,0,0,1-2-2V2A2,2,0,0,1,2,0H18.125a2,2,0,0,1,2,2v8.937a2,2,0,0,1-2,2H8.78l-.667.923L6.4,16.232Z" transform="translate(785.409 834.215)" class="cls-2"></path>
                                                                            <g transform="translate(788.554 839.127)" class="cls-3">
                                                                                <g transform="translate(-739 -839)">
                                                                                    <g transform="translate(739 839)" class="cls-4">
                                                                                        <circle cx="1.75" cy="1.75" r="1.75" class="cls-5"></circle>
                                                                                        <circle cx="1.75" cy="1.75" r="1.25" class="cls-1"></circle>
                                                                                    </g>
                                                                                </g>
                                                                                <g transform="translate(-734 -839)">
                                                                                    <g transform="translate(739 839)" class="cls-4">
                                                                                        <circle cx="1.75" cy="1.75" r="1.75" class="cls-5"></circle>
                                                                                        <circle cx="1.75" cy="1.75" r="1.25" class="cls-1"></circle>
                                                                                    </g>
                                                                                </g>
                                                                                <g transform="translate(-729 -839)">
                                                                                    <g transform="translate(739 839)" class="cls-4">
                                                                                        <circle cx="1.75" cy="1.75" r="1.75" class="cls-5"></circle>
                                                                                        <circle cx="1.75" cy="1.75" r="1.25" class="cls-1"></circle>
                                                                                    </g>
                                                                                </g>
                                                                            </g>
                                                                        </g>
                                                                    </svg>
                                                                    <span>02</span>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="r--grid-item">
                                                        <div class="r--author r--text-limit">
                                                            <div class="r--avatar-default text-center text-white avatar--bg-red">K</div>
                                                            <span class="r--author-review">Kodeman</span>
                                                        </div>
                                                        <div class="r--item-body">
                                                            <div class="r--item-body-top">
                                                                <div class="r--stars-author r--star-head r--body-item r--flex-center">
                                                                    <div class="kalles-rating-result">
                                                                        <span class="kalles-rating-result__pipe">
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big active"></span>
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <p class="r--title-review r--body-item">Contrary to popular belief</p>
                                                            <p class="r--content-review r--body-item">It is a long established fact that a reader will be distracted by the readable content of a page </p>
                                                            <time datetime="2020-01-28T17:29:54Z" class="r--date-review r--top r--text-limit">15 days ago</time>
                                                            <ul class="r--reply-helpul r--body-item r--flex-center">
                                                                <li class="r--helpul-item">
                                                                    <div class="r--like">
                                                                        <div class="r--like-icon like r--flex-center">
                                                                            <svg width="14" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 15.762 17.939" class="r--icon-like">
                                                                                <g transform="translate(-926.048 -414.43)">
                                                                                    <path d="M0,14.842V6.033l.266.709S3.779,4.692,3.9,1.674s2.5-1.661,2.624.45-.095,2.192.517,3.909c1.392-.021,2.211-.013,2.59-.006H9.71q.06,0,.119,0l.056,0v0A1.532,1.532,0,0,1,10.923,8.5a1.533,1.533,0,0,1,.45,2.515,1.533,1.533,0,0,1-.387,2.485,1.859,1.859,0,0,1,.257.966c0,.847-.515,1.584-1.15,1.584L9.237,16c-.7.042-2.286.125-2.717.131H6.448A31.646,31.646,0,0,1,0,14.842Z" transform="translate(929.463 415.021)" class="cls-1"></path>
                                                                                    <path d="M945.558,421.769v11.039l-2.9-.279V422.22Z" transform="translate(-16.112 -0.939)" class="cls-2"></path>
                                                                                </g>
                                                                            </svg>
                                                                            <span class="r--like-count like_0">12</span>
                                                                        </div>
                                                                        <div class="r--like-icon dislike r--flex-center">
                                                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 15.762 17.659" class="r--icon-dislike">
                                                                                <g transform="translate(956.922 435.325) rotate(180)">
                                                                                    <path d="M0,14.842V6.033l.266.709S3.779,4.692,3.9,1.674s2.5-1.661,2.624.45-.095,2.192.517,3.909c1.392-.021,2.211-.013,2.59-.006H9.71q.06,0,.119,0l.056,0v0A1.532,1.532,0,0,1,10.923,8.5a1.533,1.533,0,0,1,.45,2.515,1.533,1.533,0,0,1-.387,2.485,1.859,1.859,0,0,1,.257.966c0,.847-.515,1.584-1.15,1.584L9.237,16c-.7.042-2.286.125-2.717.131H6.448A31.646,31.646,0,0,1,0,14.842Z" transform="translate(944.575 418.257)" class="cls-1"></path>
                                                                                    <path d="M945.558,421.946v10.321l-2.9.261V421.777Z" transform="translate(-1 2.296)" class="cls-2"></path>
                                                                                </g>
                                                                            </svg>
                                                                            <span class="r--like-count like_0">08</span>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="r--helpul-item r--reply-review r--flex-center ajax_pp_js" data-id="#popup-reply-review">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 21.125 17.584" class="r--icon-reply">
                                                                        <defs>
                                                                            <clipPath>
                                                                                <rect width="14.094" height="3.924" class="cls-1"></rect>
                                                                            </clipPath>
                                                                        </defs>
                                                                        <g transform="translate(-784.909 -833.715)">
                                                                            <path d="M4.01,12.938H2a2,2,0,0,1-2-2V2A2,2,0,0,1,2,0H18.125a2,2,0,0,1,2,2v8.937a2,2,0,0,1-2,2H8.78l-.667.923L6.4,16.232Z" transform="translate(785.409 834.215)" class="cls-2"></path>
                                                                            <g transform="translate(788.554 839.127)" class="cls-3">
                                                                                <g transform="translate(-739 -839)">
                                                                                    <g transform="translate(739 839)" class="cls-4">
                                                                                        <circle cx="1.75" cy="1.75" r="1.75" class="cls-5"></circle>
                                                                                        <circle cx="1.75" cy="1.75" r="1.25" class="cls-1"></circle>
                                                                                    </g>
                                                                                </g>
                                                                                <g transform="translate(-734 -839)">
                                                                                    <g transform="translate(739 839)" class="cls-4">
                                                                                        <circle cx="1.75" cy="1.75" r="1.75" class="cls-5"></circle>
                                                                                        <circle cx="1.75" cy="1.75" r="1.25" class="cls-1"></circle>
                                                                                    </g>
                                                                                </g>
                                                                                <g transform="translate(-729 -839)">
                                                                                    <g transform="translate(739 839)" class="cls-4">
                                                                                        <circle cx="1.75" cy="1.75" r="1.75" class="cls-5"></circle>
                                                                                        <circle cx="1.75" cy="1.75" r="1.25" class="cls-1"></circle>
                                                                                    </g>
                                                                                </g>
                                                                            </g>
                                                                        </g>
                                                                    </svg>
                                                                    <span>02</span>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="r--grid-item">
                                                        <div class="r--author r--text-limit">
                                                            <div class="r--avatar-default text-center text-white avatar--bg-purple">G</div>
                                                            <span class="r--author-review">Glager</span>
                                                        </div>
                                                        <div class="r--item-body">
                                                            <div class="r--item-body-top">
                                                                <div class="r--stars-author r--star-head r--body-item r--flex-center">
                                                                    <div class="kalles-rating-result">
                                                                        <span class="kalles-rating-result__pipe">
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big active"></span>
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <p class="r--title-review r--body-item">Contrary to popular belief</p>
                                                            <p class="r--content-review r--body-item">It is a long established fact that a reader will be distracted by the readable content of a page </p>
                                                            <time datetime="2020-01-28T17:29:54Z" class="r--date-review r--top r--text-limit">15 days ago</time>
                                                            <ul class="r--reply-helpul r--body-item r--flex-center">
                                                                <li class="r--helpul-item">
                                                                    <div class="r--like">
                                                                        <div class="r--like-icon like r--flex-center">
                                                                            <svg width="14" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 15.762 17.939" class="r--icon-like">
                                                                                <g transform="translate(-926.048 -414.43)">
                                                                                    <path d="M0,14.842V6.033l.266.709S3.779,4.692,3.9,1.674s2.5-1.661,2.624.45-.095,2.192.517,3.909c1.392-.021,2.211-.013,2.59-.006H9.71q.06,0,.119,0l.056,0v0A1.532,1.532,0,0,1,10.923,8.5a1.533,1.533,0,0,1,.45,2.515,1.533,1.533,0,0,1-.387,2.485,1.859,1.859,0,0,1,.257.966c0,.847-.515,1.584-1.15,1.584L9.237,16c-.7.042-2.286.125-2.717.131H6.448A31.646,31.646,0,0,1,0,14.842Z" transform="translate(929.463 415.021)" class="cls-1"></path>
                                                                                    <path d="M945.558,421.769v11.039l-2.9-.279V422.22Z" transform="translate(-16.112 -0.939)" class="cls-2"></path>
                                                                                </g>
                                                                            </svg>
                                                                            <span class="r--like-count like_0">12</span>
                                                                        </div>
                                                                        <div class="r--like-icon dislike r--flex-center">
                                                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 15.762 17.659" class="r--icon-dislike">
                                                                                <g transform="translate(956.922 435.325) rotate(180)">
                                                                                    <path d="M0,14.842V6.033l.266.709S3.779,4.692,3.9,1.674s2.5-1.661,2.624.45-.095,2.192.517,3.909c1.392-.021,2.211-.013,2.59-.006H9.71q.06,0,.119,0l.056,0v0A1.532,1.532,0,0,1,10.923,8.5a1.533,1.533,0,0,1,.45,2.515,1.533,1.533,0,0,1-.387,2.485,1.859,1.859,0,0,1,.257.966c0,.847-.515,1.584-1.15,1.584L9.237,16c-.7.042-2.286.125-2.717.131H6.448A31.646,31.646,0,0,1,0,14.842Z" transform="translate(944.575 418.257)" class="cls-1"></path>
                                                                                    <path d="M945.558,421.946v10.321l-2.9.261V421.777Z" transform="translate(-1 2.296)" class="cls-2"></path>
                                                                                </g>
                                                                            </svg>
                                                                            <span class="r--like-count like_0">08</span>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="r--helpul-item r--reply-review r--flex-center ajax_pp_js" data-id="#popup-reply-review">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 21.125 17.584" class="r--icon-reply">
                                                                        <defs>
                                                                            <clipPath>
                                                                                <rect width="14.094" height="3.924" class="cls-1"></rect>
                                                                            </clipPath>
                                                                        </defs>
                                                                        <g transform="translate(-784.909 -833.715)">
                                                                            <path d="M4.01,12.938H2a2,2,0,0,1-2-2V2A2,2,0,0,1,2,0H18.125a2,2,0,0,1,2,2v8.937a2,2,0,0,1-2,2H8.78l-.667.923L6.4,16.232Z" transform="translate(785.409 834.215)" class="cls-2"></path>
                                                                            <g transform="translate(788.554 839.127)" class="cls-3">
                                                                                <g transform="translate(-739 -839)">
                                                                                    <g transform="translate(739 839)" class="cls-4">
                                                                                        <circle cx="1.75" cy="1.75" r="1.75" class="cls-5"></circle>
                                                                                        <circle cx="1.75" cy="1.75" r="1.25" class="cls-1"></circle>
                                                                                    </g>
                                                                                </g>
                                                                                <g transform="translate(-734 -839)">
                                                                                    <g transform="translate(739 839)" class="cls-4">
                                                                                        <circle cx="1.75" cy="1.75" r="1.75" class="cls-5"></circle>
                                                                                        <circle cx="1.75" cy="1.75" r="1.25" class="cls-1"></circle>
                                                                                    </g>
                                                                                </g>
                                                                                <g transform="translate(-729 -839)">
                                                                                    <g transform="translate(739 839)" class="cls-4">
                                                                                        <circle cx="1.75" cy="1.75" r="1.75" class="cls-5"></circle>
                                                                                        <circle cx="1.75" cy="1.75" r="1.25" class="cls-1"></circle>
                                                                                    </g>
                                                                                </g>
                                                                            </g>
                                                                        </g>
                                                                    </svg>
                                                                    <span>02</span>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="r--grid-item">
                                                        <div class="r--author r--text-limit">
                                                            <div class="r--avatar-default text-center text-white  avatar--bg-blue">C</div>
                                                            <span class="r--author-review">Chaos</span>
                                                        </div>
                                                        <div class="r--item-body">
                                                            <div class="r--item-body-top">
                                                                <div class="r--stars-author r--star-head r--body-item r--flex-center">
                                                                    <div class="kalles-rating-result">
                                                                        <span class="kalles-rating-result__pipe">
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big active"></span>
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <p class="r--title-review r--body-item">Contrary to popular belief</p>
                                                            <p class="r--content-review r--body-item">It is a long established fact that a reader will be distracted by the readable content of a page </p>
                                                            <time datetime="2020-01-28T17:29:54Z" class="r--date-review r--top r--text-limit">15 days ago</time>
                                                            <ul class="r--reply-helpul r--body-item r--flex-center">
                                                                <li class="r--helpul-item">
                                                                    <div class="r--like">
                                                                        <div class="r--like-icon like r--flex-center">
                                                                            <svg width="14" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 15.762 17.939" class="r--icon-like">
                                                                                <g transform="translate(-926.048 -414.43)">
                                                                                    <path d="M0,14.842V6.033l.266.709S3.779,4.692,3.9,1.674s2.5-1.661,2.624.45-.095,2.192.517,3.909c1.392-.021,2.211-.013,2.59-.006H9.71q.06,0,.119,0l.056,0v0A1.532,1.532,0,0,1,10.923,8.5a1.533,1.533,0,0,1,.45,2.515,1.533,1.533,0,0,1-.387,2.485,1.859,1.859,0,0,1,.257.966c0,.847-.515,1.584-1.15,1.584L9.237,16c-.7.042-2.286.125-2.717.131H6.448A31.646,31.646,0,0,1,0,14.842Z" transform="translate(929.463 415.021)" class="cls-1"></path>
                                                                                    <path d="M945.558,421.769v11.039l-2.9-.279V422.22Z" transform="translate(-16.112 -0.939)" class="cls-2"></path>
                                                                                </g>
                                                                            </svg>
                                                                            <span class="r--like-count like_0">12</span>
                                                                        </div>
                                                                        <div class="r--like-icon dislike r--flex-center">
                                                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 15.762 17.659" class="r--icon-dislike">
                                                                                <g transform="translate(956.922 435.325) rotate(180)">
                                                                                    <path d="M0,14.842V6.033l.266.709S3.779,4.692,3.9,1.674s2.5-1.661,2.624.45-.095,2.192.517,3.909c1.392-.021,2.211-.013,2.59-.006H9.71q.06,0,.119,0l.056,0v0A1.532,1.532,0,0,1,10.923,8.5a1.533,1.533,0,0,1,.45,2.515,1.533,1.533,0,0,1-.387,2.485,1.859,1.859,0,0,1,.257.966c0,.847-.515,1.584-1.15,1.584L9.237,16c-.7.042-2.286.125-2.717.131H6.448A31.646,31.646,0,0,1,0,14.842Z" transform="translate(944.575 418.257)" class="cls-1"></path>
                                                                                    <path d="M945.558,421.946v10.321l-2.9.261V421.777Z" transform="translate(-1 2.296)" class="cls-2"></path>
                                                                                </g>
                                                                            </svg>
                                                                            <span class="r--like-count like_0">08</span>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="r--helpul-item r--reply-review r--flex-center ajax_pp_js" data-id="#popup-reply-review">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 21.125 17.584" class="r--icon-reply">
                                                                        <defs>
                                                                            <clipPath>
                                                                                <rect width="14.094" height="3.924" class="cls-1"></rect>
                                                                            </clipPath>
                                                                        </defs>
                                                                        <g transform="translate(-784.909 -833.715)">
                                                                            <path d="M4.01,12.938H2a2,2,0,0,1-2-2V2A2,2,0,0,1,2,0H18.125a2,2,0,0,1,2,2v8.937a2,2,0,0,1-2,2H8.78l-.667.923L6.4,16.232Z" transform="translate(785.409 834.215)" class="cls-2"></path>
                                                                            <g transform="translate(788.554 839.127)" class="cls-3">
                                                                                <g transform="translate(-739 -839)">
                                                                                    <g transform="translate(739 839)" class="cls-4">
                                                                                        <circle cx="1.75" cy="1.75" r="1.75" class="cls-5"></circle>
                                                                                        <circle cx="1.75" cy="1.75" r="1.25" class="cls-1"></circle>
                                                                                    </g>
                                                                                </g>
                                                                                <g transform="translate(-734 -839)">
                                                                                    <g transform="translate(739 839)" class="cls-4">
                                                                                        <circle cx="1.75" cy="1.75" r="1.75" class="cls-5"></circle>
                                                                                        <circle cx="1.75" cy="1.75" r="1.25" class="cls-1"></circle>
                                                                                    </g>
                                                                                </g>
                                                                                <g transform="translate(-729 -839)">
                                                                                    <g transform="translate(739 839)" class="cls-4">
                                                                                        <circle cx="1.75" cy="1.75" r="1.75" class="cls-5"></circle>
                                                                                        <circle cx="1.75" cy="1.75" r="1.25" class="cls-1"></circle>
                                                                                    </g>
                                                                                </g>
                                                                            </g>
                                                                        </g>
                                                                    </svg>
                                                                    <span>02</span>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="r--grid-item">
                                                        <div class="r--author r--text-limit">
                                                            <div class="r--avatar-default text-center text-white">S</div>
                                                            <span class="r--author-review">Sevenor</span>
                                                        </div>
                                                        <div class="r--item-body">
                                                            <div class="r--item-body-top">
                                                                <div class="r--stars-author r--star-head r--body-item r--flex-center">
                                                                    <div class="kalles-rating-result">
                                                                        <span class="kalles-rating-result__pipe">
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big active"></span>
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <p class="r--title-review r--body-item">Contrary to popular belief</p>
                                                            <p class="r--content-review r--body-item">It is a long established fact that a reader will be distracted by the readable content of a page </p>
                                                            <time datetime="2020-01-28T17:29:54Z" class="r--date-review r--top r--text-limit">15 days ago</time>
                                                            <ul class="r--reply-helpul r--body-item r--flex-center">
                                                                <li class="r--helpul-item">
                                                                    <div class="r--like">
                                                                        <div class="r--like-icon like r--flex-center">
                                                                            <svg width="14" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 15.762 17.939" class="r--icon-like">
                                                                                <g transform="translate(-926.048 -414.43)">
                                                                                    <path d="M0,14.842V6.033l.266.709S3.779,4.692,3.9,1.674s2.5-1.661,2.624.45-.095,2.192.517,3.909c1.392-.021,2.211-.013,2.59-.006H9.71q.06,0,.119,0l.056,0v0A1.532,1.532,0,0,1,10.923,8.5a1.533,1.533,0,0,1,.45,2.515,1.533,1.533,0,0,1-.387,2.485,1.859,1.859,0,0,1,.257.966c0,.847-.515,1.584-1.15,1.584L9.237,16c-.7.042-2.286.125-2.717.131H6.448A31.646,31.646,0,0,1,0,14.842Z" transform="translate(929.463 415.021)" class="cls-1"></path>
                                                                                    <path d="M945.558,421.769v11.039l-2.9-.279V422.22Z" transform="translate(-16.112 -0.939)" class="cls-2"></path>
                                                                                </g>
                                                                            </svg>
                                                                            <span class="r--like-count like_0">12</span>
                                                                        </div>
                                                                        <div class="r--like-icon dislike r--flex-center">
                                                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 15.762 17.659" class="r--icon-dislike">
                                                                                <g transform="translate(956.922 435.325) rotate(180)">
                                                                                    <path d="M0,14.842V6.033l.266.709S3.779,4.692,3.9,1.674s2.5-1.661,2.624.45-.095,2.192.517,3.909c1.392-.021,2.211-.013,2.59-.006H9.71q.06,0,.119,0l.056,0v0A1.532,1.532,0,0,1,10.923,8.5a1.533,1.533,0,0,1,.45,2.515,1.533,1.533,0,0,1-.387,2.485,1.859,1.859,0,0,1,.257.966c0,.847-.515,1.584-1.15,1.584L9.237,16c-.7.042-2.286.125-2.717.131H6.448A31.646,31.646,0,0,1,0,14.842Z" transform="translate(944.575 418.257)" class="cls-1"></path>
                                                                                    <path d="M945.558,421.946v10.321l-2.9.261V421.777Z" transform="translate(-1 2.296)" class="cls-2"></path>
                                                                                </g>
                                                                            </svg>
                                                                            <span class="r--like-count like_0">08</span>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="r--helpul-item r--reply-review r--flex-center ajax_pp_js" data-id="#popup-reply-review">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 21.125 17.584" class="r--icon-reply">
                                                                        <defs>
                                                                            <clipPath>
                                                                                <rect width="14.094" height="3.924" class="cls-1"></rect>
                                                                            </clipPath>
                                                                        </defs>
                                                                        <g transform="translate(-784.909 -833.715)">
                                                                            <path d="M4.01,12.938H2a2,2,0,0,1-2-2V2A2,2,0,0,1,2,0H18.125a2,2,0,0,1,2,2v8.937a2,2,0,0,1-2,2H8.78l-.667.923L6.4,16.232Z" transform="translate(785.409 834.215)" class="cls-2"></path>
                                                                            <g transform="translate(788.554 839.127)" class="cls-3">
                                                                                <g transform="translate(-739 -839)">
                                                                                    <g transform="translate(739 839)" class="cls-4">
                                                                                        <circle cx="1.75" cy="1.75" r="1.75" class="cls-5"></circle>
                                                                                        <circle cx="1.75" cy="1.75" r="1.25" class="cls-1"></circle>
                                                                                    </g>
                                                                                </g>
                                                                                <g transform="translate(-734 -839)">
                                                                                    <g transform="translate(739 839)" class="cls-4">
                                                                                        <circle cx="1.75" cy="1.75" r="1.75" class="cls-5"></circle>
                                                                                        <circle cx="1.75" cy="1.75" r="1.25" class="cls-1"></circle>
                                                                                    </g>
                                                                                </g>
                                                                                <g transform="translate(-729 -839)">
                                                                                    <g transform="translate(739 839)" class="cls-4">
                                                                                        <circle cx="1.75" cy="1.75" r="1.75" class="cls-5"></circle>
                                                                                        <circle cx="1.75" cy="1.75" r="1.25" class="cls-1"></circle>
                                                                                    </g>
                                                                                </g>
                                                                            </g>
                                                                        </g>
                                                                    </svg>
                                                                    <span>02</span>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="r--grid-item">
                                                        <div class="r--author r--text-limit">
                                                            <div class="r--avatar-default text-center text-white avatar--bg-purple">D</div>
                                                            <span class="r--author-review">Dranking</span>
                                                        </div>
                                                        <div class="r--item-body">
                                                            <div class="r--item-body-top">
                                                                <div class="r--stars-author r--star-head r--body-item r--flex-center">
                                                                    <div class="kalles-rating-result">
                                                                        <span class="kalles-rating-result__pipe">
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                                                            <span class="kalles-rating-result__start kalles-rating-result__start--big active"></span>
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <p class="r--title-review r--body-item">Contrary to popular belief</p>
                                                            <p class="r--content-review r--body-item">It is a long established fact that a reader will be distracted by the readable content of a page </p>
                                                            <time datetime="2020-01-28T17:29:54Z" class="r--date-review r--top r--text-limit">15 days ago</time>
                                                            <ul class="r--reply-helpul r--body-item r--flex-center">
                                                                <li class="r--helpul-item">
                                                                    <div class="r--like">
                                                                        <div class="r--like-icon like r--flex-center">
                                                                            <svg width="14" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 15.762 17.939" class="r--icon-like">
                                                                                <g transform="translate(-926.048 -414.43)">
                                                                                    <path d="M0,14.842V6.033l.266.709S3.779,4.692,3.9,1.674s2.5-1.661,2.624.45-.095,2.192.517,3.909c1.392-.021,2.211-.013,2.59-.006H9.71q.06,0,.119,0l.056,0v0A1.532,1.532,0,0,1,10.923,8.5a1.533,1.533,0,0,1,.45,2.515,1.533,1.533,0,0,1-.387,2.485,1.859,1.859,0,0,1,.257.966c0,.847-.515,1.584-1.15,1.584L9.237,16c-.7.042-2.286.125-2.717.131H6.448A31.646,31.646,0,0,1,0,14.842Z" transform="translate(929.463 415.021)" class="cls-1"></path>
                                                                                    <path d="M945.558,421.769v11.039l-2.9-.279V422.22Z" transform="translate(-16.112 -0.939)" class="cls-2"></path>
                                                                                </g>
                                                                            </svg>
                                                                            <span class="r--like-count like_0">12</span>
                                                                        </div>
                                                                        <div class="r--like-icon dislike r--flex-center">
                                                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 15.762 17.659" class="r--icon-dislike">
                                                                                <g transform="translate(956.922 435.325) rotate(180)">
                                                                                    <path d="M0,14.842V6.033l.266.709S3.779,4.692,3.9,1.674s2.5-1.661,2.624.45-.095,2.192.517,3.909c1.392-.021,2.211-.013,2.59-.006H9.71q.06,0,.119,0l.056,0v0A1.532,1.532,0,0,1,10.923,8.5a1.533,1.533,0,0,1,.45,2.515,1.533,1.533,0,0,1-.387,2.485,1.859,1.859,0,0,1,.257.966c0,.847-.515,1.584-1.15,1.584L9.237,16c-.7.042-2.286.125-2.717.131H6.448A31.646,31.646,0,0,1,0,14.842Z" transform="translate(944.575 418.257)" class="cls-1"></path>
                                                                                    <path d="M945.558,421.946v10.321l-2.9.261V421.777Z" transform="translate(-1 2.296)" class="cls-2"></path>
                                                                                </g>
                                                                            </svg>
                                                                            <span class="r--like-count like_0">08</span>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="r--helpul-item r--reply-review r--flex-center ajax_pp_js" data-id="#popup-reply-review">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 21.125 17.584" class="r--icon-reply">
                                                                        <defs>
                                                                            <clipPath>
                                                                                <rect width="14.094" height="3.924" class="cls-1"></rect>
                                                                            </clipPath>
                                                                        </defs>
                                                                        <g transform="translate(-784.909 -833.715)">
                                                                            <path d="M4.01,12.938H2a2,2,0,0,1-2-2V2A2,2,0,0,1,2,0H18.125a2,2,0,0,1,2,2v8.937a2,2,0,0,1-2,2H8.78l-.667.923L6.4,16.232Z" transform="translate(785.409 834.215)" class="cls-2"></path>
                                                                            <g transform="translate(788.554 839.127)" class="cls-3">
                                                                                <g transform="translate(-739 -839)">
                                                                                    <g transform="translate(739 839)" class="cls-4">
                                                                                        <circle cx="1.75" cy="1.75" r="1.75" class="cls-5"></circle>
                                                                                        <circle cx="1.75" cy="1.75" r="1.25" class="cls-1"></circle>
                                                                                    </g>
                                                                                </g>
                                                                                <g transform="translate(-734 -839)">
                                                                                    <g transform="translate(739 839)" class="cls-4">
                                                                                        <circle cx="1.75" cy="1.75" r="1.75" class="cls-5"></circle>
                                                                                        <circle cx="1.75" cy="1.75" r="1.25" class="cls-1"></circle>
                                                                                    </g>
                                                                                </g>
                                                                                <g transform="translate(-729 -839)">
                                                                                    <g transform="translate(739 839)" class="cls-4">
                                                                                        <circle cx="1.75" cy="1.75" r="1.75" class="cls-5"></circle>
                                                                                        <circle cx="1.75" cy="1.75" r="1.25" class="cls-1"></circle>
                                                                                    </g>
                                                                                </g>
                                                                            </g>
                                                                        </g>
                                                                    </svg>
                                                                    <span>02</span>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="r--load-more">
                                                    <a href="#" class="r--text-load-more">Load more</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end tab contents -->

                    </div>
                </div>
            </div>
            <!-- end description and review -->

            <div class="clearfix"></div>

            <!--product recently viewed section-->
            <div class="kalles-section tp_se_cdt">
                <div class="related product-extra mt__60 lazyload">
                    <div class="container">
                        <div class="wrap_title des_title_1">
                            <h3 class="section-title tc pr flex fl_center al_center fs__24 title_1">
                                <span class="mr__10 ml__10">Recently viewed products</span></h3>
                            <span class="dn tt_divider"><span></span><i class="dn clprfalse title_1 la-gem"></i><span></span></span><span class="section-subtitle db tc sub-title"></span>
                        </div>
                        
                        <div class="sortby_3 products nt_products_holder nt_slider row row_pr_1 cdt_des_1 round_cd_false nt_cover ratio_nt position_8 space_30 prev_next_0 btn_owl_1 dot_owl_1 dot_color_1 btn_vi_1 is-draggable" data-flickity='{"imagesLoaded": 0,"adaptiveHeight": 0, "contain": 1, "groupCells": "100%", "dragThreshold" : 5, "cellAlign": "left","wrapAround": true,"prevNextButtons": false,"percentPosition": 1,"pageDots": false, "autoPlay" : 0, "pauseAutoPlayOnHover" : true, "rightToLeft": false }'>
                            <%
							if(session.getAttribute("listRecent")!=null){ 
							ArrayList<Products> listRecent = (ArrayList<Products>) session.getAttribute("listRecent");
							int count=1;
							for(int i = listRecent.size()-1 ; i >=0  ; i--){
								if(count >4) break;
								Products product = listRecent.get(i);
								count++;
						%>
					<div class="col-lg-3 pr_animated col-md-3 col-6 mt__30 pr_grid_item product nt_pr desgin__1 done">
                                <div class="product-inner pr">
                                    <div class="product-image pr oh lazyload">
                                        <span class="tc nt_labels pa pe_none cw">
                                            <span class="onsale nt_label"><span>-34%</span></span>
                                        </span>
                                        <a class="d-block" href="<%=request.getContextPath()%>/chi-tiet-san-pham?id=<%=product.getId()%>">
                                            <div class="pr_lazy_img main-img nt_img_ratio nt_bg_lz lazyload padding-top__127_571" data-bgset="<%=request.getContextPath()%>/images/products/<%=product.getImage()%>"></div>
                                        </a>
                                        <div class="hover_img pa pe_none t__0 l__0 r__0 b__0 op__0">
                                            <div class="pr_lazy_img back-img pa nt_bg_lz lazyload padding-top__127_571" data-bgset="<%=request.getContextPath()%>/images/products/<%=product.getImage()%>"></div>
                                        </div>
                 
                                         <div class="hover_button op__0 tc pa flex column ts__03">
                                            <a class="pr nt_add_qv js_add_qv cd br__40 pl__25 pr__25 bgw tc dib ttip_nt tooltip_top_left" href="<%=request.getContextPath()%>/chi-tiet-san-pham?id=<%=product.getId()%>"><span class="tt_txt">View</span><i class="iccl iccl-eye"></i><span>View	</span></a>
                                        </div>
                                    </div>
                                    <div class="product-info mt__15">
                                        <h3 class="product-title pr fs__14 mg__0 fwm">
                                            <a class="cd chp" href="<%=request.getContextPath()%>/chi-tiet-san-pham?id=<%=product.getId()%>"><%=product.getName()%></a></h3>
                                        <span class="price dib mb__5"><ins><%=product.getMoney()%></ins></span>
                                       
                                    </div>
                                </div>
                            </div>
					<%		
							}}
					%>
                        </div>
                    </div>
                </div>
            </div>
            <!--end product recently viewed section-->

        </div>
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
                                                <img class="w__100 mb__15 lazyload max-width__95px" src="data:image/svg+xml,%3Csvg%20viewBox%3D%220%200%20220%2066%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3C%2Fsvg%3E" alt="Kalles Template" data-src="assets/images/svg/kalles.svg">
                                            </a>
                                        </p>
                                        <p>
                                            <i class="pegk pe-7s-map-marker"> </i><span>184 Main Rd E, St Albans <br> <span class="pl__30">VIC 3021, Australia</span></span>
                                        </p>
                                        <p><i class="pegk pe-7s-mail"></i>
                                            <span><a href="https://themes.the4.co/cdn-cgi/l/email-protection#afccc0c1dbceccdbefccc0c2dfcec1d681ccc0c2"><span class="__cf_email__" data-cfemail="aecdc1c0dacfcddaeecdc1c3decfc0d780cdc1c3">[email&#160;protected]</span></a></span>
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
                                        <img class="w__100 lazyload w__max-width__197" data-src="assets/images/payment2.png" src="data:image/svg+xml,%3Csvg%20viewBox%3D%220%200%20197%2020%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3C%2Fsvg%3E" alt="">
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

<!--mask overlay-->
<div class="mask-overlay ntpf t__0 r__0 l__0 b__0 op__0 pe_none"></div>
<!--end mask overlay-->




<!-- add-to-cart sticky bar -->
<div id="kalles-section-sticky_atc" class="kalles-section">
    <div class="sticky_atc_wrap mobile_true pf b__0 l__0 r__0 pt__10 pb__10 bgw z_100 sticky_atc_shown">
        <div class="container">
            <div class="row al_center fl_center">
                <div class="col sticky_atc_content">
                    <div class="row no-gutters al_center">
                        <div class="col-auto sticky_atc_thumb mr__10 flex al_center">
                            <img alt="" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="assets/images/single-product/simple-product/thumb-sticky.jpg" class="lazyload w__100 lz_op_ef">
                        </div>
                        <div class="col sticky_atc_info">
                            <h4 class="fs__14 mg__0"><%=pro.getName()%></h4>
                        </div>
                    </div>
                </div>
                <div class="col-auto sticky_atc_btn variations_form flex wrap al_center fl_center">
                    <div class="sticky_atc_price"><%=pro.getMoney()%></div>
                    <form action="<%=request.getContextPath()%>/gio-hang" class="cart" method="post">
					<input name="id" value=<%=pro.getId()%> type="hidden">
                    <div class="quantity pr mr__10 order-1 qty__true d-inline-block" id="sp_qty_ppr">
		            	<input type="number" class="input-text qty text tc qty_pr_js qty_cart_js" name="qty" value="1" >
		                	<div class="qty tc fs__14">
		                    	<button type="button" class="plus db cb pa pd__0 pr__15 tr r__0">
		                        	<i class="facl facl-plus"></i></button>
		                            	<button type="button" class="minus db cb pa pd__0 pl__15 tl l__0">
		                                	<i class="facl facl-minus"></i></button>
		                    </div>
		            </div>
		            <button type="submit" >
		            	<span class="txt_add ">Add to cart</span></button>
					</div>
					</form>
                </div>
            </div>
        </div>
    </div>
</div>

																	
<!-- end add-to-cart sticky bar -->

<!-- mobile toolbar -->
<div id="kalles-section-toolbar_mobile" class="kalles-section">
    <div class="kalles_toolbar kalles_toolbar_label_true ntpf r__0 l__0 b__0 flex fl_between al_center">
        <div class="type_toolbar_shop kalles_toolbar_item">
            <a href="shop-filter-options.html">
                <span class="toolbar_icon"></span>
                <span class="kalles_toolbar_label">Shop</span>
            </a>
        </div>
        <div class="type_toolbar_filter kalles_toolbar_item dn">
            <a class="dt_trigger_cl" href="#" data-trigger=".btn_filter">
                <span class="toolbar_icon"></span>
                <span class="kalles_toolbar_label">Filter</span>
            </a>
        </div>
        <div class="type_toolbar_wish kalles_toolbar_item">
            <a class="js_link_wis" href="wishlist.html">
				<span class="toolbar_icon">
					<span class="jswcount toolbar_count">3</span>
				</span>
                <span class="kalles_toolbar_label">Wishlist</span>
            </a>
        </div>
        <div class="type_toolbar_cart kalles_toolbar_item">
            <a href="#" class="push_side" data-id="#nt_cart_canvas">
				<span class="toolbar_icon">
					<span class="jsccount toolbar_count">5</span>
				</span>
                <span class="kalles_toolbar_label">Cart</span>
            </a>
        </div>
        <div class="type_toolbar_account kalles_toolbar_item">
            <a href="#" class="push_side" data-id="#nt_login_canvas">
                <span class="toolbar_icon"></span>
                <span class="kalles_toolbar_label">Account</span>
            </a>
        </div>
        <div class="type_toolbar_search kalles_toolbar_item">
            <a href="#" class="push_side" data-id="#nt_search_canvas">
                <span class="toolbar_icon"></span>
                <span class="kalles_toolbar_label">Search</span>
            </a>
        </div>
    </div>
</div>
<!-- end mobile toolbar -->

<!-- mobile menu -->
<div id="nt_menu_canvas" class="nt_fk_canvas nt_sleft dn lazyload">
    <i class="close_pp pegk pe-7s-close ts__03 cd"></i>
    <div class="mb_nav_tabs flex al_center mb_cat_true">
        <div class="mb_nav_title pr mb_nav_ul flex al_center fl_center active" data-id="#kalles-section-mb_nav_js">
            <span class="db truncate">Menu</span>
        </div>
        <div class="mb_nav_title pr flex al_center fl_center" data-id="#kalles-section-mb_cat_js">
            <span class="db truncate">Categories</span>
        </div>
    </div>
    <div id="kalles-section-mb_nav_js" class="mb_nav_tab active">
        <div id="kalles-section-mb_nav" class="kalles-section">
            <ul id="menu_mb_ul" class="nt_mb_menu">
                <li class="menu-item menu-item-has-children only_icon_false">
                    <a href="home-classic.html"><span class="nav_link_txt flex al_center">Demo</span><span class="nav_link_icon ml__5"></span></a>
                    <ul class="sub-menu">
                        <li class="menu-item menu-item-has-children only_icon_false">
                            <a href="home-classic.html"><span class="nav_link_txt flex al_center">Home Pages</span><span class="nav_link_icon ml__5"></span></a>
                            <ul class="sub-sub-menu">
                                <li class="menu-item">
                                    <a href="home-default.html">Home Default</a></li>
                                <li class="menu-item">
                                    <a href="home-classic.html">Home Classic</a>
                                </li>
                                <li class="menu-item">
                                    <a href="home-video-banner.html">Home Video Banner</a>
                                </li>
                                <li class="menu-item">
                                    <a href="home-categories-links.html">Home Categories Links</a>
                                </li>
                                <li class="menu-item">
                                    <a href="home-static-image.html">Home Static Image</a>
                                </li>
                                <li class="menu-item">
                                    <a href="home-metro.html">Home Metro</a>
                                </li>
                                <li class="menu-item">
                                    <a href="home-lookbook.html">Home Lookbook</a>
                                </li>
                                <li class="menu-item">
                                    <a href="home-parallax.html">Home Parallax</a>
                                </li>
                                <li class="menu-item">
                                    <a href="home-instagram-shop.html">Home Instagram Shop</a>
                                </li>
                                <li class="menu-item">
                                    <a href="home-medical.html">Home Medical
                                        <span class="lbc_nav lb_menu_hot ml__5">Hot</span>
                                    </a>
                                </li>
                                <li class="menu-item">
                                    <a href="home-fashion9.html">Home Fashion 9</a>
                                </li>
                                <li class="menu-item">
                                    <a href="home-lookbook-collection.html">Home Lookbook Collection</a>
                                </li>
                                <li class="menu-item">
                                    <a href="home-fashion-simple.html">Home Fashion Simple</a>
                                </li>
                                <li class="menu-item">
                                    <a href="home-fashion10.html">Home Fashion 10</a>
                                </li>
                                <li class="menu-item">
                                    <a href="home-decor.html">Home Decor</a>
                                </li>
                                <li class="menu-item">
                                    <a href="home-decor2.html">Home Decor 2</a>
                                </li>
                                <li class="menu-item">
                                    <a href="home-fashion-vertical.html">Home Fashion Vertical</a>
                                </li>
                                <li class="menu-item">
                                    <a href="home-electric.html">Home Electric</a>
                                </li>
                                <li class="menu-item">
                                    <a href="home-electric-vertical.html">Home Electric Vertical</a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item menu-item-has-children only_icon_false">
                            <a href="home-header-01.html"><span class="nav_link_txt flex al_center">Header Layouts</span><span class="nav_link_icon ml__5"></span></a>
                            <ul class="sub-sub-menu">
                                <li class="menu-item">
                                    <a href="home-header-01.html">Header Layout 1</a></li>
                                <li class="menu-item">
                                    <a href="home-header-02.html">Header Layout 2</a>
                                </li>
                                <li class="menu-item">
                                    <a href="home-default.html">Header Layout 3</a></li>
                                <li class="menu-item">
                                    <a href="home-header-04.html">Header Layout 4</a>
                                </li>
                                <li class="menu-item">
                                    <a href="home-electric.html">Header Layout 5</a>
                                </li>
                                <li class="menu-item">
                                    <a href="home-header-06.html">Header Layout 6</a>
                                </li>
                                <li class="menu-item">
                                    <a href="home-fashion-vertical.html">Header Layout 7</a>
                                </li>
                                <li class="menu-item">
                                    <a href="home-electric-vertical.html">Header Layout 8</a>
                                </li>
                                <li class="menu-item">
                                    <a href="home-decor.html">Header Transparent</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="menu-item menu-item-has-children only_icon_false">
                    <a href="shop-filter-sidebar.html"><span class="nav_link_txt flex al_center">Shop</span><span class="nav_link_icon ml__5"></span></a>
                    <ul class="sub-menu">
                        <li class="menu-item">
                            <a href="shop.html">Grid Layout</a>
                        </li>
                        <li class="menu-item">
                            <a href="shop-packery-layout.html">Packery Layout</a>
                        </li>
                        <li class="menu-item">
                            <a href="shop-masonry-layout.html">Masonry Layout</a>
                        </li>
                        <li class="menu-item">
                            <a href="shop-full-width-layout.html">Full Width Layout</a>
                        </li>
                        <li class="menu-item">
                            <a href="shop-1600px-layout.html">1600px Layout</a>
                        </li>
                        <li class="menu-item">
                            <a href="shop-left-sidebar.html">Left Sidebar</a>
                        </li>
                        <li class="menu-item">
                            <a href="shop-right-sidebar.html">Right Sidebar</a>
                        </li>
                        <li class="menu-item">
                            <a href="shop-hidden-sidebar.html">Hidden sidebar</a>
                        </li>
                        <li class="menu-item">
                            <a href="shop.html">Filters area</a>
                        </li>
                        <li class="menu-item">
                            <a href="shop-filter-sidebar.html">Filters sidebar</a>
                        </li>
                        <li class="menu-item">
                            <a href="shopping-cart.html">Shopping cart</a>
                        </li>
                    </ul>
                </li>
                <li class="menu-item menu-item-has-children only_icon_false">
                    <a href="product-detail-layout-01.html"><span class="nav_link_txt flex al_center">Product</span><span class="nav_link_icon ml__5"></span></a>
                    <ul class="sub-menu">
                        <li class="menu-item">
                            <a href="product-detail-external-affiliate.html">External/Affiliate Product</a>
                        </li>
                        <li class="menu-item">
                            <a href="product-detail-simple-product.html">Simple product</a>
                        </li>
                        <li class="menu-item">
                            <a href="product-detail-layout-01.html">Variable product</a>
                        </li>
                        <li class="menu-item">
                            <a href="product-detail-grouped-product.html">Grouped Product<span class="lbc_nav_mb ml__5 lb_menu_hot">hot</span></a>
                        </li>
                        <li class="menu-item">
                            <a href="product-detail-layout-02.html">Inner Zoom #1</a>
                        </li>
                        <li class="menu-item">
                            <a href="product-detail-layout-01.html">External Zoom</a>
                        </li>
                        <li class="menu-item">
                            <a href="product-detail-layout-03.html">Inner Zoom #2</a>
                        </li>
                        <li class="menu-item">
                            <a href="product-detail-layout-01.html">PhotoSwipe Popup</a>
                        </li>
                        <li class="menu-item">
                            <a href="product-detail-description-with-product.html">Description with product</a>
                        </li>
                        <li class="menu-item">
                            <a href="product-detail-description-with-instagram-shop.html">Description with instagram shop</a>
                        </li>
                        <li class="menu-item">
                            <a href="product-detail-product-video.html">Product video<span class="lbc_nav_mb ml__5 lb_menu_hot">hot</span></a>
                        </li>
                        <li class="menu-item">
                            <a href="product-detail-3d-ar-models.html">Product 3D, AR models<span class="lbc_nav_mb ml__5 lb_menu_hot">hot</span></a>
                        </li>
                    </ul>
                </li>
                <li class="menu-item"><a href="shop.html">Sale</a></li>
                <li class="menu-item menu-item-has-children only_icon_false">
                    <a href="portfolio-3-columns.html"><span class="nav_link_txt flex al_center">Portfolio</span><span class="nav_link_icon ml__5"></span></a>
                    <ul class="sub-menu">
                        <li class="menu-item">
                            <a href="portfolio.html">Portfolio 2 Columns</a>
                        </li>
                        <li class="menu-item">
                            <a href="portfolio-3-columns.html">Portfolio 3 Columns</a>
                        </li>
                        <li class="menu-item">
                            <a href="portfolio-4-columns.html">Portfolio 4 Columns</a>
                        </li>
                        <li class="menu-item">
                            <a href="single-portfolio-with-shop.html">Single Portfolio With Shop</a>
                        </li>
                        <li class="menu-item">
                            <a href="single-portfolio-with-lookbook.html">Single Portfolio With Lookbook</a>
                        </li>
                        <li class="menu-item">
                            <a href="single-portfolio-with-instagram-shop.html">Portfolio With Instagram Shop</a>
                        </li>
                    </ul>
                </li>
                <li class="menu-item menu-item-has-children only_icon_false">
                    <a href="home-lookbook-collection.html"><span class="nav_link_txt flex al_center">Lookbook</span><span class="nav_link_icon ml__5"></span></a>
                    <ul class="sub-menu">
                        <li class="menu-item">
                            <a href="home-lookbook.html">Lookbook Slider</a>
                        </li>
                        <li class="menu-item">
                            <a href="home-lookbook-collection.html">Lookbook Section</a>
                        </li>
                        <li class="menu-item">
                            <a href="home-default.html">Lookbook instagram</a></li>
                        <li class="menu-item">
                            <a href="product-detail-description-with-lookbook.html">Lookbook in product</a>
                        </li>
                        <li class="menu-item">
                            <a href="blog-post-with-lookbook.html">Lookbook in blog post</a>
                        </li>
                        <li class="menu-item">
                            <a href="single-portfolio-with-lookbook.html">Lookbook in portfolio post</a>
                        </li>
                        <li class="menu-item">
                            <a href="lookbook-in-page.html">Lookbook in page</a>
                        </li>
                    </ul>
                </li>
                <li class="menu-item"><a href="blog-grid.html">Blog</a></li>
                <li class="menu-item menu-item-btns menu-item-wishlist">
                    <a class="js_link_wis" href="wishlist.html"><span class="iconbtns">Wishlist</span></a></li>
                <li class="menu-item menu-item-btns menu-item-sea push_side" data-id="#nt_search_canvas">
                    <a href="#"><span class="iconbtns">Search</span></a>
                </li>
                <li class="menu-item menu-item-btns menu-item-acount">
                    <a href="#" class="push_side" data-id="#nt_login_canvas"><span class="iconbtns">Login / Register</span></a>
                </li>
                <li class="menu-item menu-item-infos">
                    <p class="menu_infos_title">Need help?</p>
                    <div class="menu_infos_text">
                        <i class="pegk pe-7s-call fwb mr__10"></i>+01 23456789<br><i class="pegk pe-7s-mail fwb mr__10"></i><a class="cg" href="https://themes.the4.co/cdn-cgi/l/email-protection#dbb8b7baaebe9bbfb4b6bab2b5f5b8b4b6"><span class="__cf_email__" data-cfemail="e2818e839787a2868d8f838b8ccc818d8f">[email&#160;protected]</span></a>
                    </div>
                </li>
                <li class="menu-item menu-item-has-children only_icon_false currencies">
                    <a href="#"><span class="current dib flagst4 flagst4-sm flagst4-USD lazyload">USD</span><span class="nav_link_icon ml__5"></span></a>
                    <ul class="sub-menu">
                        <li><a class="currency-item nt-currency-flag--aud--w16-h-12 cg db" href="#">AUD</a></li>
                        <li><a class="currency-item nt-currency-flag--cad--w16-h-12 cg db" href="#">CAD</a></li>
                        <li><a class="currency-item nt-currency-flag--dkk--w16-h-12 cg db" href="#">DKK</a></li>
                        <li><a class="currency-item nt-currency-flag--eur--w16-h-12 cg db" href="#">EUR</a></li>
                        <li><a class="currency-item nt-currency-flag--gbp--w16-h-12 cg db" href="#">GBP</a></li>
                        <li><a class="currency-item nt-currency-flag--hkd--w16-h-12 cg db" href="#">HKD</a></li>
                        <li><a class="currency-item nt-currency-flag--jpy--w16-h-12 cg db" href="#">JPY</a></li>
                        <li><a class="currency-item nt-currency-flag--nzd--w16-h-12 cg db" href="#">NZD</a></li>
                        <li><a class="currency-item nt-currency-flag--sgd--w16-h-12 cg db" href="#">SGD</a></li>
                        <li><a class="currency-item nt-currency-flag--usd--w16-h-12 cg db selected" href="#">USD</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div id="kalles-section-mb_cat_js" class="mb_nav_tab">
        <div id="kalles-section-mb_cat" class="kalles-section">
            <ul id="menu_mb_cat" class="nt_mb_menu">
                <li class="menu-item">
                    <a href="shop-filter-options.html"><i class="las la-female mr__10 fs__20"></i>Women’s Clothing</a></li>
                <li class="menu-item">
                    <a href="shop-filter-options.html"><i class="las la-male mr__10 fs__20"></i>Men’s Clothing</a></li>
                <li class="menu-item">
                    <a href="shop-1600px-layout.html"><i class="las la-clock mr__10 fs__20"></i>Watches</a></li>
                <li class="menu-item">
                    <a href="shop-filter-options.html"><i class="las la-glasses mr__10 fs__20"></i>Accessories</a></li>
                <li class="menu-item">
                    <a href="shop-filter-options.html"><i class="las la-camera-retro mr__10 fs__20"></i>Electric</a></li>
                <li class="menu-item">
                    <a href="shop-1600px-layout.html"><i class="las la-shoe-prints mr__10 fs__20"></i>Shoes</a></li>
                <li class="menu-item">
                    <a href="shop-filter-options.html"><i class="las la-gem mr__10 fs__20"></i>Jewellery</a></li>
                <li class="menu-item">
                    <a href="shop-filter-options.html"><i class="las la-tshirt mr__10 fs__20"></i>T-Shirt</a></li>
                <li class="menu-item">
                    <a href="shop-1600px-layout.html"><i class="las la-child mr__10 fs__20"></i>Toys, Kids &amp; Baby</a>
                </li>
                <li class="menu-item">
                    <a href="shop-filter-options.html"><i class="las la-chair mr__10 fs__20"></i>Decor</a>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- end mobile menu -->

<!-- popup ask a question-->
<div id="popup-ask-a-question" class="d-none">
    <div class="mfp-with-anim white-popup ajax_pp_popup ask_ajax_pp_js cb">
        <form method="post" action="#" class="contact-form">
            <h3 class="tc mg__0 mb__20">Ask a Question</h3>
            <p>
                <label for="ContactFormAsk-name">Your Name</label>
                <input type="text" id="ContactFormAsk-name" name="contact[name]" required="required" value=""/>
            </p>
            <p>
                <label for="ContactFormAsk-name">Your Name</label>
                <input type="email" id="ContactFormAsk-email" name="email" value="" required="required"/>
            </p>

            <p>
                <label for="ContactFormAsk-phone">Your Phone Number</label>
                <input type="tel" id="ContactFormAsk-phone" name="contact[phone]" pattern="[0-9\-]*" value=""/>
            </p>
            <p class="hide hidden">
                <label for="ContactFormAsk-product">Product</label>
                <textarea rows="20" id="ContactFormAsk-product" name="contact[product]" required="required"></textarea>
            </p>
            <p>
                <label for="ContactFormAsk-message">Your Message</label>
                <textarea rows="20" id="ContactFormAsk-message" name="contact[body]" required="required"></textarea>
            </p>
            <input type="submit" class="button w__100" value="Send"/>
        </form>
        <button title="Close (Esc)" type="button" class="mfp-close">×</button>
    </div>
</div>
<!-- end popup ask a question-->

<!-- popup delivery and return-->
<div id="popup-delivery-and-return" class="d-none">
    <div class="mfp-with-anim white-popup ajax_pp_popup dl_ajax_pp_js cb">
        <h5 class="mt__0 mb__15">Delivery</h5>
        <ul>
            <li>All orders shipped with UPS Express.</li>
            <li>Always free shipping for orders over US $250.</li>
            <li>All orders are shipped with a UPS tracking number.</li>
        </ul>
        <h5 class="mt__25 mb__15">Returns</h5>
        <ul>
            <li>Items returned within 14 days of their original shipment date in same as new condition will be eligible for a full refund or store credit.</li>
            <li>Refunds will be charged back to the original form of payment used for purchase.</li>
            <li>Customer is responsible for shipping charges when making returns and shipping/handling fees of original purchase is non-refundable.</li>
            <li>All sale items are final purchases.</li>
        </ul>
        <h5 class="mt__25 mb__15">Help</h5>
        <ul>
            <li>Give us a shout if you have any other questions and/or concerns.</li>
            <li>Email: <a href="https://themes.the4.co/cdn-cgi/l/email-protection#9cfff3f2e8fdffe8dcf8f3f1fdf5f2b2fff3f1"><span class="__cf_email__"><span class="__cf_email__" data-cfemail="fc9f9392889d9f88bc9893919d9592d29f9391">[email&#160;protected]</span></span></a></li>
            <li>Phone: +1 (23) 456 789</li>
        </ul>
        <button title="Close (Esc)" type="button" class="mfp-close">×</button>
    </div>
</div>
<!-- end popup delivery and return-->

<!-- popup size guide-->
<div id="popup-size-guide" class="d-none">
    <div class="mfp-with-anim white-popup ajax_pp_popup ps_ajax_pp_js cb">
        <div class="first-column">
            <h3>Sizing &amp; Fit Guide</h3>
            <p>Please be aware that most of our clothing is Juniors' sizing, which runs smaller than regular US / European Women sizing. Refer to the measurements chart for each individual product to determine the best size for you. Product specific size chart and information can be found in product description or in product picture gallery.</p>
            <p>Our team does it's best to include accurate size details and measurement of each item in the product descriptions. If you have questions regarding sizing or any other information on a specific item, please email us at <a href="https://themes.the4.co/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="0a626f6666654a616b66666f7924696567">[email&#160;protected]</a> for specific details.</p>
        </div>
        <div class="second-column">
            <h3>Find the best size</h3>
            <p>When comparing your measurements to those listed on the site, make sure to check if the fabric is stretchy or not. If it is, it can stretch an inch or more.</p>
            <ul>
                <li>
                    <strong> Bust:</strong> Wrap the measuring tape loosely around the fullest part of your bust to ensure a comfortable fit.
                </li>
                <li>
                    <strong>Waist:</strong> Measure the narrowest part of your natural waist, holding the measuring tape loose enough to fit comfortably.
                </li>
                <li>
                    <strong>Hips:</strong> Drape the measuring tape around the widest part of your hips, resting the tape comfortably against your body.
                </li>
                <li>
                    <strong>Length:</strong> For tops and dresses, measure from the top of your shoulder to the hem. For strapless dresses, measure from the highest part of the neckline to the hem. For pants and skirts, measure from the top of the waist to the hem.
                </li>
                <li>
                    <strong>Sleeve:</strong> With your arm outstretched, measure from the base of your neck to the end of the sleeve hem to determine where the sleeve length will fall on you.
                </li>
            </ul>
        </div>
        <div class="clearfix"></div>
        <hr class="hr">
        <h3 class="text-center">kalles Size Chart</h3>
        <br>
        <div class="tabset">
            <!-- Tab 1 -->
            <input type="radio" name="tabset" id="tab1" aria-controls="size-chart-tab-content__dresses" checked=""><label for="tab1">Dresses</label>
            <!-- Tab 2 -->
            <input type="radio" name="tabset" id="tab2" aria-controls="size-chart-tab-content__tops"><label for="tab2">Tops</label>
            <!-- Tab 3 -->
            <input type="radio" name="tabset" id="tab3" aria-controls="size-chart-tab-content__bottoms"><label for="tab3">Bottoms</label>
            <!-- Tab 4 -->
            <input type="radio" name="tabset" id="tab4" aria-controls="size-chart-tab-content__denim"><label for="tab4">Denim</label>
            <!-- Tab 5 -->
            <input type="radio" name="tabset" id="tab5" aria-controls="size-chart-tab-content__swimwear"><label for="tab5">Swimwear</label>
            <!-- Tab 6 -->
            <input type="radio" name="tabset" id="tab6" aria-controls="size-chart-tab-content__shoes"><label for="tab6">Shoes</label>
            <div class="tab-panels">
                <section id="size-chart-tab-content__dresses" class="tab-panel">
                    <div class="table-responsive mb__30">
                        <h4 class="mb__20">Dress Size Chart (Inch)</h4>
                        <table class="sizeguide_table w__100 m-0">
                            <tbody>
                            <tr>
                                <td colspan="5" class="text-center">
                                    <strong>DRESSES</strong><br>SIZE IN INCHES
                                </td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-head">SIZE</td>
                                <td class="text-center bg-row-head">US / CAN</td>
                                <td class="text-center bg-row-head">BUST</td>
                                <td class="text-center bg-row-head">WAIST</td>
                                <td class="text-center bg-row-head">HIPS</td>
                            </tr>
                            <tr>
                                <td class="text-center">XS</td>
                                <td class="text-center">0</td>
                                <td class="text-center">31"-32"</td>
                                <td class="text-center">24"-25"</td>
                                <td class="text-center">34"-35"</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">S</td>
                                <td class="text-center bg-row-bold">2-4</td>
                                <td class="text-center bg-row-bold">33"-34"</td>
                                <td class="text-center bg-row-bold">26"-27"</td>
                                <td class="text-center bg-row-bold">36"-37"</td>
                            </tr>
                            <tr>
                                <td class="text-center">M</td>
                                <td class="text-center">6-8</td>
                                <td class="text-center">35"-36"</td>
                                <td class="text-center">28"-29"</td>
                                <td class="text-center">38"-39"</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">L</td>
                                <td class="text-center bg-row-bold">10-12</td>
                                <td class="text-center bg-row-bold">37"-39"</td>
                                <td class="text-center bg-row-bold">30"-32"</td>
                                <td class="text-center bg-row-bold">40"-42"</td>
                            </tr>
                            <tr>
                                <td class="text-center">XL</td>
                                <td class="text-center">14</td>
                                <td class="text-center">40"-42"</td>
                                <td class="text-center">33"-35"</td>
                                <td class="text-center">43"-45"</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="table-responsive">
                        <h4 class="mb__20">Dress Size Chart (cm)</h4>
                        <table class="sizeguide_table w__100 m-0">
                            <tbody>
                            <tr>
                                <td colspan="5" class="text-center">
                                    <strong>DRESSES</strong><br>SIZE IN CM
                                </td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-head">SIZE</td>
                                <td class="text-center bg-row-head">US / CAN</td>
                                <td class="text-center bg-row-head">BUST</td>
                                <td class="text-center bg-row-head">WAIST</td>
                                <td class="text-center bg-row-head">HIPS</td>
                            </tr>
                            <tr>
                                <td class="text-center">XS</td>
                                <td class="text-center">0</td>
                                <td class="text-center">78.7-81.2</td>
                                <td class="text-center">60.9-63.5</td>
                                <td class="text-center">86.3-88.9</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">S</td>
                                <td class="text-center bg-row-bold">2-4</td>
                                <td class="text-center bg-row-bold">83.8-86.3</td>
                                <td class="text-center bg-row-bold">66-68.5</td>
                                <td class="text-center bg-row-bold">91.4-93.9</td>
                            </tr>
                            <tr>
                                <td class="text-center">M</td>
                                <td class="text-center">6-8</td>
                                <td class="text-center">88.9-91.4</td>
                                <td class="text-center">71.1-73.6</td>
                                <td class="text-center">96.5-99</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">L</td>
                                <td class="text-center bg-row-bold">10-12</td>
                                <td class="text-center bg-row-bold">93.9-99</td>
                                <td class="text-center bg-row-bold">76.2-81.2</td>
                                <td class="text-center bg-row-bold">101.6-106.6</td>
                            </tr>
                            <tr>
                                <td class="text-center">XL</td>
                                <td class="text-center">14</td>
                                <td class="text-center">101.6-106.6</td>
                                <td class="text-center">81.2-88.9</td>
                                <td class="text-center">109.2-114.3</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </section>
                <section id="size-chart-tab-content__tops" class="tab-panel">
                    <div class="table-responsive mb__30">
                        <h4 class="mb__20">Tops Size Chart (Inch)</h4>
                        <table class="sizeguide_table w__100 m-0">
                            <tbody>
                            <tr>
                                <td colspan="4" class="text-center">
                                    <strong>TOPS</strong><br>SIZE IN INCHES
                                </td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-head">SIZE</td>
                                <td class="text-center bg-row-head">US / CAN</td>
                                <td class="text-center bg-row-head">BUST</td>
                                <td class="text-center bg-row-head">WAIST</td>
                            </tr>
                            <tr>
                                <td class="text-center">XS</td>
                                <td class="text-center">0</td>
                                <td class="text-center">31"-32"</td>
                                <td class="text-center">24"-25"</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">S</td>
                                <td class="text-center bg-row-bold">2-4</td>
                                <td class="text-center bg-row-bold">33"-34"</td>
                                <td class="text-center bg-row-bold">26"-27"</td>
                            </tr>
                            <tr>
                                <td class="text-center">M</td>
                                <td class="text-center">6-8</td>
                                <td class="text-center">35"-36"</td>
                                <td class="text-center">28"-29"</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">L</td>
                                <td class="text-center bg-row-bold">10-12</td>
                                <td class="text-center bg-row-bold">37"-39"</td>
                                <td class="text-center bg-row-bold">30"-32"</td>
                            </tr>
                            <tr>
                                <td class="text-center">XL</td>
                                <td class="text-center">14</td>
                                <td class="text-center">40"-42"</td>
                                <td class="text-center">33"-35"</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="table-responsive">
                        <h4 class="mb__20">Tops Size Chart (cm)</h4>
                        <table class="sizeguide_table w__100 m-0">
                            <tbody>
                            <tr>
                                <td colspan="4" class="text-center">
                                    <strong>TOPS</strong><br>SIZE IN CM
                                </td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-head">SIZE</td>
                                <td class="text-center bg-row-head">US / CAN</td>
                                <td class="text-center bg-row-head">BUST</td>
                                <td class="text-center bg-row-head">WAIST</td>
                            </tr>
                            <tr>
                                <td class="text-center">XS</td>
                                <td class="text-center">0</td>
                                <td class="text-center">78.7-81.2</td>
                                <td class="text-center">60.9-63.5</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">S</td>
                                <td class="text-center bg-row-bold">2-4</td>
                                <td class="text-center bg-row-bold">83.8-86.3</td>
                                <td class="text-center bg-row-bold">66-68.5</td>
                            </tr>
                            <tr>
                                <td class="text-center">M</td>
                                <td class="text-center">6-8</td>
                                <td class="text-center">88.9-91.4</td>
                                <td class="text-center">71.1-73.6</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">L</td>
                                <td class="text-center bg-row-bold">10-12</td>
                                <td class="text-center bg-row-bold">93.9-99</td>
                                <td class="text-center bg-row-bold">76.2-81.2</td>
                            </tr>
                            <tr>
                                <td class="text-center">XL</td>
                                <td class="text-center">14</td>
                                <td class="text-center">101.6-106.6</td>
                                <td class="text-center">83.8-88.9</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </section>
                <section id="size-chart-tab-content__bottoms" class="tab-panel">
                    <div class="table-responsive mb__30">
                        <h4 class="mb__20">Bottoms Size Chart (Inch)</h4>
                        <table class="sizeguide_table w__100 m-0">
                            <tbody>
                            <tr>
                                <td colspan="4" class="text-center">
                                    <strong>BOTTOMS</strong><br>SIZE IN INCHES
                                </td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-head">SIZE</td>
                                <td class="text-center bg-row-head">US / CAN</td>
                                <td class="text-center bg-row-head">WAIST</td>
                                <td class="text-center bg-row-head">HIPS</td>
                            </tr>
                            <tr>
                                <td class="text-center">XS</td>
                                <td class="text-center">0</td>
                                <td class="text-center">24"-25"</td>
                                <td class="text-center">34"-35"</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">S</td>
                                <td class="text-center bg-row-bold">2-4</td>
                                <td class="text-center bg-row-bold">26"-27"</td>
                                <td class="text-center bg-row-bold">36"-37"</td>
                            </tr>
                            <tr>
                                <td class="text-center">M</td>
                                <td class="text-center">6-8</td>
                                <td class="text-center">28"-29"</td>
                                <td class="text-center">38"-39"</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">L</td>
                                <td class="text-center bg-row-bold">10-12</td>
                                <td class="text-center bg-row-bold">30"-32"</td>
                                <td class="text-center bg-row-bold">40"-42"</td>
                            </tr>
                            <tr>
                                <td class="text-center">XL</td>
                                <td class="text-center">14</td>
                                <td class="text-center">33"-35"</td>
                                <td class="text-center">43"-45"</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="table-responsive">
                        <h4 class="mb__20">Bottoms Size Chart (cm)</h4>
                        <table class="sizeguide_table w__100 m-0">
                            <tbody>
                            <tr>
                                <td colspan="4" class="text-center">
                                    <strong>BOTTOMS</strong><br>SIZE IN CM
                                </td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-head">SIZE</td>
                                <td class="text-center bg-row-head">US / CAN</td>
                                <td class="text-center bg-row-head">WAIST</td>
                                <td class="text-center bg-row-head">HIPS</td>
                            </tr>
                            <tr>
                                <td class="text-center">XS</td>
                                <td class="text-center">0</td>
                                <td class="text-center">60.9-63.5</td>
                                <td class="text-center">86.3-88.9</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">S</td>
                                <td class="text-center bg-row-bold">2-4</td>
                                <td class="text-center bg-row-bold">66-68.5</td>
                                <td class="text-center bg-row-bold">91.4-93.9</td>
                            </tr>
                            <tr>
                                <td class="text-center">M</td>
                                <td class="text-center">6-8</td>
                                <td class="text-center">71.1-73.6</td>
                                <td class="text-center">96.4-93.9</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">L</td>
                                <td class="text-center bg-row-bold">10-12</td>
                                <td class="text-center bg-row-bold">76.2-81.2</td>
                                <td class="text-center bg-row-bold">101.6-106.6</td>
                            </tr>
                            <tr>
                                <td class="text-center">XL</td>
                                <td class="text-center">14</td>
                                <td class="text-center">83.8-88.9</td>
                                <td class="text-center">109.2-114.3</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </section>
                <section id="size-chart-tab-content__denim" class="tab-panel">
                    <div class="table-responsive mb__30">
                        <h4 class="mb__20">Denim Size Chart (Inch)</h4>
                        <table class="sizeguide_table w__100 m-0">
                            <tbody>
                            <tr>
                                <td colspan="5" class="text-center">
                                    <b>DENIM</b><br>SIZE IN INCHES
                                </td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-head">WAIST SIZE</td>
                                <td class="text-center bg-row-head">JUNIOR SIZING</td>
                                <td class="text-center bg-row-head">WAIST</td>
                                <td class="text-center bg-row-head">LOW WAIST</td>
                                <td class="text-center bg-row-head">HIPS</td>
                            </tr>
                            <tr>
                                <td class="text-center">24</td>
                                <td class="text-center">0</td>
                                <td class="text-center">24"-25"</td>
                                <td class="text-center">26"-27"</td>
                                <td class="text-center">32"-33"</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">25</td>
                                <td class="text-center bg-row-bold">1</td>
                                <td class="text-center bg-row-bold">25"-26"</td>
                                <td class="text-center bg-row-bold">28"-29"</td>
                                <td class="text-center bg-row-bold">33"-34"</td>
                            </tr>
                            <tr>
                                <td class="text-center">26</td>
                                <td class="text-center">3</td>
                                <td class="text-center">26"-27"</td>
                                <td class="text-center">30"-31"</td>
                                <td class="text-center">34"-35"</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">27</td>
                                <td class="text-center bg-row-bold">5</td>
                                <td class="text-center bg-row-bold">27"-28"</td>
                                <td class="text-center bg-row-bold">31"-32"</td>
                                <td class="text-center bg-row-bold">35"-36"</td>
                            </tr>
                            <tr>
                                <td class="text-center">28</td>
                                <td class="text-center">7</td>
                                <td class="text-center">28"-29"</td>
                                <td class="text-center">32"-33"</td>
                                <td class="text-center">36"-37"</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">29</td>
                                <td class="text-center bg-row-bold">9</td>
                                <td class="text-center bg-row-bold">29"-30"</td>
                                <td class="text-center bg-row-bold">33"-34"</td>
                                <td class="text-center bg-row-bold">37"-38"</td>
                            </tr>
                            <tr>
                                <td class="text-center">30</td>
                                <td class="text-center">11</td>
                                <td class="text-center">30"-31"</td>
                                <td class="text-center">34"-35"</td>
                                <td class="text-center">38"-39"</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">31</td>
                                <td class="text-center bg-row-bold">13</td>
                                <td class="text-center bg-row-bold">31"-3"</td>
                                <td class="text-center bg-row-bold">35"-36"</td>
                                <td class="text-center bg-row-bold">39"-40"</td>
                            </tr>
                            <tr>
                                <td class="text-center">32</td>
                                <td class="text-center">15</td>
                                <td class="text-center">32"-33"</td>
                                <td class="text-center">36"-37"</td>
                                <td class="text-center">40"-41"</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="table-responsive">
                        <h4 class="mb__20">Denim Size Chart (cm)</h4>
                        <table class="sizeguide_table w__100 m-0">
                            <tbody>
                            <tr>
                                <td colspan="5" class="text-center">
                                    <strong>DENIM</strong><br>SIZE IN CM
                                </td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-head">WAIST SIZE</td>
                                <td class="text-center bg-row-head">JUNIOR SIZING</td>
                                <td class="text-center bg-row-head">WAIST</td>
                                <td class="text-center bg-row-head">LOW WAIST</td>
                                <td class="text-center bg-row-head">HIPS</td>
                            </tr>
                            <tr>
                                <td class="text-center">24</td>
                                <td class="text-center">0</td>
                                <td class="text-center">60.9-63.5</td>
                                <td class="text-center">66-68.5</td>
                                <td class="text-center">81.2-83.8</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">25</td>
                                <td class="text-center bg-row-bold">1</td>
                                <td class="text-center bg-row-bold">63.5-66</td>
                                <td class="text-center bg-row-bold">71.1-73.6</td>
                                <td class="text-center bg-row-bold">83.8-86.3</td>
                            </tr>
                            <tr>
                                <td class="text-center">26</td>
                                <td class="text-center">3</td>
                                <td class="text-center">66-68.5</td>
                                <td class="text-center">76.2-78.7</td>
                                <td class="text-center">86.3-88.9</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">27</td>
                                <td class="text-center bg-row-bold">5</td>
                                <td class="text-center bg-row-bold">68.5-71.1</td>
                                <td class="text-center bg-row-bold">78.7-81.2</td>
                                <td class="text-center bg-row-bold">88.9-91.4</td>
                            </tr>
                            <tr>
                                <td class="text-center">28</td>
                                <td class="text-center">7</td>
                                <td class="text-center">71.1-73.6</td>
                                <td class="text-center">81.2-83.8</td>
                                <td class="text-center">91.4-93.9</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">29</td>
                                <td class="text-center bg-row-bold">9</td>
                                <td class="text-center bg-row-bold">73.6-76.2</td>
                                <td class="text-center bg-row-bold">83.8-86.3</td>
                                <td class="text-center bg-row-bold">93.9-96.5</td>
                            </tr>
                            <tr>
                                <td class="text-center">30</td>
                                <td class="text-center">11</td>
                                <td class="text-center">76.2-78.7</td>
                                <td class="text-center">86.3-88.9</td>
                                <td class="text-center">96.5-99</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">31</td>
                                <td class="text-center bg-row-bold">13</td>
                                <td class="text-center bg-row-bold">78.7-81.2</td>
                                <td class="text-center bg-row-bold">88.9-91.4</td>
                                <td class="text-center bg-row-bold">99-101.6</td>
                            </tr>
                            <tr>
                                <td class="text-center">32</td>
                                <td class="text-center">15</td>
                                <td class="text-center">81.2-83.8</td>
                                <td class="text-center">91.4-93.9</td>
                                <td class="text-center">101.6-104.1</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </section>
                <section id="size-chart-tab-content__swimwear" class="tab-panel">
                    <div class="table-responsive mb__30">
                        <h4 class="mb__20">Swimwear Size Chart (Inch)</h4>
                        <table class="sizeguide_table w__100 m-0">
                            <tbody>
                            <tr>
                                <td colspan="5" class="text-center">
                                    <strong>SWIMWEAR</strong><br>SIZE IN INCHES
                                </td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-head">SIZE</td>
                                <td class="text-center bg-row-head">US / CAN</td>
                                <td class="text-center bg-row-head">BUST</td>
                                <td class="text-center bg-row-head">WAIST</td>
                                <td class="text-center bg-row-head">HIPS</td>
                            </tr>
                            <tr>
                                <td class="text-center">XS</td>
                                <td class="text-center">0</td>
                                <td class="text-center">31"-32"</td>
                                <td class="text-center">24"-25"</td>
                                <td class="text-center">33"-34"</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">S</td>
                                <td class="text-center bg-row-bold">2</td>
                                <td class="text-center bg-row-bold">33"-34"</td>
                                <td class="text-center bg-row-bold">26"-27"</td>
                                <td class="text-center bg-row-bold">35"-37"</td>
                            </tr>
                            <tr>
                                <td class="text-center">M</td>
                                <td class="text-center">4</td>
                                <td class="text-center">35"-36"</td>
                                <td class="text-center">28"-29"</td>
                                <td class="text-center">37"-38"</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">L</td>
                                <td class="text-center bg-row-bold">6</td>
                                <td class="text-center bg-row-bold">37"-39"</td>
                                <td class="text-center bg-row-bold">30"-32"</td>
                                <td class="text-center bg-row-bold">39"-41"</td>
                            </tr>
                            <tr>
                                <td class="text-center">XL</td>
                                <td class="text-center">8</td>
                                <td class="text-center">40"-42"</td>
                                <td class="text-center">33"-35"</td>
                                <td class="text-center">42"-44"</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="table-responsive">
                        <h4 class="mb__20">Swimwear Size Chart (cm)</h4>
                        <table class="sizeguide_table w__100 m-0">
                            <tbody>
                            <tr>
                                <td colspan="5" class="text-center">
                                    <strong>SWIMWEAR</strong><br>SIZE IN CM
                                </td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-head">SIZE</td>
                                <td class="text-center bg-row-head">US / CAN</td>
                                <td class="text-center bg-row-head">BUST</td>
                                <td class="text-center bg-row-head">WAIST</td>
                                <td class="text-center bg-row-head">HIPS</td>
                            </tr>
                            <tr>
                                <td class="text-center">XS</td>
                                <td class="text-center">0</td>
                                <td class="text-center">78.7-81.2</td>
                                <td class="text-center">60.9-63.5</td>
                                <td class="text-center">83.8-86.3</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">S</td>
                                <td class="text-center bg-row-bold">2</td>
                                <td class="text-center bg-row-bold">83.8-86.3</td>
                                <td class="text-center bg-row-bold">66-68.5</td>
                                <td class="text-center bg-row-bold">88.9-93.9</td>
                            </tr>
                            <tr>
                                <td class="text-center">M</td>
                                <td class="text-center">4</td>
                                <td class="text-center">88.9-91.4</td>
                                <td class="text-center">71.1-73.6</td>
                                <td class="text-center">93.9-96.5</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">L</td>
                                <td class="text-center bg-row-bold">6</td>
                                <td class="text-center bg-row-bold">93.9-99</td>
                                <td class="text-center bg-row-bold">76.2-81.2</td>
                                <td class="text-center bg-row-bold">99-104.1</td>
                            </tr>
                            <tr>
                                <td class="text-center">XL</td>
                                <td class="text-center">8</td>
                                <td class="text-center">101.6-106.6</td>
                                <td class="text-center">81.2-88.9</td>
                                <td class="text-center">106.6-111.7</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </section>
                <section id="size-chart-tab-content__shoes" class="tab-panel">
                    <div class="table-responsive">
                        <h4 class="mb__20">Shoes Size Chart</h4>
                        <table class="sizeguide_table w__100 ml-auto mr-auto">
                            <tbody>
                            <tr>
                                <td class="text-center bg-row-head">US</td>
                                <td class="text-center bg-row-head">EURO</td>
                                <td class="text-center bg-row-head">UK</td>
                                <td class="text-center bg-row-head">AUS</td>
                                <td class="text-center bg-row-head">JAPAN</td>
                                <td class="text-center bg-row-head">CHINA</td>
                            </tr>
                            <tr>
                                <td class="text-center">5</td>
                                <td class="text-center">35-36</td>
                                <td class="text-center">3</td>
                                <td class="text-center">3.5</td>
                                <td class="text-center">21.5</td>
                                <td class="text-center">35</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">5.5</td>
                                <td class="text-center bg-row-bold">36</td>
                                <td class="text-center bg-row-bold">3.5</td>
                                <td class="text-center bg-row-bold">4</td>
                                <td class="text-center bg-row-bold">22</td>
                                <td class="text-center bg-row-bold">35.5</td>
                            </tr>
                            <tr>
                                <td class="text-center">6</td>
                                <td class="text-center">36-37</td>
                                <td class="text-center">4</td>
                                <td class="text-center">4.5</td>
                                <td class="text-center">22.5</td>
                                <td class="text-center">36</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">6.5</td>
                                <td class="text-center bg-row-bold">37</td>
                                <td class="text-center bg-row-bold">4.5</td>
                                <td class="text-center bg-row-bold">5</td>
                                <td class="text-center bg-row-bold">23</td>
                                <td class="text-center bg-row-bold">36.5</td>
                            </tr>
                            <tr>
                                <td class="text-center">7</td>
                                <td class="text-center">37-38</td>
                                <td class="text-center">5</td>
                                <td class="text-center">5.5</td>
                                <td class="text-center">23.5</td>
                                <td class="text-center">37</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">7.5</td>
                                <td class="text-center bg-row-bold">38</td>
                                <td class="text-center bg-row-bold">5.5</td>
                                <td class="text-center bg-row-bold">6</td>
                                <td class="text-center bg-row-bold">24</td>
                                <td class="text-center bg-row-bold">37.5</td>
                            </tr>
                            <tr>
                                <td class="text-center">8</td>
                                <td class="text-center">38-39</td>
                                <td class="text-center">6</td>
                                <td class="text-center">6.5</td>
                                <td class="text-center">24.5</td>
                                <td class="text-center">38</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">8.5</td>
                                <td class="text-center bg-row-bold">39</td>
                                <td class="text-center bg-row-bold">6.5</td>
                                <td class="text-center bg-row-bold">7</td>
                                <td class="text-center bg-row-bold">25</td>
                                <td class="text-center bg-row-bold">38.5</td>
                            </tr>
                            <tr>
                                <td class="text-center">9</td>
                                <td class="text-center">39-40</td>
                                <td class="text-center">7</td>
                                <td class="text-center">7.5</td>
                                <td class="text-center">25.5</td>
                                <td class="text-center">39</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">9.5</td>
                                <td class="text-center bg-row-bold">40</td>
                                <td class="text-center bg-row-bold">7.5</td>
                                <td class="text-center bg-row-bold">8</td>
                                <td class="text-center bg-row-bold">26</td>
                                <td class="text-center bg-row-bold">39.5</td>
                            </tr>
                            <tr>
                                <td class="text-center">10</td>
                                <td class="text-center">40-41</td>
                                <td class="text-center">8</td>
                                <td class="text-center">8.5</td>
                                <td class="text-center">26.5</td>
                                <td class="text-center">40</td>
                            </tr>
                            <tr>
                                <td class="text-center bg-row-bold">11</td>
                                <td class="text-center bg-row-bold">41-42</td>
                                <td class="text-center bg-row-bold">9</td>
                                <td class="text-center bg-row-bold">9.5</td>
                                <td class="text-center bg-row-bold">27.5</td>
                                <td class="text-center bg-row-bold">41</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </section>
            </div>
        </div>
        <p>
            <b>Attention:</b> This guide provides general sizing information only, and fit can vary depending on style and brand. For more specific sizing information on the product, please refer to product description.
        </p>
        <b>NOTE:</b>
        <ul>
            <li>All kalles models are wearing size small in tops and dresses, and size 1, 3, or 5 in jeans depending on their body type.</li>
            <li>Most kalles jeans &amp; dresses have some stretch, please refer to product description for fabric details.</li>
            <li>Most kalles bottoms have an inseam of 31-34” depending on the cut and style. Sizing may vary depending on cut and style.</li>
        </ul>
        <br>
        <h4 class="text-center">STILL NEED HELP? CONTACT US ON</h4>
        <h4 class="text-center">+1 (646) 389-7242</h4>
        <button title="Close (Esc)" type="button" class="mfp-close">×</button>
    </div>
</div>
<!-- end popup size guide-->

<!--review form-->
<div id="popup-leave-review" class="d-none">
    <div class="r--write-review r--desktop mfp-with-anim review-popup__content">
        <div class="r--write-wrapper">
            <div class="r--write-top r--titles-top">
                <div class="r--title-form">
                    <span>Rate Us</span>
                </div>
                <div class="r--write-product">
                    <span class="r--img-wrapper">
                        <img src="assets/images/single-product/des-01.jpg" class="r--center-middle" alt="">
                    </span>
                    <div class="r--info-product">
                        <p class="r--text-limit">Cream women pants</p>
                        <div class="kalles-rating-result">
                            <span class="kalles-rating-result__pipe">
                                <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                                <span class="kalles-rating-result__start kalles-rating-result__start--big active"></span>
                                <span class="kalles-rating-result__start kalles-rating-result__start--big"></span>
                            </span>
                            <span class="kalles-rating-result__number">13 reviews</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="border-modal"></div>
            <form name="reviewform" class="r--form-write" method="post" action="#">
                <div class="r--write-input r--flex-center r--rate-review">
                    <label class="r--label-quality">Quality</label>
                    <div class="rate">
                        <input type="radio" id="star1" name="rate" value="1">
                        <label for="star1" title="text">1 star</label>
                        <input type="radio" id="star2" name="rate" value="2">
                        <label for="star2" title="text">2 stars</label>
                        <input type="radio" id="star3" name="rate" value="3">
                        <label for="star3" title="text">3 stars</label>
                        <input type="radio" id="star4" name="rate" value="4">
                        <label for="star4" title="text">4 stars</label>
                        <input type="radio" id="star5" name="rate" value="5" checked>
                        <label for="star5" title="text">5 stars</label>
                    </div>
                </div>
                <div class="r--write-input">
                    <label for="review_customer_name">Your Name*</label>
                    <div class="r--input">
                        <input name="review_customer_name" type="text" placeholder="John Smith" required="required" id="review_customer_name">
                    </div>
                </div>
                <div class="r--write-input">
                    <label for="review_customer_email">Your Email*</label>
                    <div class="r--input">
                        <input name="review_customer_email" type="email" placeholder="example@yourdomain.com" required="required" id="review_customer_email">
                    </div>
                </div>
                <div class="r--write-input">
                    <label for="review_customer_title">Review Title</label>
                    <input name="review_customer_title" type="text" placeholder="Look great" id="review_customer_title">
                </div>
                <div class="r--write-input">
                    <label for="review_customer_content">Review Content</label>
                    <div class="r--input">
                        <textarea name="review_customer_content" placeholder="Write something" required="required" id="review_customer_content"></textarea>
                    </div>
                </div>
                <div class="r--write-submit">
                    <button type="submit" class="r--submit-form r--button">
                        <span class="text-white">Submit Your Review</span></button>
                </div>
            </form>
        </div>
    </div>
</div>
<!--review form-->

<!--reply a review-->
<div id="popup-reply-review" class="d-none">
    <div class="r--write-review r--desktop mfp-with-anim review-popup__content">
        <div class="r--reply-form r--reply-review">
            <div class="r--reply-form-wrapper">
                <div class="r--form-top r--titles-top">
                    <div class="r--reply-item-review">
                        <div class="r--author r--flex-center">
                            <div class="r--avatar-wp">
                                <div class="r--avatar-default text-center text-white">p</div>
                            </div>
                            <div class="r--detail-right"><span class="r--author-review">Peter</span></div>
                        </div>
                        <div class="r--star-review r--flex-center">
                            <div class="kalles-rating-result">
                                <span class="kalles-rating-result__pipe">
                                    <span class="kalles-rating-result__start"></span>
                                    <span class="kalles-rating-result__start"></span>
                                    <span class="kalles-rating-result__start"></span>
                                    <span class="kalles-rating-result__start active"></span>
                                    <span class="kalles-rating-result__start"></span>
                                </span>
                            </div>
                            <time datetime="2020-12-23T22:01:46Z" class="r--date-review r--date-reply">1 month ago</time>
                        </div>
                        <div class="r--attribute-review title-body">
                            <span class="title-review">Contrary to popular belief</span>
                            <p class="body-review">
                                <span class="brless">It is a long established fact that a reader will be distracted by the readable content of a page</span>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="r--reply-container">
                    <div class="r--reply-content">
                        <ul class="r--reply-items">
                            <li class="r--reply-item">
                                <div class="r--avatar-default avatar--bg-red">a</div>
                                <div class="r--reply-content-wrapper">
                                    <div class="r--reply-content">
                                        <span class="r--author-review">AdamStore</span>
                                        <span>It is a long established fact that a reader will be distracted by the readable content of a page</span>
                                    </div>
                                    <span class="r--date-reply"><time datetime="2020-12-23T10:02:05Z">1 month ago</time></span>
                                </div>
                            </li>
                            <li class="r--reply-item">
                                <div class="r--avatar-default avatar--bg-purple">s</div>
                                <div class="r--reply-content-wrapper">
                                    <div class="r--reply-content">
                                        <span class="r--author-review">SevenAM</span>
                                        <span>It is a long established fact that a reader will be distracted by the readable content of a page</span>
                                    </div>
                                    <span class="r--date-reply"><time datetime="2020-12-23T10:02:05Z">2 weeks ago</time></span>
                                </div>
                            </li>
                        </ul>
                        <form action="#" method="post" class="r--comment-form-wrap d-none">
                            <div class="r--popup-form">
                                <div class="r--form-main email-no-vbtn">
                                    <div class="r--row-half">
                                        <div class="r--write-input mt-0">
                                            <label for="r--txt-name-discussion">Your Name</label>
                                            <div class="r--input">
                                                <input name="review_customer_name" type="text" placeholder="John Smith" id="r--txt-name-discussion">
                                            </div>
                                        </div>
                                        <div class="r--write-input">
                                            <label for="r--txt-email-discussion">Your Email</label>
                                            <div class="r--input">
                                                <input name="review_customer_email" type="email" placeholder="example@yourdomain.com" id="r--txt-email-discussion">
                                            </div>
                                        </div>
                                        <div class="r--write-input">
                                            <label for="r--textarea-comment">Comment</label>
                                            <div class="r--input">
                                                <textarea  name="review_customer_content" placeholder="Write something" autofocus="autofocus" id="r--textarea-comment"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="r--write-submit">
                                        <button type="button" class="r--write-cancel r--button btn_control_reply_comment reply-comment--off">
                                            <span>Cancel</span></button>
                                        <button type="submit" class="r--submit-form r--button"><span>Submit</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="r--reply-button">
                        <button type="button" class="r--button btn_control_reply_comment reply-comment--on">Comment</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--reply a review-->

<!-- back to top button-->
<a id="nt_backtop" class="pf br__50 z__100 des_bt1" href="#"><span class="tc br__50 db cw"><i class="pr pegk pe-7s-angle-up"></i></span></a>
<%
				}
				%>
        
        
 
 <%@include file="/templates/public/inc/footer.jsp" %>