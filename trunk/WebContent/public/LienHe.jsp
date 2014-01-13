<%@page import="entity.UserEntity"%>
<%
	request.setCharacterEncoding("utf8");
	response.setCharacterEncoding("utf8");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Liên hệ</title>
<jsp:include page="/template/Facebook.jsp"></jsp:include>

<link rel="stylesheet" type="text/css" href="CSS/styleMenu.css"/>
<link rel="stylesheet" type="text/css" href="CSS/styleLayout.css"/>

</head>

<body>

	<div class="container">
    
		<div class="header">
			<div class="headermain">
				<div id="menu_top">
					<a href="trangchu.jsp">Trang chủ&nbsp;</a> | &nbsp; <a href="tintuccongnghe.jsp">Tin tức&nbsp;</a> |&nbsp; <a href="gioithieu.jsp">
 thiệu&nbsp;</a> |&nbsp; <a href="game.jsp">Game &nbsp;</a> |&nbsp; <a href="lienhe.jsp">Liên hệ&nbsp;</a> |&nbsp; 
<div class="fb-like" data-href="https://www.facebook.com/ntncoporation" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></div>				</div>
				<div class="logo">
					<a href="trangchu.jsp"><img src="Image/Logo.png" width="185" height="107" /></a>
				</div>
				<%
					UserEntity user = (UserEntity) session.getAttribute("user");
					if (user == null) {
				%>
				<div id="memberbox"><a href="dangnhap.jsp">Đăng nhập</a> | <a href="quenmatkhau.jsp">Quên mật khẩu?</a> | <a href="dangky.jsp">Đăng ký</a></div>
				<%
					} else {
						String username = user.getUseName();
						
				%>
				<div id="tv">
					Xin chào,<%=username %> |<a href="trangcanhan.jsp">Trang cá nhân </a>|<a href="dangxuat?user=user">Đăng Xuất </a>

				</div>
				<%
					}
				%>
			</div>
			</div>
		
        <div id="menumain">

				<ul id="topmenu">
					<li class="item menu"><a href="trangchu.jsp"><span>Trang chủ</span> </a>
						<ul class="submenu_1"></ul></li>

					<li id="item_2" class="item"><a href="tintuccongnghe.jsp"><span> Tin tức công nghệ </span></a>

						<ul class="submenu_2">

							<li><a href="tintrongnuoc.jsp"> Trong nước</a></li>

							<li><a href="tinquocte.jsp"> Quốc tế</a></li>

							<li><a href="tinkhac.jsp"> Tin khác</a></li>

						</ul></li>



					<li id="item_3" class="item"><a href="baomat.jsp"><span> Bảo mật </span></a>

						<ul class="submenu_3">

							<li><a href="tinbaomat.jsp"> Tin bảo mật</a></li>

							<li><a href="giaiphapbaomat.jsp"> Giải pháp bảo mật</a></li>

							<li><a href="virus.jsp"> Virus</a></li>

							<li><a href="hacker.jsp"> Hacker</a></li>

						</ul></li>

					<li id="item_4" class="item"><a href="phancung.jsp"><span> Phần cứng </span></a>

						<ul class="submenu_4">

							<li><a href="desktop.jsp"> Desktop</a></li>

							<li><a href="laptop.jsp"> Laptop</a></li>

							<li><a href="thietbilinhkien.jsp"> Thiết bị - Linh kiện</a></li>

							<li><a href="tuvan.jsp"> Tư vấn</a></li>

						</ul></li>

					<li id="item_5" class="item"><a href="phanmem.jsp"><span> Phần mềm </span></a>

						<ul class="submenu_5">

							<li><a href="tinphanmem.jsp"> Tin tức</a></li>

							<li><a href="danhgia.jsp"> Đánh giá</a></li>

							<li><a href="mienphigiamgia.jsp"> Miễn phí - Giảm giá</a></li>

						</ul></li>

					<li id="item_6" class="item"><a href="hedieuhanh.jsp"><span> Hệ điều hành </span></a>

						<ul class="submenu_6">

							<li><a href="windows.jsp"> Windows</a></li>

							<li><a href="unix-linux.jsp"> Unix-Linux</a></li>

							<li><a href="mac.jsp"> Mac</a></li>

						</ul></li>

					<li id="item_7" class="item"><a href="thietbiso.jsp"><span> Thiết bị số </span></a>
						<ul class="submenu_7">

							<li><a href="mayanh.jsp"> Máy ảnh</a></li>

							<li><a href="mayquay.jsp"> Máy quay</a></li>

							<li><a href="didong.jsp"> Di động</a></li>
							<li><a href="maynghenhac.jsp"> Máy nghe nhạc</a></li>

							<li><a href="thietbigame.jsp"> Thiết bị game</a></li>

							<li><a href="thietbikhac.jsp"> Thiết bị khác</a></li>

							<li><a href="phukien.jsp"> Phụ kiện</a></li>

						</ul></li>
					<li id="item_8" class="item"><a href="game.jsp"><span> Game </span></a>
						<ul class="submenu_8"></ul></li>

					<li id="item_9" class="item"><a href="thuthuattientich.jsp"><span> Thủ thuật-Tiện ích </span></a>
						<ul class="submenu_9"></ul></li>

					<li id="item_10" class="item"><a href="hoidap.jsp"><span> Hỏi-đáp </span></a>
						<ul class="submenu_10"></ul></li>
				</ul>
			</div>
        
        <div style="margin:0px auto;width:999px;height:80px;position:relative">

 			<div id="ads_center" style="position: absolute">
    			<div><a href="http://stivi.vn" target="_blank"><img src="Image/qcao1.gif" width="999" height="80" border="0">
                	</a>
                </div>
    			
			</div>
	
		</div>

		<div class="content">       
        
        	<div id="search">
        			<table style="float: right;" border="0" cellspacing="0" cellpadding="0">
            			<tr>
                			<td>
                    			<b>Tìm kiếm:&nbsp;</b>
                			</td>
              
                            <td>
                                <input type="text" name="query" id="txtQuery" value="Từ khóa" onfocus="if(this.value == 'Từ khóa') this.value='';" onblur="if(this.value == '') this.value='Từ khóa';" style="width: 150px; height: 18px;">
                            </td>
                            <td>
                                <input id="button" type="button" style="width: 50px" value="Tìm">
                            </td>
                        </tr>
                    </table>
                    
            </div>
            
            <div id="content_main">

				<div id="ctLeft_detail">
					<div class="news_detail">
						<div class="ctm">

							<h1 class="title_article">Liên Hệ</h1>
							<div class="infoDetail">
								<form action="lienhe" method="post">
									<table border="0" cellpadding="0" cellspacing="0" width="132%">
										<tbody>
											<tr>
												<td>
													<div id="baiviet">
														<p style="text-align: justify;">
															<strong>Liên Hệ với chúng tôi</strong>
														</p>
														<p style="text-align: justify;">
														<table border="0" cellpadding="0" cellspacing="0" align="center">

															<tbody>
																<tr>
																	<td colspan="2"></td>
																</tr>
																<tr>
																	<td height="8" colspan="2"></td>
																</tr>
																<tr>
																	<td colspan="2" align="center"><a name="contact"></a><font size="2" color="#595959"><i> Quý khách có gửi nội dung qua biểu mẫu liên hệ sau, hoặc gửi E-mail tới địa chỉ <a href="mailto:groupntn@gmail.com">groupntn@gmail.com</a>
																		</i></font></td>
																</tr>

																<tr>
																	<td height="20"></td>
																</tr>
																<tr>
																	<%
																		//TODO
																		String name = (String) request.getAttribute("name");
																		String email = (String) request.getAttribute("email");
																		String phone = (String) request.getAttribute("phone");
																		String address = (String) request.getAttribute("address");
																		String company = (String) request.getAttribute("company");
																		String contact = (String) request.getAttribute("contact");
																		String content = (String) request.getAttribute("content");

																		if (name == null) name = "";
																		if (email == null) email = "";
																		if (phone == null) phone = "";
																		if (address == null) address = "";
																		if (company == null) company = "";
																		if (contact == null) contact = "";
																		if (content == null) content = "";

																		String errorNameNull = (String) request.getAttribute("errorNameNull");
																		String errorEmailNull = (String) request.getAttribute("errorEmailNull");
																		String errorPhoneNull = (String) request.getAttribute("errorPhoneNull");
																		String errorAddressNull = (String) request.getAttribute("errorAddressNull");
																		String errorContactNull = (String) request.getAttribute("errorContactNull");
																		String errorContentNull = (String) request.getAttribute("errorContentNull");

																		if (errorNameNull == null) errorNameNull = "";
																		if (errorEmailNull == null) errorEmailNull = "";
																		if (errorPhoneNull == null) errorPhoneNull = "";
																		if (errorAddressNull == null) errorAddressNull = "";
																		if (errorContactNull == null) errorContactNull = "";
																		if (errorContentNull == null) errorContentNull = "";

																		String errorEmailInvalid = (String) request.getAttribute("errorEmailInvalid");
																		String errorPhoneInvalid = (String) request.getAttribute("errorPhoneInvalid");

																		if (errorEmailInvalid == null) errorEmailInvalid = "";
																		if (errorPhoneInvalid == null) errorPhoneInvalid = "";
																	%>
																	<td width="98" class="contactRightPad"><span><strong>Họ và tên:</strong></span></td>
																	<td width="495" class="contactLeftPad"><input name="txtFullName" type="text" size="32" id="txtFullName" value="<%=name%>">
                                                                    <span style="color: #F00">* <%=errorNameNull%></span></td>
																</tr>
																<tr>
																	<td class="contactRightPad"><span><strong>Email:</strong></span></td>
																	<td class="contactLeftPad"><input name="txtEmail" type="text" size="32" id="txtEmail" value="<%=email%>"> <span id="reqEmail" style="color: Red; display: none;"></span> <span style="color: #F00">* <%=errorEmailNull%><%=errorEmailInvalid%></span></td>
																</tr>
																<tr>
																	<td class="contactRightPad"><span><strong>Điện thoại:</strong></span></td>
																	<td class="contactLeftPad"><input name="txtPhone" type="text" size="18" id="txtPhone" value="<%=phone%>">
																    <span style="color: #F00"> * <%=errorPhoneNull%><%=errorPhoneInvalid%></span></td>
																</tr>
																<tr>
																	<td class="contactRightPad"><span><strong>Địa chỉ:</strong></span></td>
																	<td class="contactLeftPad"><input name="txtAddress" type="text" size="55" id="txtAddress" value="<%=address%>"> <span style="color: #F00">* <%=errorAddressNull%></span></td>
																</tr>
																<tr>
																	<td class="contactRightPad"><span><strong>Tên công ty:</strong></span></td>
																	<td class="contactLeftPad"><input name="txtCompany" type="text" size="55" id="txtCompany" value="<%=company%>"></td>
																</tr>
																<tr>
																	<td class="contactRightPad"><span><strong>Mục liên hệ:</strong></span></td>
																	<td class="contactLeftPad"><select name="slcContactCategory" id="slcContactCategory">
																			<option value="Góp ý xây dựng">Góp ý xây dựng</option>
																			<option value="Hỗ trợ">Hỗ trợ</option>
																			<option value="Báo lỗi website">Báo lỗi website</option>
																			<option value="Liên hệ hợp tác">Liên hệ hợp tác</option>
																			<option value="Liên hệ quảng cáo">Liên hệ quảng cáo</option>

																	</select> <span id="reqContactCategory" style="color: Red; display: none;"></span></td>
																</tr>
																<tr>
																	<td class="contactRightPad" valign="top"><span><strong>Nội dung: </strong></span></td>
																	<td class="contactLeftPad"><textarea name="txtContent" rows="5" cols="55" id="txtContent"><%=content%></textarea> <br>
                                                                    <span style="color: #F00">* <%=errorContentNull%></span></td>
																</tr>
																<tr>
																	<td colspan="2" valign="top" class="contactRightPad">
																		<div style="float: left"></div>
																		<p><strong>(* bắt buộc phải điền vào)</strong></p>
																	</td>
																</tr>
																<tr>
																	<td align="center" colspan="2" style="padding-top: 8px;">
																		<div style="text-align: left; padding-left: 190px">
																			<div id="vsContact" style="color: Red; display: none;"></div>
																		</div> <input type="submit" name="btnContact" value="Gửi liên hệ" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;btnContact&quot;, &quot;&quot;, true, &quot;vgrContact&quot;, &quot;&quot;, false, false))" id="btnContact">&nbsp; <input type="reset" value="Nhập lại" style="width: 70px">
																	</td>
																</tr>

																<tr>
																	<td colspan="2"></td>
																</tr>

															</tbody>
														</table>
																																					</div>
												</td>
											</tr>
										</tbody>
									</table>
								</form>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0" width="100%">
									<tbody>
										<tr>
											<td width="100%" align="right"></td>
										</tr>
								</tbody>
								</table>
							</div>


						</div>
						<div class="space"></div>
					</div>
				</div>
			</div>
		
        
        </div>

        
		<div class="footer">

				<div class="menu_footer">
					<a href="trangchu.jsp">Trang chủ</a> | <a href="gioithieu.jsp">Giới thiệu </a> | <a href="thietbiso.jsp">Thiết bị số </a> | <a href="game.jsp">Game</a> | <a href="http://tapchicntt.com" target="_blank">Tapchicntt.com</a> | <a href="http://bkc.vn" target="_blank">bkc.vn</a> | <a href="http://Stivi.vn" target="_blank">Stivi.vn</a> | <a href="hoidap.jsp">Hỏi đáp</a> | <a href="lienhe.jsp">Liên hệ</a> | <a href="https://www.facebook.com/ntncoporation?ref=hl" target="_blank">Facebook</a>
				</div>
				<div class="line"></div>
				<div class="info">
					<div class="info_left">
						Information Technology - Chuyên trang về Công nghệ thông tin.<br> Giấy phép số 1133/GP – BTTTT ngày 1/1/2014 của Bộ thông tin truyền thông.<br> Tổng Biên tập: Nguyễn Tấn Tài. Phó Tổng biên tập: Nguyễn Văn Nú, Lương Văn Nhẫn.<br> Cơ quan chủ quản: NTN Coporation Entertainment Education Information Technology.
					</div>
					<div class="info_right">
						<div class="logo_footer">
							<a href="trangchu.jsp"><img src="Image/Logo.png" width="60" height="51" /></a>
						</div>
						Copyright © 2013 IT - Chuyên trang, thông tin công nghệ, thủ thuật , tiện ích.<br> Ghi rõ nguồn " it.com.vn" khi phát hành lại thông tin từ website này.
					</div>
				</div>
			</div>
        
  		<div id="ads_left" style="position:fixed; top:5px; height:630px; width:160px; margin-left:-165px;">
        	<div style="position:absolute"><a href="http://www.tapchicntt.com" target="_blank">
            	<img src="Image/quangcao2.gif" width="160" height="630" border="0"></a>
        	</div>
        </div>
        
		<div id="ads_right" style="position:fixed; top:5px; height:630px; width:160px; margin-left:1005px;">
        	<div style="position:absolute"><a href="http://www.bkc.vn" target="_blank">
            	<img src="Image/quangcao3.jpg" width="160" height="630" border="0"></a>
       	 	</div>
        	
 		</div>

	</div>

</body>
</html>

