<%@page import="dao.TopicDAO"%>
<%@page import="entity.TopicEntity"%>
<%@page import="java.util.List"%>
<%@page import="entity.UserEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Tin Tức</title>
<jsp:include page="/template/Facebook.jsp"></jsp:include>

<link rel="stylesheet" type="text/css" href="CSS/styleMenu.css" />
<link rel="stylesheet" type="text/css" href="CSS/styleLayout.css" />

</head>

<body>

	<div class="container">

		<div class="header">
			<div class="headermain">
				<div id="menu_top">
					<a href="trangchu.jsp">Trang chủ&nbsp;</a> | &nbsp; <a
						href="tintuccongnghe.jsp">Tin tức&nbsp;</a> |&nbsp; <a
						href="gioithieu.jsp">Giới thiệu&nbsp;</a> |&nbsp; <a
						href="game.jsp">Game &nbsp;</a> |&nbsp; <a href="lienhe.jsp">Liên
						hệ&nbsp;</a> |&nbsp; 
                       <div class="fb-like" data-href="https://www.facebook.com/ntncoporation" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></div>
				</div>
				<div class="logo">
					<a href="trangchu.jsp"><img src="Image/Logo.png" width="185"
						height="107" /></a>
				</div>
				<%
					UserEntity user = (UserEntity) session.getAttribute("user");
					if (user == null) {
				%>
				<div id="memberbox">
					<a href="dangnhap.jsp">Đăng nhập</a> | <a href="quenmatkhau.jsp">Quên
						mật khẩu?</a> | <a href="dangky.jsp">Đăng ký</a>
				</div>
				<%
					} else {
						String username = user.getUseName();
				%>
				<div id="tv">
					Xin chào,<%=username%>
					|<a href="trangcanhan.jsp">Trang cá nhân </a>|<a
						href="dangxuat?user=user">Đăng Xuất </a>

				</div>
				<%
					}
				%>
			</div>
		</div>

		<div id="menumain">

			<ul id="topmenu">
				<li class="item"><a href="trangchu.jsp"><span>Trang
							chủ</span> </a>
					<ul class="submenu_1"></ul></li>

				<li id="item_2" class="item menu"><a href="tintuccongnghe.jsp"><span>
							Tin tức công nghệ </span></a>

					<ul class="submenu_2">

						<li><a href="tintrongnuoc.jsp"> Trong nước</a></li>

						<li><a href="tinquocte.jsp"> Quốc tế</a></li>

						<li><a href="tinkhac.jsp"> Tin khác</a></li>

					</ul></li>



				<li id="item_3" class="item"><a href="baomat.jsp"><span>
							Bảo mật </span></a>

					<ul class="submenu_3">

						<li><a href="tinbaomat.jsp"> Tin bảo mật</a></li>

						<li><a href="giaiphapbaomat.jsp"> Giải pháp bảo mật</a></li>

						<li><a href="virus.jsp"> Virus</a></li>

						<li><a href="hacker.jsp"> Hacker</a></li>

					</ul></li>

				<li id="item_4" class="item"><a href="phancung.jsp"><span>
							Phần cứng </span></a>

					<ul class="submenu_4">

						<li><a href="desktop.jsp"> Desktop</a></li>

						<li><a href="laptop.jsp"> Laptop</a></li>

						<li><a href="thietbilinhkien.jsp"> Thiết bị - Linh kiện</a></li>

						<li><a href="tuvan.jsp"> Tư vấn</a></li>

					</ul></li>

				<li id="item_5" class="item"><a href="phanmem.jsp"><span>
							Phần mềm </span></a>

					<ul class="submenu_5">

						<li><a href="tinphanmem.jsp"> Tin tức</a></li>

						<li><a href="danhgia.jsp"> Đánh giá</a></li>

						<li><a href="mienphigiamgia.jsp"> Miễn phí - Giảm giá</a></li>

					</ul></li>

				<li id="item_6" class="item"><a href="hedieuhanh.jsp"><span>
							Hệ điều hành </span></a>

					<ul class="submenu_6">

						<li><a href="windows.jsp"> Windows</a></li>

						<li><a href="unix-linux.jsp"> Unix-Linux</a></li>

						<li><a href="mac.jsp"> Mac</a></li>

					</ul></li>

				<li id="item_7" class="item"><a href="thietbiso.jsp"><span>
							Thiết bị số </span></a>
					<ul class="submenu_7">

						<li><a href="mayanh.jsp"> Máy ảnh</a></li>

						<li><a href="mayquay.jsp"> Máy quay</a></li>

						<li><a href="didong.jsp"> Di động</a></li>
						<li><a href="maynghenhac.jsp"> Máy nghe nhạc</a></li>

						<li><a href="thietbigame.jsp"> Thiết bị game</a></li>

						<li><a href="thietbikhac.jsp"> Thiết bị khác</a></li>

						<li><a href="phukien.jsp"> Phụ kiện</a></li>

					</ul></li>
				<li id="item_8" class="item"><a href="game.jsp"><span>
							Game </span></a>
					<ul class="submenu_8"></ul></li>

				<li id="item_9" class="item"><a href="thuthuattientich.jsp"><span>
							Thủ thuật-Tiện ích </span></a>
					<ul class="submenu_9"></ul></li>

				<li id="item_10" class="item"><a href="hoidap.jsp"><span>
							Hỏi-đáp </span></a>
					<ul class="submenu_10"></ul></li>
			</ul>
		</div>

		<div
			style="margin: 0px auto; width: 999px; height: 80px; position: relative">

			<div id="ads_center" style="position: absolute">
				<div>
					<a href="http://stivi.vn" target="_blank"><img
						src="Image/qcao1.gif" width="999" height="80" border="0"> </a>
				</div>

			</div>

		</div>

		<div class="content">

			<div id="search">
				<table style="float: right;" border="0" cellspacing="0"
					cellpadding="0">
					<tr>
						<td><b>Tìm kiếm:&nbsp;</b></td>

						<td><input type="text" name="query" id="txtQuery"
							value="Từ khóa"
							onfocus="if(this.value == 'Từ khóa') this.value='';"
							onblur="if(this.value == '') this.value='Từ khóa';"
							style="width: 150px; height: 18px;"></td>
						<td><input id="button" type="button" style="width: 50px"
							value="Tìm"></td>
					</tr>
				</table>

			</div>


			<%
				List<TopicEntity> tintuc = TopicDAO.loadByMainId("tintuccongnghe");
				TopicEntity tintuc1 = tintuc.get(0);
				TopicEntity tintuc2 = tintuc.get(1);
				TopicEntity tintuc3 = tintuc.get(2);
				
				
				pageContext.setAttribute("tintuc1", tintuc1);
				pageContext.setAttribute("tintuc2", tintuc2);
				pageContext.setAttribute("tintuc3", tintuc3);
				
				
			%>
			<div id="content_main">

				<div class="content_left">

					<div class="topnew">

						<div class="title_topnew">
							<a href="load?id=${pageScope.tintuc1.id }"><span>${pageScope.tintuc1.title }</span></a>
						</div>
						<div>
							<table border="0" cellpadding="0" cellspacing="0" width="100%">
								<tbody>
									<tr>
										<td class="img_top"><a
											href="load?id=${pageScope.tintuc1.id }"><img
												src="${pageScope.tintuc1.url_daidien }" height="265" align="left"
												border="0" hspace="3" vspace="3"></a></td>
										<td class="ctt_top" valign="top">${pageScope.tintuc1.header }&nbsp;</td>
									</tr>
								</tbody>
							</table>

						</div>
					</div>

					<div class="subcontent">

						<table border="0" cellpadding="0" cellspacing="0" width="100%">
							<tbody>
								<tr>

									<td><span>
											<div class="boxsub">
												<a href="load?id=${pageScope.tintuc2.id }">
													<img src="${pageScope.tintuc2.url_daidien }" border="0">
												</a>
											</div>
											<div class="title_boxsub">
												<a href="load?id=${pageScope.tintuc2.id }">${pageScope.tintuc2.title }</a>
											</div>
									</span></td>

									<td><span>
											<div class="boxsub">
												<a
													href="load?id=${pageScope.tintuc3.id }">
													<img src="${pageScope.tintuc3.url_daidien }" border="0">
												</a>
											</div>
											<div class="title_boxsub">
												<a
													href="load?id=${pageScope.tintuc3.id }">
													${pageScope.tintuc3.title }
													
													</a>
											</div>
									</span></td>

									<td><span>
											<div class="boxsub">
												<a
													href="load?id=${pageScope.tintuc4.id }">
													<img src="${pageScope.tintuc4.url_daidien }" border="0">
												</a>
											</div>
											<div class="title_boxsub">
												<a
													href="load?id=${pageScope.tintuc4.id }">${pageScope.tintuc4.title }</a>
											</div>
									</span></td>

								</tr>
							</tbody>
						</table>

					</div>

			<%
				List<TopicEntity> trongnuoc = TopicDAO.loadBySubMenu("trongnuoc");
				TopicEntity trongnuoc1 = trongnuoc.get(0);
				TopicEntity trongnuoc2 = trongnuoc.get(1);
				TopicEntity trongnuoc3 = trongnuoc.get(2);
				TopicEntity trongnuoc4 = trongnuoc.get(3);
				TopicEntity trongnuoc5 = trongnuoc.get(4);
				
				pageContext.setAttribute("trongnuoc1", trongnuoc1);
				pageContext.setAttribute("trongnuoc2", trongnuoc2);
				pageContext.setAttribute("trongnuoc3", trongnuoc3);
				pageContext.setAttribute("trongnuoc4", trongnuoc4);
				pageContext.setAttribute("trongnuoc5", trongnuoc5);
			%>
					<div class="wbox cat">
						<div class="tit">

							<a href="tintrongnuoc.jsp" title="Chuyên mục 'Tin trong nước'">Trong
								nước</a>

						</div>
						<div class="ctm">

							<div class="title_article">
								<a href="load?id=${pageScope.trongnuoc1.id }">${pageScope.trongnuoc1.title }</a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a
												href="load?id=${pageScope.trongnuoc1.id }"><img
													src="${pageScope.trongnuoc1.url_daidien }" align="left" border="0"
													hspace="3" vspace="3"></a>${pageScope.trongnuoc1.header }</td>

										</tr>
									</tbody>
								</table>
							</div>

							<div class="title_article">
								<a href="load?id=${pageScope.trongnuoc2.id }">${pageScope.trongnuoc2.title }</a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a
												href="load?id=${pageScope.trongnuoc2.id }"><img
													src="${pageScope.trongnuoc2.url_daidien }" align="left" border="0"
													hspace="3" vspace="3"></a>${pageScope.trongnuoc2.header }</td>

										</tr>
									</tbody>
								</table>
							</div>

							<div class="title_article">
								<a href="load?id=${pageScope.trongnuoc3.id }">${pageScope.trongnuoc3.title }</a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a
												href="load?id=${pageScope.trongnuoc3.id }"><img
													src="${pageScope.trongnuoc3.url_daidien }" align="left" border="0" hspace="3"
													vspace="3"></a>${pageScope.trongnuoc3.header }</td>

										</tr>
									</tbody>
								</table>
							</div>

							<div class="tin_lienquan">

								<ul>

									<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.trongnuoc4.id }">${pageScope.trongnuoc4.title } </a></li>

									<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.trongnuoc5.id }">${pageScope.trongnuoc5.title }</a></li>

								</ul>


							</div>

						</div>

					</div>

			<%
				List<TopicEntity> quocte = TopicDAO.loadBySubMenu("quocte");
				TopicEntity quocte1 = quocte.get(0);
				TopicEntity quocte2 = quocte.get(1);
				TopicEntity quocte3 = quocte.get(2);
				TopicEntity quocte4 = quocte.get(3);
				TopicEntity quocte5 = quocte.get(4);
				
				pageContext.setAttribute("quocte1", quocte1);
				pageContext.setAttribute("quocte2", quocte2);
				pageContext.setAttribute("quocte3", quocte3);
				pageContext.setAttribute("quocte4", quocte4);
				pageContext.setAttribute("quocte5", quocte5);
			%>
					<div class="wbox cat">
						<div class="tit">
							<a href="tinquocte.jsp" title="Chuyên mục 'Tin quốc tế'">Quốc
								tế</a>

						</div>
						<div class="ctm">

							<div class="title_article">
								<a href="load?id=${pageScope.quocte1.id }">${pageScope.quocte1.title }</a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a
												href="load?id=${pageScope.quocte1.id }"><img
													src="${pageScope.quocte1.url_daidien }" align="left" border="0"
													hspace="3" vspace="3"></a>${pageScope.quocte1.header }</td>

										</tr>
									</tbody>
								</table>
							</div>
							<div class="title_article">
								<a href="load?id=${pageScope.quocte2.id }">${pageScope.quocte2.title }</a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a
												href="load?id=${pageScope.quocte2.id }"><img
													src="${pageScope.quocte2.url_daidien }" align="left" border="0"
													hspace="3" vspace="3"></a>${pageScope.quocte2.header }</td>

										</tr>
									</tbody>
								</table>
							</div>
							<div class="title_article">
								<a href="load?id=${pageScope.quocte3.id }">${pageScope.quocte3.title }</a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a
												href="load?id=${pageScope.quocte3.id }"><img
													src="${pageScope.quocte3.url_daidien }" align="left" border="0"
													hspace="3" vspace="3"></a>${pageScope.quocte3.header }</td>

										</tr>
									</tbody>
								</table>
							</div>
							<div class="tin_lienquan">

								<ul>

									<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.quocte4.id }">${pageScope.quocte4.title }</a></li>

									<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.quocte5.id }">${pageScope.quocte5.title }</a></li>

								</ul>
							</div>
						</div>

					</div>
					
					
			<%
				List<TopicEntity> tinkhac = TopicDAO.loadBySubMenu("tinkhac");
				TopicEntity tinkhac1 = tinkhac.get(0);
				TopicEntity tinkhac2 = tinkhac.get(1);
				TopicEntity tinkhac3 = tinkhac.get(2);
				TopicEntity tinkhac4 = tinkhac.get(3);
				TopicEntity tinkhac5 = tinkhac.get(4);
				
				pageContext.setAttribute("tinkhac1", tinkhac1);
				pageContext.setAttribute("tinkhac2", tinkhac2);
				pageContext.setAttribute("tinkhac3", tinkhac3);
				pageContext.setAttribute("tinkhac4", tinkhac4);
				pageContext.setAttribute("tinkhac5", tinkhac5);
			%>
					<div class="wbox cat">
						<div class="tit">

							<a href="tinkhac.jsp" title="Chuyên mục 'Tin khác'">Tin khác</a>

						</div>
						<div class="ctm">

							<div class="title_article">
								<a href="load?id=${pageScope.tinkhac1.id }">${pageScope.tinkhac1.title }</a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a href="load?id=${pageScope.tinkhac1.id }"><img
													src="${pageScope.tinkhac1.url_daidien }" align="left" border="0" hspace="3"
													vspace="3"></a>${pageScope.tinkhac1.header }</td>

										</tr>
									</tbody>
								</table>
							</div>
							<div class="title_article">
								<a href="load?id=${pageScope.tinkhac2.id }">${pageScope.tinkhac2.title }</a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a href="load?id=${pageScope.tinkhac2.id }"><img
													src="${pageScope.tinkhac2.url_daidien }" align="left" border="0"
													hspace="3" vspace="3"></a>${pageScope.tinkhac2.header }</td>

										</tr>
									</tbody>
								</table>
							</div>

							<div class="title_article">
								<a href="load?id=${pageScope.tinkhac3.id }">${pageScope.tinkhac3.title }</a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a href="load?id=${pageScope.tinkhac3.id }"><img
													src="${pageScope.tinkhac3.url_daidien }" align="left" border="0"
													hspace="3" vspace="3"></a>${pageScope.tinkhac3.header }</td>

										</tr>
									</tbody>
								</table>
							</div>


							<div class="tin_lienquan">

								<ul>

									<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.tinkhac4.id }">${pageScope.tinkhac4.title }</a></li>

									<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.tinkhac5.id }">${pageScope.tinkhac5.title }</a></li>

								</ul>


							</div>

						</div>

					</div>
					<div class="facebook">
						<div class="title_fb">InformationTechnology trên Facebook</div>
						<div class="fb">
							<table width="280" border="0">
								<tr>
									<td width="104"><a
										href="https://www.facebook.com/ntncoporation?ref=hl"
										target="_blank"><img src="Image/Logo.png" width="101"
											height="91" /></a></td>
									<td width="166" valign="top"><p>
											<a href="https://www.facebook.com/ntncoporation?ref=hl"
												target="_blank">InformationTechnology</a>
										</p>
										<p>
