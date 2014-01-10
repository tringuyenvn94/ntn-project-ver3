<%@page import="dao.TopicDAO"%>
<%@page import="entity.TopicEntity"%>
<%@page import="java.util.List"%>
<%@page import="entity.UserEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thiết bị số</title>

<link rel="stylesheet" type="text/css" href="CSS/styleMenu.css" />
<link rel="stylesheet" type="text/css" href="CSS/styleLayout.css" />

</head>

<body>

	<div class="container">

		<div class="header">
			<div class="headermain">
				<div id="menu_top">
					<a href="trangchu.jsp">Trang chủ&nbsp;</a> | &nbsp; <a href="tintuccongnghe.jsp">Tin tức&nbsp;</a> |&nbsp; <a href="gioithieu.jsp">Giới thiệu&nbsp;</a> |&nbsp; <a href="game.jsp">Game &nbsp;</a> |&nbsp; <a href="lienhe.jsp">Liên hệ&nbsp;</a> |&nbsp; <a href="http://www.facebook.com"> <img src="Image/facebook.jpg" width="18" height="18" /></a>
				</div>
				<div class="logo">
					<a href="trangchu.jsp"><img src="Image/Logo.png" width="185" height="107" /></a>
				</div>
				<%
					UserEntity user = (UserEntity) session.getAttribute("user");
					if (user == null) {
				%>
				<div id="memberbox">
					<a href="dangnhap.jsp">Đăng nhập</a> | <a href="quenmatkhau.jsp">Quên mật khẩu?</a> | <a href="dangky.jsp">Đăng ký</a>
				</div>
				<%
					} else {
						String username = user.getUseName();
				%>
				<div id="tv">
					Xin chào,<%=username%>
					|<a href="trangcanhan.jsp">Trang cá nhân </a>|<a href="dangxuat?user=user">Đăng Xuất </a>

				</div>
				<%
					}
				%>
			</div>
		</div>

		<div id="menumain">

			<ul id="topmenu">
				<li class="item"><a href="trangchu.jsp"><span>Trang chủ</span> </a>
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

				<li id="item_7" class="item menu"><a href="thietbiso.jsp"><span> Thiết bị số </span></a>
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
				<table style="float: right;" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td><b>Tìm kiếm:&nbsp;</b></td>

						<td><input type="text" name="query" id="txtQuery" value="Từ khóa" onfocus="if(this.value == 'Từ khóa') this.value='';" onblur="if(this.value == '') this.value='Từ khóa';" style="width: 150px; height: 18px;"></td>
						<td><input id="button" type="button" style="width: 50px" value="Tìm"></td>
					</tr>
				</table>

			</div>

			<div id="content_main">

				<div class="content_left">

					<div class="topnew">

						<div class="title_topnew">
							<%
								List<TopicEntity> thietbiso = TopicDAO.loadByMainId("thietbiso");
								TopicEntity tbs1 = thietbiso.get(0);
								TopicEntity tbs2 = thietbiso.get(1);
								TopicEntity tbs3 = thietbiso.get(2);
								TopicEntity tbs4 = thietbiso.get(3);

								pageContext.setAttribute("tbs1", tbs1);
								pageContext.setAttribute("tbs2", tbs2);
								pageContext.setAttribute("tbs3", tbs3);
								pageContext.setAttribute("tbs4", tbs4);
							%>
							<a href="load?id=${pageScope.tbs1.id }"><span>${pageScope.tbs1.title } </span></a>
						</div>
						<div>
							<table border="0" cellpadding="0" cellspacing="0" width="100%">
								<tbody>
									<tr>
										<td class="img_top"><a href="load?id=${pageScope.tbs1.id }"><img src="${pageScope.tbs1.url_daidien }" height="250" align="left" border="0" hspace="3" vspace="3"></a></td>
										<td class="ctt_top" valign="top">${pageScope.tbs1.header }</td>
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
												<a href="load?id=${pageScope.tbs2.id }"> <img src="${pageScope.tbs2.url_daidien }" border="0">
												</a>
											</div>
											<div class="title_boxsub">
												<a href="load?id=${pageScope.tbs2.id }"> ${pageScope.tbs2.title } </a>
											</div>
									</span></td>

									<td><span>
											<div class="boxsub">
												<a href="load?id=${pageScope.tbs3.id }"> <img src="${pageScope.tbs3.url_daidien }" border="0">
												</a>
											</div>
											<div class="title_boxsub">
												<a href="load?id=${pageScope.tbs3.id }"> ${pageScope.tbs3.title } </a>
											</div>
									</span></td>

									<td><span>
											<div class="boxsub">
												<a href="load?id=${pageScope.tbs4.id  }"> <img src="${pageScope.tbs4.url_daidien }" border="0">
												</a>
											</div>
											<div class="title_boxsub">
												<a href="load?id=${pageScope.tbs4.id  }"> ${pageScope.tbs4.title } </a>
											</div>
									</span></td>

								</tr>
							</tbody>
						</table>

					</div>


					<div class="wbox cat">
						<div class="tit">

							<a href="mayanh.jsp" title="Chuyên mục 'Máy ảnh'">Máy ảnh</a>

						</div>
						<div class="ctm">
							<%
								List<TopicEntity> mayanh = TopicDAO.loadBySubMenu("mayanh");
								TopicEntity mayanh1 = mayanh.get(0);
								TopicEntity mayanh2 = mayanh.get(1);
								TopicEntity mayanh3 = mayanh.get(2);

								pageContext.setAttribute("mayanh1", mayanh1);
								pageContext.setAttribute("mayanh2", mayanh2);
								pageContext.setAttribute("mayanh3", mayanh3);
							%>

							<div class="title_article">
								<a href="load?id=${pageScope.mayanh1.id }">${pageScope.mayanh1.title } </a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a href="load?id=${pageScope.mayanh1.id }"><img src="${pageScope.mayanh1.url_daidien }" height="198" align="left" border="0" hspace="3" vspace="3"></a> ${pageScope.header }</td>

										</tr>
									</tbody>
								</table>
							</div>
							<div class="tin_lienquan">

								<ul>

									<li><img src="Image/icon.jpg" align="middle">&nbsp;<a href="load?id=${pageScope.mayanh2.id }"> ${pageScope.mayanh2.title } </a></li>

									<li><img src="Image/icon.jpg" align="middle">&nbsp;<a href="load?id=${pageScope.mayanh3.id }"> ${pageScope.mayanh3.title } </a></li>

								</ul>


							</div>

						</div>

					</div>


					<div class="wbox cat">
						<div class="tit">
							<a href="mayquay.jsp" title="Chuyên mục 'Máy quay phim'">Máy quay</a>

						</div>
						<div class="ctm">

							<%
								List<TopicEntity> mayquay = TopicDAO.loadBySubMenu("mayquay");
								TopicEntity mayquay1 = mayquay.get(0);
								TopicEntity mayquay2 = mayquay.get(1);
								TopicEntity mayquay3 = mayquay.get(2);

								pageContext.setAttribute("mayquay1", mayquay1);
								pageContext.setAttribute("mayquay2", mayquay2);
								pageContext.setAttribute("mayquay3", mayquay3);
							%>
							<div class="title_article">
								<a href="load?id=${pageScope.mayquay1.id }">${pageScope.mayquay1.title } </a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a href="load?id=${pageScope.mayquay1.id }"><img src="${pageScope.mayquay1.url_daidien  }" height="155" align="left" border="0" hspace="3" vspace="3"></a> ${pageScope.header }</td>

										</tr>
									</tbody>
								</table>
							</div>
							<div class="tin_lienquan">

								<ul>

									<li><img src="Image/icon.jpg" align="middle">&nbsp;<a href="load?id=${pageScope.mayquay2.id }"> ${pageScope.mayquay2.title } </a></li>

									<li><img src="Image/icon.jpg" align="middle">&nbsp;<a href="load?id=${pageScope.mayquay3.id }"> ${pageScope.mayquay3.title } </a></li>

								</ul>


							</div>

						</div>

					</div>

					<div class="wbox cat">
						<div class="tit">
							<%
								List<TopicEntity> didong = TopicDAO.loadBySubMenu("didong");
								TopicEntity didong1 = didong.get(0);
								TopicEntity didong2 = didong.get(1);
								TopicEntity didong3 = didong.get(2);

								pageContext.setAttribute("didong1", didong1);
								pageContext.setAttribute("didong2", didong2);
								pageContext.setAttribute("didong3", didong3);
							%>

							<a href="didong.jsp" title="Chuyên mục 'Di động'">Di động</a>

						</div>
						<div class="ctm">

							<div class="title_article">
								<a href="load?id=${pageScope.didong1.id }">${pageScope.didong1.title } </a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a href=load?id=${pageScope.didong1.id}"><img src="${pageScope.didong1.url_daidien }" height="160" align="left" border="0" hspace="3" vspace="3"></a> ${pageScope.header }</td>

										</tr>
									</tbody>
								</table>
							</div>
							<div class="tin_lienquan">

								<ul>

									<li><img src="Image/icon.jpg" align="middle">&nbsp;<a href="load?id=${pageScope.didong2.id }">${pageScope.didong2.title } </a></li>

									<li><img src="Image/icon.jpg" align="middle">&nbsp;<a href="load?id=${pageScope.didong3.id }"> ${pageScope.didong3.title } </a></li>

								</ul>


							</div>

						</div>

					</div>

					<div class="wbox cat">
						<div class="tit">

							<a href="maynghenhac.jsp" title="Chuyên mục 'Máy nghe nhạc'">Máy nghe nhạc</a>

						</div>
						<div class="ctm">
							<%
								List<TopicEntity> maynghenhac = TopicDAO.loadBySubMenu("maynghenhac");
								TopicEntity maynghenhac1 = maynghenhac.get(0);
								TopicEntity maynghenhac2 = maynghenhac.get(1);
								TopicEntity maynghenhac3 = maynghenhac.get(2);

								pageContext.setAttribute("maynghenhac1", maynghenhac1);
								pageContext.setAttribute("maynghenhac2", maynghenhac2);
								pageContext.setAttribute("maynghenhac3", maynghenhac3);
							%>

							<div class="title_article">
								<a href="load?id=${pageScope.maynghenhac1.id  }">${pageScope.maynghenhac1.title } </a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a href="load?id=${pageScope.maynghenhac1.id }"><img src="${pageScope.maynghenhac1.url_daidien }" height="174" align="left" border="0" hspace="3" vspace="3"></a> ${pageScope.maynghenhac1.header }</td>

										</tr>
									</tbody>
								</table>
							</div>
							<div class="tin_lienquan">

								<ul>

									<li><img src="Image/icon.jpg" align="middle">&nbsp;<a href="load?id=${pageScope.maynghenhac2.id  }"> ${pageScope.maynghenhac2.title } </a></li>

									<li><img src="Image/icon.jpg" align="middle">&nbsp;<a href="load?id=${pageScope.maynghenhac3.id  }"> ${pageScope.maynghenhac3.title } </a></li>

								</ul>


							</div>

						</div>

					</div>


					<div class="wbox cat">
						<div class="tit">

							<a href="thietbigame.jsp" title="Chuyên mục 'Thiết bị game'">Thiết bị game</a>

						</div>
						<div class="ctm">
							<%
								List<TopicEntity> thietbigame = TopicDAO.loadBySubMenu("thietbigame");
								TopicEntity thietbigame1 = thietbigame.get(0);
								TopicEntity thietbigame2 = thietbigame.get(1);
								TopicEntity thietbigame3 = thietbigame.get(2);

								pageContext.setAttribute("tbg1", thietbigame1);
								pageContext.setAttribute("tbg2", thietbigame2);
								pageContext.setAttribute("tbg3", thietbigame3);
							%>
							<div class="title_article">
								<a href="load?id=${pageScope.tbg1.id }">${pageScope.tbg1.title } </a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a href="load?id=${pageScope.tbg1.id }"><img src="Image/Xbox-One-1.jpg" height="150" align="left" border="0" hspace="3" vspace="3"></a> ${pageScope.tbg1.header }</td>

										</tr>
									</tbody>
								</table>
							</div>
							<div class="tin_lienquan">

								<ul>

									<li><img src="Image/icon.jpg" align="middle">&nbsp;<a href="load?id=${pageScope.tbg2.id }"> ${pageScope.tbg2.title } </a></li>

									<li><img src="Image/icon.jpg" align="middle">&nbsp;<a href="load?id=${pageScope.tbg3.id }"> ${pageScope.tbg3.title } </a></li>

								</ul>


							</div>

						</div>

					</div>


					<div class="wbox cat">
						<div class="tit">

							<a href="thietbikhac.jsp" title="Chuyên mục 'Thiết bị khác'">Thiết bị khác</a>

						</div>
						<div class="ctm">
							<%
								List<TopicEntity> thietbikhac = TopicDAO.loadBySubMenu("thietbikhac");
								TopicEntity thietbikhac1 = thietbikhac.get(0);
								TopicEntity thietbikhac2 = thietbikhac.get(1);
								TopicEntity thietbikhac3 = thietbikhac.get(2);

								pageContext.setAttribute("tbk1", thietbikhac1);
								pageContext.setAttribute("tbk2", thietbikhac2);
								pageContext.setAttribute("tbk3", thietbikhac3);
							%>
							<div class="title_article">
								<a href="load?id=${pageScope.tbk1.id }">${pageScope.tbk1.title }</a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a href="load?id=${pageScope.tbk1.id }"><img src="${pageScope.tbk1.url_daidien }" height="155" align="left" border="0" hspace="3" vspace="3"></a> ${pageScope.tbk1.header }</td>

										</tr>
									</tbody>
								</table>
							</div>
							<div class="tin_lienquan">

								<ul>

									<li><img src="Image/icon.jpg" align="middle">&nbsp;<a href="load?id=${pageScope.tbk2.id }"> ${pageScope.tbk2.title } </a></li>

									<li><img src="Image/icon.jpg" align="middle">&nbsp;<a href="load?id=${pageScope.tbk3.id }"> ${pageScope.tbk3.title } </a></li>

								</ul>


							</div>

						</div>

					</div>


					<div class="wbox cat">
						<div class="tit">

							<a href="phukien.jsp" title="Chuyên mục 'Phụ kiện'">Phụ kiện</a>

						</div>
						<div class="ctm">
					<%
								List<TopicEntity> phukien = TopicDAO.loadBySubMenu("phukien");
								TopicEntity phukien1 = phukien.get(0);
								TopicEntity phukien2 = phukien.get(1);
								TopicEntity phukien3 = phukien.get(2);

								pageContext.setAttribute("pk1", phukien1);
								pageContext.setAttribute("pk2", phukien2);
								pageContext.setAttribute("pk3", phukien3);
							%>

							<div class="title_article">
								<a href="load?id=${pageScope.pk1.id }">${pageScope.pk1.title } </a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a href="load?id=${pageScope.pk1.id }"><img src="${pageScope.pk1.url_daidien }" height="154" align="left" border="0" hspace="3" vspace="3"></a> ${pageScope.pk1.header }</td>

										</tr>
									</tbody>
								</table>
							</div>
							<div class="tin_lienquan">

								<ul>

									<li><img src="Image/icon.jpg" align="middle">&nbsp;<a href="load?id=${pageScope.pk2.id }"> ${pageScope.pk2.title }</a></li>

									<li><img src="Image/icon.jpg" align="middle">&nbsp;<a href="load?id=${pageScope.pk3.id }"> ${pageScope.pk3.title }</a></li>

								</ul>


							</div>

						</div>

					</div>


					<div class="facebook">
						<div class="title_fb">InformationTechnology trên Facebook</div>
						<div class="fb">
							<table width="280" border="0">
								<tr>
									<td width="104"><a href="https://www.facebook.com/ntncoporation?ref=hl" target="_blank"><img src="Image/Logo.png" width="101" height="91" /></a></td>
									<td width="166" valign="top"><p>
											<a href="https://www.facebook.com/ntncoporation?ref=hl" target="_blank">InformationTechnology</a>
										</p>
										<p>
											<a href="https://www.facebook.com/ntncoporation?ref=hl" target="_blank"><img src="Image/Untitled.png" width="55" height="22" /></a>
										</p></td>
								</tr>
							</table>
							<div style="margin-left: 12px; margin-top: 10px">
								<a href="https://facebook.com/help/443483272359009" target="_blank"><img src="Image/facebook.jpg" width="15" height="16" /></a><a href="https://facebook.com/help/443483272359009" target="_blank"> Plugin xã hội của facebook</a>
							</div>
						</div>
					</div>

				</div>


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
				<div class="content_right">

					<div class="news">
						<div class="tit">

							<a href="tinmoinhat.jsp"> Tin mới nhất </a>

						</div>
						<div class="ctm">

							<div class="title_new">

								<div>
									<img src="Image/icon.jpg" align="middle">&nbsp;<a
										href="load?id=${pageScope.tinmoinhat1.id }">${pageScope.tinmoinhat1.title
										}</a>
								</div>


								<div>
									<img src="Image/icon.jpg" align="middle">&nbsp;<a
										href="load?id=${pageScope.tinmoinhat2.id }">${pageScope.tinmoinhat2.title
										}</a>
								</div>


								<div>
									<img src="Image/icon.jpg" align="middle">&nbsp;<a
										href="load?id=${pageScope.tinmoinhat3.id }">${pageScope.tinmoinhat3.title
										}</a>
								</div>


								<div>
									<img src="Image/icon.jpg" align="middle">&nbsp;<a
										href="load?id=${pageScope.tinmoinhat4.id }">${pageScope.tinmoinhat4.title
										}</a>
								</div>


								<div>
									<img src="Image/icon.jpg" align="middle">&nbsp;<a
										href="load?id=${pageScope.tinmoinhat5.id }">${pageScope.tinmoinhat5.title
										}</a>
								</div>


								<div>
									<img src="Image/icon.jpg" align="middle">&nbsp;<a
										href="load?id=${pageScope.tinmoinhat6.id }">${pageScope.tinmoinhat6.title
										}</a>
								</div>


								<div>
									<img src="Image/icon.jpg" align="middle">&nbsp;<a
										href="load?id=${pageScope.tinmoinhat7.id }">${pageScope.tinmoinhat7.title
										}</a>
								</div>


								<div>
									<img src="Image/icon.jpg" align="middle">&nbsp;<a
										href="load?id=${pageScope.tinmoinhat8.id }">${pageScope.tinmoinhat8.title
										}</a>
								</div>


								<span id="xemtin"><a href="/"><strong>Xem
											các tin khác </strong></a></span>


							</div>

						</div>




						<%
							List<TopicEntity> tieudiem = TopicDAO.loadAllFocusTopic();
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

