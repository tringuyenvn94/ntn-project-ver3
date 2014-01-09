<%@page import="java.util.List"%>
<%@page import="entity.TopicEntity"%>
<%@page import="dao.TopicDAO"%>
<%@page import="entity.UserEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang Chủ</title>

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
						hệ&nbsp;</a> |&nbsp; <a href="http://www.facebook.com"> <img
						src="Image/facebook.jpg" width="18" height="18" /></a>
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
				<li class="item menu"><a href="trangchu.jsp"><span>Trang
							chủ</span> </a>
					<ul class="submenu_1"></ul></li>

				<li id="item_2" class="item"><a href="tintuccongnghe.jsp"><span>
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

			<div id="content_main">

				<div class="content_left">

					<div class="topnew">
						<%
							TopicEntity topnew = TopicDAO.loadLastedTopic();
							int id_topnew = topnew.getId();
							String title_topnew = topnew.getTitle();
							String url_daidien = topnew.getUrl_daidien();
						%>
						<div class="title_topnew">
							<a href="load?id=<%=id_topnew%>"><span><%=title_topnew%></span></a>
						</div>
						<div>
							<table border="0" cellpadding="0" cellspacing="0" width="100%">
								<tbody>
									<tr>
										<td class="img_top"><a href="load?id=<%=id_topnew%>"><img
												src="<%=url_daidien%>" height="250" align="left" border="0"
												hspace="3" vspace="3"></a></td>
										<td class="ctt_top" valign="top">Lỗi lag chuột khi chơi
											game trên các máy tính chạy Windows 8.1 đã gây ra không ít
											khó chịu cho game thủ.&nbsp;Một trong những điểm mới trên
											Windows 8.1 là hệ điều hành này hỗ trợ tốt hơn cho các màn
											hình có DPI cao.&nbsp;</td>
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
												<%
													List<TopicEntity> topics = TopicDAO.loadBeforeLasted();
													TopicEntity topic1 = topics.get(0);
													TopicEntity topic2 = topics.get(1);
													TopicEntity topic3 = topics.get(2);
													int id1 = topic1.getId();
													pageContext.setAttribute("topic1", topic1);
													pageContext.setAttribute("topic2", topic2);
													pageContext.setAttribute("topic3", topic3);
												%>
												<a href="load?id=${pageScope.topic1.id }"> <img
													src="${pageScope.topic1.url_daidien }">

												</a>
											</div>
											<div class="title_boxsub">
												<a href="load?id=${pageScope.topic1.id }">
													${pageScope.topic1.title }</a>
											</div>
									</span></td>

									<td><span>
											<div class="boxsub">
												<a href="load?id=${pageScope.topic2.id }"> <img
													src="${pageScope.topic2.url_daidien }" border="0">
												</a>
											</div>
											<div class="title_boxsub">
												<a href="load?id=${pageScope.topic2.id }">
													${pageScope.topic2.title }</a>
											</div>
									</span></td>

									<td><span>
											<div class="boxsub">
												<a href="load?id=${pageScope.topic3.id }"> <img
													src="${pageScope.topic3.url_daidien }" border="0">
												</a>
											</div>
											<div class="title_boxsub">
												<a href="load?id=${pageScope.topic3.id }">
													${pageScope.topic3.title }</a>
											</div>
									</span></td>

								</tr>
							</tbody>
						</table>

					</div>


					<div class="wbox cat">
						<div class="tit">

							<a href="tintuccongnghe.jsp" title="Chuyên mục 'Tin tức'">Tin
								tức</a>

						</div>
						<div class="ctm">

							<%
								List<TopicEntity> tintuc = TopicDAO.loadByMainId("tintuccongnghe");
								TopicEntity tintuc1 = tintuc.get(0);
								TopicEntity tintuc2 = tintuc.get(1);
								TopicEntity tintuc3 = tintuc.get(2);
								pageContext.setAttribute("tintuc1", tintuc1);
								pageContext.setAttribute("tintuc2", tintuc2);
								pageContext.setAttribute("tintuc3", tintuc3);
							%>

							<div class="title_article">
								<a href="load?id=${pageScope.tintuc1.id }">${pageScope.tintuc1.title
									}</a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a
												href="load?id=${pageScope.tintuc1.id }"><img
													src="${pageScope.tintuc1.url_daidien }" align="left"
													border="0" hspace="3" vspace="3"></a> Đúng 2 năm về
												trước, Wired cho đăng tải một bài báo có tên "Sự trỗi dậy và
												sụp đổ của Bitcoin". Trong khi Wired đã đúng về sự trỗi dậy
												của Bitcoin, ngày sụp đổ của đồng tiền ảo này liệu có còn
												quá xa?</td>

										</tr>
									</tbody>
								</table>
							</div>
							<div class="tin_lienquan">

								<ul>

									<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.tintuc2.id }">${pageScope.tintuc2.title
											} </a></li>

									<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.tintuc3.id }">${pageScope.tintuc3.title
											} </a></li>

								</ul>


							</div>

						</div>

					</div>

					<%
						List<TopicEntity> baomat = TopicDAO.loadByMainId("baomat");
						TopicEntity baomat1 = baomat.get(0);
						TopicEntity baomat2 = baomat.get(1);
						TopicEntity baomat3 = baomat.get(2);

						pageContext.setAttribute("baomat1", baomat1);
						pageContext.setAttribute("baomat2", baomat2);
						pageContext.setAttribute("baomat3", baomat3);
					%>
					<div class="wbox cat">
						<div class="tit">
							<a href="baomat.jsp" title="Chuyên mục 'Bảo mật'">Bảo mật</a>

						</div>
						<div class="ctm">

							<div class="title_article">
								<a href="load?id=${pageScope.baomat1.id }">${pageScope.baomat1.title
									}</a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a
												href="/google-tung-doc-chieu-phong-chong-ddos-105403"><img
													src="${pageScope.baomat1.url_daidien }" align="left"
													border="0" hspace="3" vspace="3"></a> Cho dù có cùng tên
												gọi với máy chơi game cầm tay của NVIDIA, Project Shield của
												Google là một dự án hoàn toàn độc lập sẽ giúp ích rất nhiều
												cho các trang web nhỏ.</td>

										</tr>
									</tbody>
								</table>
							</div>
							<div class="tin_lienquan">

								<ul>

									<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.baomat2.id }">${pageScope.baomat2.title
											}</a></li>

									<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.baomat3.id }">${pageScope.baomat3.title
											}</a></li>

								</ul>


							</div>

						</div>

					</div>


					<%
						List<TopicEntity> phancung = TopicDAO.loadByMainId("phancung");
						TopicEntity phancung1 = phancung.get(0);
						TopicEntity phancung2 = phancung.get(1);
						TopicEntity phancung3 = phancung.get(2);

						pageContext.setAttribute("phancung1", phancung1);
						pageContext.setAttribute("phancung2", phancung2);
						pageContext.setAttribute("phancung3", phancung3);
					%>
					<div class="wbox cat">
						<div class="tit">

							<a href="phancung.jsp" title="Chuyên mục 'Phần cứng'">Phần
								cứng</a>

						</div>
						<div class="ctm">

							<div class="title_article">
								<a href="load?id=${pageScope.phancung1.id }">${pageScope.phancung1.title
									}</a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a
												href="load?id=${pageScope.phancung1.id }"><img
													src="${pageScope.phancung1.url_daidien }" align="left"
													border="0" hspace="3" vspace="3"></a> Theo CNET, iPad
												Mini Retina tốt hơn iPod, iPhone và bỏ xa iPad thế hệ thứ ba
												và thứ tư. Sản phẩm đã khắc phục được nhược điểm của thế hệ
												iPad Mini đầu tiên và hứa hẹn đem lại trải nghiệm tuyệt vời
												nhất cho người dùng.</td>

										</tr>
									</tbody>
								</table>
							</div>
							<div class="tin_lienquan">

								<ul>

									<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.phancung2.id }">${pageScope.phancung2.title
											}</a></li>

									<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.phancung3.id }">${pageScope.phancung3.title
											}</a></li>

								</ul>


							</div>

						</div>

					</div>


					<%
						List<TopicEntity> phanmem = TopicDAO.loadByMainId("phanmem");
						TopicEntity phanmem1 = phanmem.get(0);
						TopicEntity phanmem2 = phanmem.get(1);
						TopicEntity phanmem3 = phanmem.get(2);

						pageContext.setAttribute("phanmem1", phanmem1);
						pageContext.setAttribute("phanmem2", phanmem2);
						pageContext.setAttribute("phanmem3", phanmem3);
					%>
					<div class="wbox cat">
						<div class="tit">

							<a href="phanmem.jsp" title="Chuyên mục 'Phần mềm'">Phần mềm</a>

						</div>
						<div class="ctm">

							<div class="title_article">
								<a href="load?id=${pageScope.phanmem1.id }">${pageScope.phanmem1.title
									}</a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a
												href="load?id=${pageScope.phanmem1.id }"><img
													src="${pageScope.phanmem1.url_daidien }" align="left"
													border="0" hspace="3" vspace="3"></a> Kể từ khi ra mắt
												chiếc điện thoại giá rẻ của Apple - iPhone 5c chỉ đem lại
												một tình hình kinh doanh ảm đạm. Và cho đến ngày hôm qua một
												nhà máy của Foxconn tại Trịnh Châu, Trung Quốc sẽ tạm dừng
												sản xuất sản phẩm này.</td>

										</tr>
									</tbody>
								</table>
							</div>
							<div class="tin_lienquan">

								<ul>

									<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.phanmem2.id }">${pageScope.phanmem2.title
											}</a></li>

									<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.phanmem2.id }">${pageScope.phanmem2.title
											}</a></li>

								</ul>


							</div>

						</div>

					</div>

					<%
						List<TopicEntity> hedieuhanh = TopicDAO.loadByMainId("hedieuhanh");
						TopicEntity hedieuhanh1 = hedieuhanh.get(0);
						TopicEntity hedieuhanh2 = hedieuhanh.get(1);
						TopicEntity hedieuhanh3 = hedieuhanh.get(2);

						pageContext.setAttribute("hedieuhanh1", hedieuhanh1);
						pageContext.setAttribute("hedieuhanh2", hedieuhanh2);
						pageContext.setAttribute("hedieuhanh3", hedieuhanh3);
					%>

					<!-- the? img cua? tin dau`-->
					<div class="wbox cat">
						<div class="tit">

							<a href="hedieuhanh.jsp" title="Chuyên mục 'Hệ điều hành'">Hệ
								điều hành</a>

						</div>
						<div class="ctm">

							<div class="title_article">
								<a href="load?id=${pageScope.hedieuhanh1.id }">${pageScope.hedieuhanh1.title
									}</a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a
												href="load?id=${pageScope.hedieuhanh1.id } " align="left"
												border="0" hspace="3" vspace="3"></a> Cách đây tròn 30 năm,
												nhà sáng lập Microsoft là Bill Gates lần đầu tiên giới thiệu
												Windows, mở đường cho 3 thập kỉ thành công của hệ điều hành
												này.</td>

										</tr>
									</tbody>
								</table>
							</div>
							<div class="tin_lienquan">

								<ul>

									<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.hedieuhanh2.id }">${pageScope.hedieuhanh2.title
											}</a></li>

									<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.hedieuhanh3.id }">${pageScope.hedieuhanh3.title
											}</a></li>

								</ul>


							</div>

						</div>

					</div>

					<%
						List<TopicEntity> thietbiso = TopicDAO.loadByMainId("thietbiso");
						TopicEntity thietbiso1 = thietbiso.get(0);
						TopicEntity thietbiso2 = thietbiso.get(1);
						TopicEntity thietbiso3 = thietbiso.get(2);

						pageContext.setAttribute("thietbiso1", thietbiso1);
						pageContext.setAttribute("thietbiso2", thietbiso2);
						pageContext.setAttribute("thietbiso3", thietbiso3);
					%>
					<div class="wbox cat">
						<div class="tit">

							<a href="thietbiso.jsp" title="Chuyên mục 'Thiết bị số'">Thiết
								bị số</a>

						</div>
						<div class="ctm">

							<div class="title_article">
								<a href="load?id=${pageScope.thietbiso1.id }">${pageScope.thietbiso1.title
									}</a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a
												href="load?id=${pageScope.thietbiso1.id }"><img
													src="${pageScope.thietbiso1.url_daidien }" align="left"
													border="0" hspace="3" vspace="3"></a> Được công bố vào
												tháng 5/2013 nhưng đến giờ thì chiếc smartphone Jolla đầu
												tiên vẫn chưa có mặt trên thị trường. Tuy nhiên, có thông
												tin cho rằng chiếc smartphone đầu tiên chạy hệ điều hành
												Sailfish OS sẽ chính thức lên kệ tại Helsinki, Phần Lan vào
												ngày 27/11.</td>

										</tr>
									</tbody>
								</table>
							</div>
							<div class="tin_lienquan">

								<ul>

									<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.thietbiso2.id }">${pageScope.thietbiso2.title
											}</a></li>

									<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="load?id=${pageScope.thietbiso3.id }">${pageScope.thietbiso3.title
											}</a></li>

								</ul>


							</div>

						</div>

					</div>


					<div class="wbox cat">
						<div class="tit">

							<a href="game.jsp" title="Chuyên mục 'Game'">Game</a>

						</div>
						<div class="ctm">

							<div class="title_article">
								<a href="/">Chơi game 30 phút mỗi ngày giúp tăng cường trí
									nhớ </a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a href="/"><img
													src="Image/game-1.jpg" align="left" border="0" hspace="3"
													vspace="3"></a> Trong khi một số người nghĩ rằng chơi
												game chỉ lãng phí thời gian, thì các nhà khoa học lại phát
												hiện ra chơi game có thể giúp tăng kích cỡ bộ não.</td>

										</tr>
									</tbody>
								</table>
							</div>
							<div class="tin_lienquan">

								<ul>

									<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="/">Ngọa Long Mobile chính thức đến tay người dùng </a></li>

									<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="/">Plants vs Zombies 2 đã có mặt trên Android </a></li>

								</ul>


							</div>

						</div>

					</div>



					<div class="wbox cat">
						<div class="tit">

							<a href="thuthuattienich.jsp"
								title="Chuyên mục 'Thủ thuật-Tiện ích'">Thủ thuật-Tiện ích</a>
						</div>
						<div class="ctm">

							<div class="title_article">
								<a href="/">Google Chrome 32 Beta: Nhận diện tác vụ trong
									từng thẻ </a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a href="/"><img
													src="Image/chrom.jpg" height="170" align="left" border="0"
													hspace="3" vspace="3"></a> Một thay đổi không lớn, nhưng
												rất được chào đón trên Google Chrome 32 Beta, đó là khả năng
												thông báo cho người dùng biết tác vụ đang được thực hiện
												trong một thẻ mà không cần bấm vào thẻ đó.</td>

										</tr>
									</tbody>
								</table>
							</div>
							<div class="tin_lienquan">

								<ul>

									<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="/">Phân nhóm bạn bè trên Facebook </a></li>

									<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="/">Từ điển Oxford cho người học tiếng Anh </a></li>

								</ul>


							</div>

						</div>

					</div>

					<div class="wbox cat">
						<div class="tit">

							<a href="hoidap.jsp" title="Chuyên mục 'Hỏi-Đáp'">Hỏi-Đáp</a>

						</div>
						<div class="ctm">

							<div class="title_article">
								<a href="/">Liệu iPhone 6 giá cả sẽ như thế nào?</a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td class="image" valign="top"><a href="/"><img
													src="Image/question-iphone-6.jpg" align="left" border="0"
													hspace="3" vspace="3"></a> Màn hình lớn hơn cùng với chip
												xử lý thế hệ mới nhiều khả năng sẽ khiến mức giá bán iPhone
												6 bị đội lên khoảng 50 - 100 USD.</td>

										</tr>
									</tbody>
								</table>
							</div>
							<div class="tin_lienquan">

								<ul>

									<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="/"> Cách sạc pin điện thoại đúng cách? </a></li>

									<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a
										href="/">Laptop bị nước vào, phải làm sao? </a></li>

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
											<a href="https://www.facebook.com/ntncoporation?ref=hl"
												target="_blank"><img src="Image/Untitled.png" width="55"
												height="22" /></a>
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
					
					System.out.println(tieudiem1.getUrl_daidien());
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
									<a href="load?id=${pageScope.tieudiem1.id }"><img src="${pageScope.tieudiem1.url_daidien }" width="142"
										height="174" hspace="3" vspace="3" align="left" border="0"></a>

								</div>
								<div class="title_tieudiem">
									<a href="load?id=${pageScope.tieudiem1.id }">${pageScope.tieudiem1.title }</a>
								</div>
							</div>


							<div class="box1">
								<div class="img_tieudiem">
									<a
										href="load?id=${pageScope.tieudiem2.id }"><img
										src="${pageScope.tieudiem2.url_daidien }" width="142" height="169" hspace="3"
										vspace="3" align="left" border="0"></a>

								</div>
								<div class="title_tieudiem">
									<a
										href="load?id=${pageScope.tieudiem2.id }">${pageScope.tieudiem2.title }</a>
								</div>
							</div>

							<div class="box1">
								<div class="img_tieudiem">
									<a
										href="load?id=${pageScope.tieudiem3.id }"><img
										src="${pageScope.tieudiem3.url_daidien }" width="142" height="154" hspace="3"
										vspace="3" align="left" border="0"></a>

								</div>
								<div class="title_tieudiem">
									<a
										href="load?id=${pageScope.tieudiem3.id }">${pageScope.tieudiem3.title }</a>
								</div>
							</div>

							<div class="box1">
								<div class="img_tieudiem">
									<a href="load?id=${pageScope.tieudiem4.id }"><img
										src="${pageScope.tieudiem4.url_daidien }" width="142" height="172" hspace="3"
										vspace="3" align="left" border="0"></a>

								</div>
								<div class="title_tieudiem">
									<a href="load?id=${pageScope.tieudiem4.id }">${pageScope.tieudiem4.title }</a>
								</div>
							</div>

							<div class="box1">
								<div class="img_tieudiem">
									<a
										href="load?id=${pageScope.tieudiem5.id }"><img
										src="${pageScope.tieudiem5.url_daidien }" width="142" height="163" hspace="3"
										vspace="3" align="left" border="0"></a>

								</div>
								<div class="title_tieudiem">
									<a
										href="load?id=${pageScope.tieudiem5.id }">${pageScope.tieudiem5.title }</a>
								</div>
							</div>

							<div class="box1">
								<div class="img_tieudiem">
									<a href="load?id=${pageScope.tieudiem6.id }"><img src="${pageScope.tieudiem6.url_daidien }" width="142"
										height="154" hspace="3" vspace="3" align="left" border="0"></a>
								</div>
								<div class="title_tieudiem">
									<a href="load?id=${pageScope.tieudiem6.id }">${pageScope.tieudiem6.title }</a>
								</div>
							</div>

							<div class="box1">
								<div class="img_tieudiem">
									<a href="load?id=${pageScope.tieudiem7.id }"><img src="${pageScope.tieudiem7.url_daidien }" width="142"
										hspace="3" vspace="3" align="left" border="0"></a>

								</div>
								<div class="title_tieudiem">
									<a href="load?id=${pageScope.tieudiem7.id }">${pageScope.tieudiem7.title }</a>
								</div>
							</div>

							<div class="box1">
								<div class="img_tieudiem">
									<a href="load?id=${pageScope.tieudiem8.id }"><img src="${pageScope.tieudiem8.url_daidien }" width="142"
										hspace="3" vspace="3" align="left" border="0"></a>

								</div>
								<div class="title_tieudiem">
									<a href="load?id=${pageScope.tieudiem8.id }">${pageScope.tieudiem8.title }</a>
								</div>
							</div>

							<div class="box1">
								<div class="img_tieudiem">
									<a href="load?id=${pageScope.tieudiem9.id }"><img src="${pageScope.tieudiem9.url_daidien }" width="142"
										height="145" hspace="3" vspace="3" align="left" border="0"></a>

								</div>
								<div class="title_tieudiem">
									<a href="load?id=${pageScope.tieudiem9.id } }">${pageScope.tieudiem9.title }</a>
								</div>
							</div>

							<div class="box1">
								<div class="img_tieudiem">
									<a href="load?id=${pageScope.tieudiem10.id }"><img src="${pageScope.tieudiem10.url_daidien }" width="142"
										hspace="3" vspace="3" align="left" border="0"></a>

								</div>
								<div class="title_tieudiem">
									<a href="load?id=${pageScope.tieudiem10.id }">${pageScope.tieudiem10.title }</a>
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
					Information Technology - Chuyên trang về Công nghệ thông tin.<br>
					Giấy phép số 1133/GP – BTTTT ngày 1/1/2014 của Bộ thông tin truyền
					thông.<br> Tổng Biên tập: Nguyễn Tấn Tài. Phó Tổng biên tập:
					Nguyễn Văn Nú, Lương Văn Nhẫn.<br> Cơ quan chủ quản: NTN
					Coporation Entertainment Education Information Technology.
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

		<div id="ads_left"
			style="position: fixed; top: 5px; height: 630px; width: 160px; margin-left: -165px;">
			<div style="position: absolute">
				<a href="http://www.tapchicntt.com" target="_blank"> <img
					src="Image/quangcao2.gif" width="160" height="630" border="0"></a>
			</div>
		</div>

		<div id="ads_right"
			style="position: fixed; top: 5px; height: 630px; width: 160px; margin-left: 1005px;">
			<div style="position: absolute">
				<a href="http://www.bkc.vn" target="_blank"> <img
					src="Image/quangcao3.jpg" width="160" height="630" border="0"></a>
			</div>

		</div>

	</div>

</body>
</html>