<div class="fb-like" data-href="https://www.facebook.com/ntncoporation" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></div>
										</p></td>
								</tr>
							</table>
							<div style="margin-left: 12px; margin-top: 10px">
								<a href="https://facebook.com/help/443483272359009"
									target="_blank"><img src="Image/facebook.jpg" width="15"
									height="16" /></a><a
									href="https://facebook.com/help/443483272359009"
									target="_blank"> Plugin xã hội của facebook</a>
							</div>
						</div>
					</div>

				</div>


				<div class="content_right">
<%
					List<TopicEntity> tinmoinhat = TopicDAO.loadLastedTopic(8);
					TopicEntity tinmoinhat1 = tinmoinhat.get(0);
					TopicEntity tinmoinhat2 = tinmoinhat.get(1);
					TopicEntity tinmoinhat3 = tinmoinhat.get(2);
					TopicEntity tinmoinhat4 = tinmoinhat.get(3);
					TopicEntity tinmoinhat5 = tinmoinhat.get(4);
					TopicEntity tinmoinhat6 = tinmoinhat.get(5);
					TopicEntity tinmoinhat7 = tinmoinhat.get(6);
					TopicEntity tinmoinhat8 = tinmoinhat.get(7);

					pageContext.setAttribute("tinmoinhat1", tinmoinhat1);
					pageContext.setAttribute("tinmoinhat2", tinmoinhat2);
					pageContext.setAttribute("tinmoinhat3", tinmoinhat3);
					pageContext.setAttribute("tinmoinhat4", tinmoinhat4);
					pageContext.setAttribute("tinmoinhat5", tinmoinhat5);
					pageContext.setAttribute("tinmoinhat6", tinmoinhat6);
					pageContext.setAttribute("tinmoinhat7", tinmoinhat7);
					pageContext.setAttribute("tinmoinhat8", tinmoinhat8);
				%>
					<div class="news">
						<div class="tit">

							<a href="tinmoinhat.jsp"> Tin mới nhất </a>

						</div>
						<div class="ctm">

							<div class="title_new">

								<div>
									<img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.tinmoinhat1.id }">${pageScope.tinmoinhat1.title
										}</a>
								</div>


								<div>
									<img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.tinmoinhat2.id }">${pageScope.tinmoinhat2.title
										}</a>
								</div>


								<div>
									<img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.tinmoinhat3.id }">${pageScope.tinmoinhat3.title
										}</a>
								</div>


								<div>
									<img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.tinmoinhat4.id }">${pageScope.tinmoinhat4.title
										}</a>
								</div>


								<div>
									<img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.tinmoinhat5.id }">${pageScope.tinmoinhat5.title
										}</a>
								</div>


								<div>
									<img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.tinmoinhat6.id }">${pageScope.tinmoinhat6.title
										}</a>
								</div>


								<div>
									<img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.tinmoinhat7.id }">${pageScope.tinmoinhat7.title
										}</a>
								</div>


								<div>
									<img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.tinmoinhat8.id }">${pageScope.tinmoinhat8.title
										}</a>
								</div>


								<span id="xemtin"><a href="/"><strong>Xem
											các tin khác </strong></a></span>


							</div>

						</div>




						<%
							List<TopicEntity> tieudiem = TopicDAO.loadAllFocusTopic(true);
							TopicEntity tieudiem1 = tieudiem.get(0);
							TopicEntity tieudiem2 = tieudiem.get(1);
							TopicEntity tieudiem3 = tieudiem.get(2);
							TopicEntity tieudiem4 = tieudiem.get(3);
							TopicEntity tieudiem5 = tieudiem.get(4);
							TopicEntity tieudiem6 = tieudiem.get(5);
							TopicEntity tieudiem7 = tieudiem.get(6);
							TopicEntity tieudiem8 = tieudiem.get(7);
							TopicEntity tieudiem9 = tieudiem.get(8);
							TopicEntity tieudiem10 = tieudiem.get(9);

							pageContext.setAttribute("tieudiem1", tieudiem1);
							pageContext.setAttribute("tieudiem2", tieudiem2);
							pageContext.setAttribute("tieudiem3", tieudiem3);
							pageContext.setAttribute("tieudiem4", tieudiem4);
							pageContext.setAttribute("tieudiem5", tieudiem5);
							pageContext.setAttribute("tieudiem6", tieudiem6);
							pageContext.setAttribute("tieudiem7", tieudiem7);
							pageContext.setAttribute("tieudiem8", tieudiem8);
							pageContext.setAttribute("tieudiem9", tieudiem9);
							pageContext.setAttribute("tieudiem10", tieudiem10);
						%>
						<div class="space"></div>

					</div>

					<div class="headlines">
						<div class="tit">

							<a> Tiêu điểm </a>

						</div>
						<div class="ctm">

							<div class="box1">
								<div class="img_tieudiem">
									<a href="load?id=${pageScope.tieudiem1.id }"><img
										src="${pageScope.tieudiem1.url_daidien }" width="142"
										height="174" hspace="3" vspace="3" align="left" border="0"></a>

								</div>
								<div class="title_tieudiem">
									<a href="load?id=${pageScope.tieudiem1.id }">${pageScope.tieudiem1.title
										}</a>
								</div>
							</div>


							<div class="box1">
								<div class="img_tieudiem">
									<a href="load?id=${pageScope.tieudiem2.id }"><img
										src="${pageScope.tieudiem2.url_daidien }" width="142"
										height="169" hspace="3" vspace="3" align="left" border="0"></a>

								</div>
								<div class="title_tieudiem">
									<a href="load?id=${pageScope.tieudiem2.id }">${pageScope.tieudiem2.title
										}</a>
								</div>
							</div>

							<div class="box1">
								<div class="img_tieudiem">
									<a href="load?id=${pageScope.tieudiem3.id }"><img
										src="${pageScope.tieudiem3.url_daidien }" width="142"
										height="154" hspace="3" vspace="3" align="left" border="0"></a>

								</div>
								<div class="title_tieudiem">
									<a href="load?id=${pageScope.tieudiem3.id }">${pageScope.tieudiem3.title
										}</a>
								</div>
							</div>

							<div class="box1">
								<div class="img_tieudiem">
									<a href="load?id=${pageScope.tieudiem4.id }"><img
										src="${pageScope.tieudiem4.url_daidien }" width="142"
										height="172" hspace="3" vspace="3" align="left" border="0"></a>

								</div>
								<div class="title_tieudiem">
									<a href="load?id=${pageScope.tieudiem4.id }">${pageScope.tieudiem4.title
										}</a>
								</div>
							</div>

							<div class="box1">
								<div class="img_tieudiem">
									<a href="load?id=${pageScope.tieudiem5.id }"><img
										src="${pageScope.tieudiem5.url_daidien }" width="142"
										height="163" hspace="3" vspace="3" align="left" border="0"></a>

								</div>
								<div class="title_tieudiem">
									<a href="load?id=${pageScope.tieudiem5.id }">${pageScope.tieudiem5.title
										}</a>
								</div>
							</div>

							<div class="box1">
								<div class="img_tieudiem">
									<a href="load?id=${pageScope.tieudiem6.id }"><img
										src="${pageScope.tieudiem6.url_daidien }" width="142"
										height="154" hspace="3" vspace="3" align="left" border="0"></a>
								</div>
								<div class="title_tieudiem">
									<a href="load?id=${pageScope.tieudiem6.id }">${pageScope.tieudiem6.title
										}</a>
								</div>
							</div>

							<div class="box1">
								<div class="img_tieudiem">
									<a href="load?id=${pageScope.tieudiem7.id }"><img
										src="${pageScope.tieudiem7.url_daidien }" width="142"
										hspace="3" vspace="3" align="left" border="0"></a>

								</div>
								<div class="title_tieudiem">
									<a href="load?id=${pageScope.tieudiem7.id }">${pageScope.tieudiem7.title
										}</a>
								</div>
							</div>

							<div class="box1">
								<div class="img_tieudiem">
									<a href="load?id=${pageScope.tieudiem8.id }"><img
										src="${pageScope.tieudiem8.url_daidien }" width="142"
										hspace="3" vspace="3" align="left" border="0"></a>

								</div>
								<div class="title_tieudiem">
									<a href="load?id=${pageScope.tieudiem8.id }">${pageScope.tieudiem8.title
										}</a>
								</div>
							</div>

							<div class="box1">
								<div class="img_tieudiem">
									<a href="load?id=${pageScope.tieudiem9.id }"><img
										src="${pageScope.tieudiem9.url_daidien }" width="142"
										height="145" hspace="3" vspace="3" align="left" border="0"></a>

								</div>
								<div class="title_tieudiem">
									<a href="load?id=${pageScope.tieudiem9.id } }">${pageScope.tieudiem9.title
										}</a>
								</div>
							</div>

							<div class="box1">
								<div class="img_tieudiem">
									<a href="load?id=${pageScope.tieudiem10.id }"><img
										src="${pageScope.tieudiem10.url_daidien }" width="142"
										hspace="3" vspace="3" align="left" border="0"></a>

								</div>
								<div class="title_tieudiem">
									<a href="load?id=${pageScope.tieudiem10.id }">${pageScope.tieudiem10.title
										}</a>
								</div>
							</div>
						</div>
					</div>


				</div>


			</div>


		</div>

		<div class="footer">

			<div class="menu_footer">
				<a href="trangchu.jsp">Trang chủ</a> | <a href="gioithieu.jsp">Giới
					thiệu </a> | <a href="thietbiso.jsp">Thiết bị số </a> | <a
					href="game.jsp">Game</a> | <a href="http://tapchicntt.com"
					target="_blank">Tapchicntt.com</a> | <a href="http://bkc.vn"
					target="_blank">bkc.vn</a> | <a href="http://Stivi.vn"
					target="_blank">Stivi.vn</a> | <a href="hoidap.jsp">Hỏi đáp</a> | <a
					href="lienhe.jsp">Liên hệ</a> | <a
					href="https://www.facebook.com/ntncoporation?ref=hl"
					target="_blank">Facebook</a>
			</div>
			<div class="line"></div>
			<div class="info">
				<div class="info_left">
					Chuyên trang về Công nghệ thông tin.<br> Giấy phép số 1133/GP – BTTTT ngày 1/1/2014 của Bộ thông tin truyền thông.<br> Tổng Biên tập: Nguyễn Tấn Tài. Phó Tổng biên tập: Nguyễn Văn Nú, Lương Văn Nhẫn.<br> Đại học Nông Lâm, khoa Công nghệ thông tin.
				</div>
				<div class="info_right">
					<div class="logo_footer">
						<a href="trangchu.jsp"><img src="Image/Logo.png" width="60"
							height="51" /></a>
					</div>
					Copyright © 2013 IT - Chuyên trang, thông tin công nghệ, thủ thuật
					, tiện ích.<br> Ghi rõ nguồn " it.com.vn" khi phát hành lại
					thông tin từ website này.
				</div>
			</div>
		</div>


	</div>
	
	<div id="divAdRight" style="DISPLAY: none; POSITION: absolute; TOP: 0px">     
