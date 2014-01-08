
<%@page import="entity.UserEntity"%>
<%
	request.setCharacterEncoding("utf8");
	response.setCharacterEncoding("utf8");
	UserEntity user = (UserEntity) session.getAttribute("user");
	if (user == null) response.sendRedirect("dangnhap.jsp");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng Bài Viết</title>

<link rel="stylesheet" type="text/css" href="CSS/styleMenu.css" />
<link rel="stylesheet" type="text/css" href="CSS/styleLayout.css" />


</head>

<body>

	<div class="container">

		<div class="header">
			<div class="headermain">
				<div id="menu_top">
					<a href="TrangChu.jsp">Trang chủ&nbsp;</a> | &nbsp; <a href="TinTucCN.jsp">Tin tức&nbsp;</a> |&nbsp; <a href="GioiThieu.jsp">Giới thiệu&nbsp;</a> |&nbsp; <a href="Game.jsp">Game &nbsp;</a> |&nbsp; <a href="lienhejsp">Liên hệ&nbsp;</a> |&nbsp; <a href="https://www.facebook.com/ntncoporation?ref=hl"> <img src="Image/facebook.jpg" width="18" height="18" /></a>
				</div>
				<div class="logo">
					<a href="TrangChu.jsp"><img src="Image/Logo.png" width="185" height="107" /></a>
				</div>
							
												
				<div id="tv">
				<%
					String username = user.getUseName(); 
				
				%>
					Xin chào, <a href="trangcanhan.jsp"> <%=username %></a>&nbsp;&nbsp;| &nbsp; <a href="dangxuat?user=user>">Đăng Xuất &nbsp;</a>&nbsp;

				</div>
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
						<div style="margin: 0px auto; width: 999px; height: 80px; position: relative">

				<div id="ads_center" style="position: absolute">
					<div>
						<a href="http://stivi.vn" target="_blank"><img src="Image/qcao1.gif" width="999" height="80" border="0"> </a>
					</div>

				</div>

			</div>
		<div class="content">

			<div id="search">
					<form action="timkiem">
						<table style="float: right;" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><b>Tìm kiếm:&nbsp;</b></td>

								<td><input type="text" name="query" id="txtQuery" value="Từ khóa" onfocus="if(this.value == 'Từ khóa') this.value='';" onblur="if(this.value == '') this.value='Từ khóa';" style="width: 150px; height: 18px;"></td>
								<td><input id="button" type="submit" style="width: 50px" value="Tìm"></td>
							</tr>
						</table>
					</form>
				</div>

			<div id="content_main">

				<div id="ctLeft_detail">
					<div class="news_detail">
						<div class="ctm">

							<form method="post" action="dangki" onsubmit="javascript:return WebForm_OnSubmit();" id="frm">
								<div class="aspNetHidden"></div>
							</form>
						</div>
						<div>
						
						<form action="doimatkhau" method="post">
							<table>
								<tr>
									<th width="152" align="left">Mật khẩu cũ:</th>
									<td width="301">
										<input type="password" name="old_password" />
									</td>
								</tr>
								<tr>
									<th align="left">Mật khẩu mới:</th>
									<td>
										<input type="password" name="new_password" />
									</td>
								</tr>
								<tr>
									<th align="left">Nhập lại mật khẩu mới:</th>
									<td>
										<input type="password" name="confirm_new_password" />
									</td>
								</tr>
								<tr >
									<td colspan="2" align="center">
										<input type="submit" value="Đổi mật khẩu" />
									</td>
								</tr>
							</table>						
						</form>
						</div>


					</div>
					<div class="space"></div>
				</div>
			</div>
		</div>
	
	<div class="footer">

		<div class="menu_footer">
			<a href="TrangChu.jsp">Trang chủ</a> | <a href="GioiThieu.jsp">Giới thiệu </a> | <a href="ThietBiSo.jsp">Thiết bị số </a> | <a href="Game.jsp">Game</a> | <a href="http://tapchicntt.com" target="_blank">Tapchicntt.com</a> | <a href="http://bkc.vn" target="_blank">bkc.vn</a> | <a href="http://Stivi.vn" target="_blank">Stivi.vn</a> | <a href="HoiDap.jsp">Hỏi đáp</a> | <a href="LienHe.jsp">Liên hệ</a> | <a href="https://www.facebook.com/ntncoporation?ref=hl" target="_blank">Facebook</a>
		</div>
		<div class="line"></div>
		<div class="info">
			<div class="info_left">
				Information Technology - Chuyên trang về Công nghệ thông tin.<br> Giấy phép số 1133/GP – BTTTT ngày 1/1/2014 của Bộ thông tin truyền thông.<br> Tổng Biên tập: Nguyễn Tấn Tài. Phó Tổng biên tập: Nguyễn Văn Nú, Lương Văn Nhẫn.<br> Cơ quan chủ quản: NTN Coporation Entertainment Education Information Technology.
			</div>
			<div class="info_right">
				<div class="logo_footer">
					<a href="TrangChu.jsp"><img src="Image/Logo.png" width="60" height="51" /></a>
				</div>
				Copyright © 2013 IT - Chuyên trang, thông tin công nghệ, thủ thuật , tiện ích...<br> Ghi rõ nguồn " it.com.vn" khi phát hành lại thông tin từ website này.
			</div>
		</div>
	</div>
	
	<div id="ads_left" style="position: fixed; top: 5px; height: 630px; width: 160px; margin-left: -165px;">
				<div style="position: absolute">
					<a href="http://www.tapchicntt.com" target="_blank"> <img src="Image/quangcao2.gif" width="160" height="630" border="0"></a>
				</div>
			</div>

			<div id="ads_right" style="position: fixed; top: 5px; height: 630px; width: 160px; margin-left: 1005px;">
				<div style="position: absolute">
					<a href="http://www.bkc.vn" target="_blank"> <img src="Image/quangcao3.jpg" width="160" height="630" border="0"></a>
				</div>

			</div>
			
	</div>
</body>
</html>

