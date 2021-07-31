<%@page import="model.bean.Products"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/public/inc/header.jsp" %>
 <link rel="stylesheet" href="assets/css/home-default.css">
    <link rel="stylesheet" href="assets/css/shopping-cart.css">
<div id="nt_content">

        <!-- hero title -->
        <div class="kalles-section page_section_heading">
            <div class="page-head tc pr oh page_bg_img page_head_cart_heading">
                <div class="parallax-inner nt_parallax_false nt_bg_lz pa t__0 l__0 r__0 b__0 lazyload" data-bgset="assets/images/shopping-cart/shopping-cart-head.jpg">
                </div>
                <div class="container pr z_100"><h1 class="tu mb__10 cw">Shopping cart</h1></div>
            </div>
        </div>
        <!-- end hero title -->

        <!--cart section-->
        <div class="kalles-section cart_page_section container mt__60">
            <form action="#" method="post" class="frm_cart_ajax_true frm_cart_page nt_js_cart pr oh ">
                <div class="cart_header">
                    <div class="row al_center">
                        <div class="col-5">Product</div>
                        <div class="col-3 tc">Price</div>
                        <div class="col-2 tc">Quantity</div>
                        <div class="col-2 tc tr_md">Total</div>
                    </div>
                </div>
                <div class="cart_items js_cat_items">
                <%if(session.getAttribute("listCart")!=null){
								ArrayList<Products> listCart = (ArrayList<Products>) session.getAttribute("listCart");
								for(Products pro : listCart){
									
							%>
                    <div class="cart_item js_cart_item">
                        <div class="ld_cart_bar"></div>
                        <div class="row al_center">
                            <div class="col-12 col-md-12 col-lg-5">
                                <div class="page_cart_info flex al_center">
                                    <a href="product-detail-layout-01.html">
                                        <img style="height: 120px; width: 100px;" class="lazyload w__100 lz_op_ef" src="data:image/svg+xml,%3Csvg%20viewBox%3D%220%200%201128%201439%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3C%2Fsvg%3E" data-src="<%=request.getContextPath()%>/images/products/<%=pro.getImage()%>" alt="">
                                    </a>
                                    <div class="mini_cart_body ml__15">
                                        <h5 class="mini_cart_title mg__0 mb__5"><a href="product-detail-layout-01.html"><%=pro.getName()%></a></h5>
                                        <div class="mini_cart_meta"><p class="cart_selling_plan"></p></div>
                                       
                                        <a href="<%=request.getContextPath()%>/xoa-gio-hang?id=<%=pro.getId()%>" ><svg style="width: 20px; height: 20px;" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                    <polyline points="3 6 5 6 21 6"></polyline>
                                                    <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path>
                                                    <line x1="10" y1="11" x2="10" y2="17"></line>
                                                    <line x1="14" y1="11" x2="14" y2="17"></line>
                                                </svg></a>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-4 col-lg-3 tc__ tc_lg">
                                <div class="cart_meta_prices price">
                                    <div class="cart_price">$<%=pro.getMoney()%></div>
                                </div>
                            </div>
                            <div class="col-12 col-md-4 col-lg-2 tc mini_cart_actions">
                                <div class="quantity pr mr__10 qty__true">
                                    <input type="number" class="input-text qty text tc qty_cart_js" name="updates[]" value="<%=pro.getQty()%>" >
                                    <div class="qty tc fs__14">
                                        <a href="<%=request.getContextPath()%>/tang-gio-hang?id=<%=pro.getId()%>" class=" db cb pa pd__0 pr__15 tr r__0">
                                            <i class="facl facl-plus"></i></a>
                                        <a href="<%=request.getContextPath()%>/giam-gio-hang?id=<%=pro.getId()%>" class=" db cb pa pd__0 pl__15 tl l__0 ">
                                            <i class="facl facl-minus"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-4 col-lg-2 tc__ tr_lg">
                                <td class="product-subtotal"><%=pro.getTotalNVD()%></td>
                            </div>
                        </div>
                    </div>
                    <%}} %>
                    
                </div>
                <div class="cart__footer mt__60">
                    <div class="row">
                        <div class="col-12 col-md-6 cart_actions tl_md tc order-md-2 order-2 mb__50">
                            <label for="CartSpecialInstructions_2" class="cart-note__label dib cd mb__10"><span class="txt_add_note ">Add Order Note</span><span class="txt_edit_note dn">Edit Order Note</span></label>
                            <textarea name="note" id="CartSpecialInstructions_2" class="cart-note__input" placeholder="How can we help you?"></textarea><label for="couponcode" class="cart-couponcode__label db cd mt__20 mb__10">Coupon:</label>
                            <p>Coupon code will work on checkout page</p>
                            <input type="text" name="discount" id="couponcode" value placeholder="Coupon code">
                        </div>
                        <div class="col-12 tr_md tc order-md-4 order-4 col-md-6">
                        <p class="db txt_tax_ship mb__5">If your bill is over 100$ you get free shipping</p>
                            <div class="total row in_flex fl_between al_center cd fs__18 tu">
                            <div class="col-auto"><strong>Shiping:</strong></div>
                                <div class="col-auto tr js_cat_ttprice fs__20 fwm">
                                    <div class="cart_tot_price"><td> <%=session.getAttribute("ship")%></td></div>
                                </div>
                                <div class="col-auto"><strong>Subtotal:</strong></div>
                                <div class="col-auto tr js_cat_ttprice fs__20 fwm">
                                    <div class="cart_tot_price"><td> $<%=session.getAttribute("total")%></td></div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            
                            
                            <div class="clearfix"></div>
                            <button type="submit" name="update" class="button btn_update mt__10 mb__10 js_add_ld w__100">Update Cart</button>
                            <button class="btn_checkout button button_primary tu mt__10 mb__10 js_add_ld w__100"><a class="kio" href="<%=request.getContextPath()%>/thanh-toan" >Check Out</a></button>
                            <div class="clearfix"></div>
                            <div class="cat_img_trust mt__10">
                                <img class="lz_op_ef lazyload w-50" src="data:image/svg+xml,%3Csvg%20viewBox%3D%220%200%20476%2052%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3C%2Fsvg%3E" data-src="assets/images/shopping-cart/cart_image.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            

       
    </div>	

<%@include file="/templates/public/inc/footer.jsp" %>