<a href="http://www.bkc.vn" target="_blank"><img src="Image/quangcao3.jpg" width="125" height="398" /></a>
</div>     
<div id="divAdLeft" style="DISPLAY: none; POSITION: absolute; TOP: 0px">     
<a href="http://www.tapchicntt.com" target="_blank"><img src="Image/quangcao2.gif" width="125" height="410" /></a>     
</div>
     
<script>     
    function FloatTopDiv()     
    {     
        startLX = ((document.body.clientWidth -MainContentW)/2)-LeftBannerW-LeftAdjust , startLY = TopAdjust+80;     
        startRX = ((document.body.clientWidth -MainContentW)/2)+MainContentW+RightAdjust , startRY = TopAdjust+80;     
        var d = document;     
        function ml(id)     
        {     
            var el=d.getElementById?d.getElementById(id):d.all?d.all[id]:d.layers[id];    
            el.sP=function(x,y){this.style.left=x + 'px';this.style.top=y + 'px';};     
            el.x = startRX;     
            el.y = startRY;     
            return el;     
        }     
        function m2(id)     
        {     
            var e2=d.getElementById?d.getElementById(id):d.all?d.all[id]:d.layers[id];     
            e2.sP=function(x,y){this.style.left=x + 'px';this.style.top=y + 'px';};     
            e2.x = startLX;     
            e2.y = startLY;     
            return e2;     
        }     
        window.stayTopLeft=function()     
        {     
            if (document.documentElement && document.documentElement.scrollTop)     
                var pY =  document.documentElement.scrollTop;     
            else if (document.body)     
                var pY =  document.body.scrollTop;     
             if (document.body.scrollTop > 30){startLY = 3;startRY = 3;} else  {startLY = TopAdjust;startRY = TopAdjust;};     
            ftlObj.y += (pY+startRY-ftlObj.y)/16;     
            ftlObj.sP(ftlObj.x, ftlObj.y);     
            ftlObj2.y += (pY+startLY-ftlObj2.y)/16;     
            ftlObj2.sP(ftlObj2.x, ftlObj2.y);     
            setTimeout("stayTopLeft()", 1);     
        }     
        ftlObj = ml("divAdRight");     
        //stayTopLeft();     
        ftlObj2 = m2("divAdLeft");     
        stayTopLeft();     
    }     
    function ShowAdDiv()     
    {     
        var objAdDivRight = document.getElementById("divAdRight");     
        var objAdDivLeft = document.getElementById("divAdLeft");       
        if (document.body.clientWidth < 1000)     
        {     
            objAdDivRight.style.display = "none";     
            objAdDivLeft.style.display = "none";     
        }     
        else     
        {     
            objAdDivRight.style.display = "block";     
            objAdDivLeft.style.display = "block";     
            FloatTopDiv();     
        }     
    } 
</script>     
<script>     
document.write("<script type='text/javascript' language='javascript'>MainContentW = 1000;LeftBannerW = 125;RightBannerW = 125;LeftAdjust = 3;RightAdjust = 3;TopAdjust = 2;ShowAdDiv();window.onresize=ShowAdDiv;;<\/script>");     

</script>

</body>
</html>

