<%@page import="dao.UserDAO"%>
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
<title>Sửa thành viên</title>
<jsp:include page="/template/Facebook.jsp"></jsp:include>

<link rel="stylesheet" type="text/css" href="CSS/styleMenu.css"/>
<link rel="stylesheet" type="text/css" href="CSS/styleLayout.css"/>

</head>

<body>

	<div class="container">
    
		<div class="header">
			<div class="headermain">
				<div id="menu_top">
					<a href="trangchu.jsp">Trang chủ&nbsp;</a> | &nbsp; <a href="tintuccongnghe.jsp">Tin tức&nbsp;</a> |&nbsp; <a href="gioithieu.jsp">Giới thiệu&nbsp;</a> |&nbsp; <a href="game.jsp">Game &nbsp;</a> |&nbsp; <a href="lienhe.jsp">Liên hệ&nbsp;</a> |&nbsp;
                   <div class="fb-like" data-href="https://www.facebook.com/ntncoporation" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></div>
				</div>
				<div class="logo">
					<a href="trangchu.jsp"><img src="Image/Logo.png" width="185" height="107" /></a>
				</div>
				<%
					if (session == null) response.sendRedirect("dangnhap.jsp");
					UserEntity user = (UserEntity) session.getAttribute("user");
					if (user == null) {
						response.sendRedirect("dangnhap.jsp");
				%>
				<div id="memberbox">
					<a href="dangnhap.jsp">Đăng nhập</a> | <a href="quenmatkhau.jsp">Quên mật khẩu?</a> | <a href="dangky.jsp">Đăng ký</a>
				</div>
				<%
					} else {
						String role = (String) session.getAttribute("role");
						if (role.equals("admin")) {
							String username = user.getUseName();
				%>
				<div id="tv">
					Xin chào,&nbsp;<%=username%>
					| <a href="trangcanhan.jsp">Trang cá nhân </a>| <a href="dangxuat?user=user">Đăng Xuất </a>

				</div>
				<%
					} else if (role.equals("user")){
							request.setAttribute("error", "not enough role");
							request.getRequestDispatcher("/error.jsp").forward(request,
									response);
						}
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

							<form method="post" action="suathanhvien">
								<div class="aspNetHidden"></div>
								
											<h1>Sửa thông tin thành viên</h1>
										

								<div id="Main_pnlRegister" onkeypress="javascript:return WebForm_FireDefaultButton(event, 'Main_btnRegister')">

									<table border="0" cellpadding="0" cellspacing="8">
										<tbody>
											<tr>
												<td width="240" height="20px"></td>
											</tr>
											<%//TODO
											%>
											<tr>
												<td nowrap="nowrap" class="infoLogin"><span><strong>Tên đăng nhập:</strong></span></td>
											  <td width="751" class="infoLogin"><input name="username" type="text" readonly="readonly" style="width: 245px;" value="${requestScope.username }"><span id="Main_reqUserName" style="display: none;">*</span> <span id="Main_regUserName" style="display: none;">*</span></td>
											</tr>
											
											
											
											<tr>
												<td height="33" class="infoLogin"><span><strong>Họ và tên:</strong></span></td>
												<td class="infoLogin">
													<table width="751" border="0" cellpadding="0" cellspacing="0" class="infoLogin">
														<tbody>
															<tr>
																<td width="323" class="infoLogin">
																	<p>
																		<input name="full_name" value="${requestScope.fullName }" type="text" id="Main_txtFirstName" style="width: 240px;"> 
																		<br>
																		<span id="Main_reqFirstName" style="display: none;">*&nbsp;</span><span style="color: #F00">*</span><span style="color: #F00">${requestScope.errorFullNameNull }</span><br>
																	</p>
																</td>
																<td width="79" class="infoLogin"><span id="Main_reqLastName" style="display: none;">*</span><strong>Giới tính:</strong><br></td>
																<td width="1" align="right" class="infoLogin"></td>
																<td width="348" class="infoLogin"><span id="Main_slcSex"><input id="Main_slcSex_0" type="radio" name="sex" value="male" ${requestScope.male } ><label for="Main_slcSex_0">Nam</label><input id="Main_slcSex_1" type="radio" name="sex" value="female" ${requestScope.female }><label for="Main_slcSex_1">Nữ</label></span></td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<tr>
												<td class="infoLogin" valign="top"><span><strong>Email:</strong></span></td>
												<td class="infoLogin" valign="top"><input name="email" type="text" value="${requestScope.email }" id="Main_txtEmail" style="width: 245px;"> 
												<span id="Main_reqEmail" style="display: none;">*</span> <span id="Main_regEmail" style="display: none;">*</span> <span style="color: #F00">*${requestScope.errorEmailNull } ${requestScope.errorInvalidEmail }</span></td>
											</tr>
                                           <tr>
												<td class="infoLogin" valign="top"><strong>Password:</strong></td>
                                            
											  <td class="infoLogin" valign="top"><label for="textfield"></label>										    
											    <a href="resetpass?username=${requestScope.username }">Reset Password</a>
											    ${requestScope.reseted }</td>
											
											</tr>
											
											
											<tr>
												<td><strong>Chức vụ:</strong></td>
												<td class="infoLogin"><span style="font-weight: bold; color: #F00;">
											    <label for="select"></label>
											    <select name="role" id="select">
											      <option value="admin" ${requestScope.adminRole }>Admin</option>
											      <option value="user" ${requestScope.userRole }>User</option>
										        </select>
											    <label for="Main_chkArgreePolicy"></label></span></td>
											</tr>
                                            <tr>
												<td><strong>Trạng thái:</strong></td>
												<td class="infoLogin">
											    <label for="infoLogin"></label>
											    <select name="status" id="select">
	   												<option value="actived" ${requestScope.statusActive }>Actived</option>
											     	<option value="banned" ${requestScope.statusBan }>Banned</option>
                                                </select>
												</td>
											</tr>
											<tr>
												<td class="infoLogin" align="center" colspan="2" style="padding-top: 8px"><input name="is_accept" type="submit" id="is_accept" value="    OK    ">&nbsp; </td>
											</tr>
										</tbody>
									</table>

								</div>
								<div align="center"></div>
							</form>
						</div>
						<div>
							<table border="0" cellpadding="0" cellspacing="0" width="100%">
								<tbody>
									<tr>
										<td width="100%" align="right"></td>
									</tr>

									<tr>
										<td>&nbsp;</td>
									</tr>

								</tbody>
							</table>
						</div>


					</div>
					<div class="space"></div>
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

