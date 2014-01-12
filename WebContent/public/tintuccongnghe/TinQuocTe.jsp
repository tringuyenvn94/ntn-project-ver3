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

<title>Tin quốc tế</title>
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
						hệ&nbsp;</a> |&nbsp; <div class="fb-like" data-href="https://www.facebook.com/ntncoporation" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></div>
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
				List<TopicEntity> quocte = TopicDAO.loadBySubMenu("quocte");
				TopicEntity quocte1 = quocte.get(0);
				TopicEntity quocte2 = quocte.get(1);
				TopicEntity quocte3 = quocte.get(2);
				TopicEntity quocte4 = quocte.get(1);
				TopicEntity quocte5 = quocte.get(2);
				TopicEntity quocte6 = quocte.get(0);
				TopicEntity quocte7 = quocte.get(1);
				TopicEntity quocte8 = quocte.get(0);
				TopicEntity quocte9 = quocte.get(2);
				TopicEntity quocte10 = quocte.get(1);
				TopicEntity quocte11 = quocte.get(2);
				TopicEntity quocte12 = quocte.get(1);
				
				pageContext.setAttribute("quocte1", quocte1);
				pageContext.setAttribute("quocte2", quocte2);
				pageContext.setAttribute("quocte3", quocte3);
				pageContext.setAttribute("quocte4", quocte4);
				pageContext.setAttribute("quocte5", quocte5);
				pageContext.setAttribute("quocte6", quocte6);
				pageContext.setAttribute("quocte7", quocte7);
				pageContext.setAttribute("quocte8", quocte8);
				pageContext.setAttribute("quocte9", quocte9);
				pageContext.setAttribute("quocte10", quocte10);
				pageContext.setAttribute("quocte11", quocte11);
				pageContext.setAttribute("quocte12", quocte12);
			%>
			<div id="content_main">

				<div class="content_left">


					<div class="bag">
						<div class="tit">
							<a href="trangchu.jsp"><img src="Image/icon_home.jpg"
								width="18" height="24" align="absmiddle" border="0"></a>
							»&nbsp;<a href="tintuccongnghe.jsp">Tin tức công nghệ</a>&nbsp;»&nbsp;<a
								href="tinquocte.jsp">Quốc tế</a>

						</div>

						<div class="title_article">
							<a href="load?id=${pageScope.quocte1.id }"><span>${pageScope.quocte1.title }</span></a>
						</div>
						<div>
							<table border="0" cellpadding="0" cellspacing="0">
								<tbody>
									<tr>
										<td class="img_top2"><a
											href="load?id=${pageScope.quocte1.id }"><img
												src="${pageScope.quocte1.url_daidien }" width="247" height="265"
												hspace="3" vspace="3" align="left" border="0"></a></td>
										<td class="content_top" valign="top" align="left">${pageScope.quocte1.header }</td>
									</tr>
								</tbody>
							</table>
						</div>


						<div class="lines">
							<img src="Image/netdut.jpg">
						</div>

						<div class="subcontent2">
							<a
								href="load?id=${pageScope.quocte2.id }">
								<img src="${pageScope.quocte2.url_daidien }" height="179" hspace="5"
								vspace="3" align="left" border="0">
							</a>
							<p class="title_ctt">
								<a
									href="load?id=${pageScope.quocte2.id }">${pageScope.quocte2.title }</a>
							</p>
							<p class="detail_ctt">${pageScope.quocte2.header }</div>

						<div class="lines">
							<img src="Image/netdut.jpg">
						</div>
						<div class="subcontent2">
							<a
								href="load?id=${pageScope.quocte3.id }">
								<img src="${pageScope.quocte2.url_daidien }" height="171" hspace="5"
								vspace="3" align="left" border="0">
							</a>
							<p class="title_ctt">
								<a
									href="load?id=${pageScope.quocte3.id }">${pageScope.quocte3.title }</a>
							</p>
							<p class="detail_ctt">${pageScope.quocte3.header }</p>
						</div>

						<div class="lines">
							<img src="Image/netdut.jpg">
						</div>
						<div class="subcontent2">
							<a href="load?id=${pageScope.quocte4.id }">
								<img src="${pageScope.quocte4.url_daidien }" height="164" hspace="5"
								vspace="3" align="left" border="0">
							</a>
							<p class="title_ctt">
								<a href="load?id=${pageScope.quocte4.id }">${pageScope.quocte4.title }</a>
							</p>
							<p class="detail_ctt">${pageScope.quocte4.header }</p>
						</div>

						<div class="lines">
							<img src="Image/netdut.jpg">
						</div>
						<div class="subcontent2">
							<a
								href="load?id=${pageScope.quocte5.id }">
								<img src="${pageScope.quocte5.url_daidien }" height="150" hspace="5" vspace="3"
								align="left" border="0">
							</a>
							<p class="title_ctt">
								<a
									href="load?id=${pageScope.quocte5.id }">${pageScope.quocte5.title }</a>
							</p>
							<p class="detail_ctt">${pageScope.quocte5.header }</p>
						</div>

						<div class="lines">
							<img src="Image/netdut.jpg">
						</div>
						<div class="subcontent2">
							<a href="load?id=${pageScope.quocte6.id }"> <img
								src="${pageScope.quocte6.url_daidien }" height="146" hspace="5" vspace="3"
								align="left" border="0">
							</a>
							<p class="title_ctt">
								<a href="load?id=${pageScope.quocte6.id }">${pageScope.quocte6.title }</a>
							</p>
							<p class="detail_ctt">${pageScope.quocte6.header }</p>
						</div>

						<div class="lines">
							<img src="Image/netdut.jpg">
						</div>
						<div class="subcontent2">
							<a
								href="load?id=${pageScope.quocte7.id }">
								<img src="${pageScope.quocte7.url_daidien }" height="146" hspace="5"
								vspace="3" align="left" border="0">
							</a>
							<p class="title_ctt">
								<a
									href="load?id=${pageScope.quocte7.id }">${pageScope.quocte7.title }</a>
							</p>
							<p class="detail_ctt">${pageScope.quocte7.header }</p>
						</div>

						<div class="lines">
							<img src="Image/netdut.jpg">
						</div>
						<div class="subcontent2">
							<a
								href="load?id=${pageScope.quocte8.id }">
								<img src="${pageScope.quocte8.url_daidien }" height="134" hspace="5" vspace="3"
								align="left" border="0">
							</a>
							<p class="title_ctt">
								<a
									href="load?id=${pageScope.quocte8.id }">${pageScope.quocte8.title }</a>
							</p>
							<p class="detail_ctt">${pageScope.quocte8.header }</p>
						</div>

						<div class="lines">
							<img src="Image/netdut.jpg">
						</div>
						<div class="subcontent2">
							<a href="load?id=${pageScope.quocte9.id }"><img
									src="${pageScope.quocte9.url_daidien }" height="144" hspace="5" vspace="3"
									align="left" border="0" /></a>
								<p class="title_ctt">
									<a href="load?id=${pageScope.quocte9.id }">${pageScope.quocte9.title }</a>
								</p>
								<p class="detail_ctt">${pageScope.quocte9.header }</p>
						</div>

						<div class="lines">
							<img src="Image/netdut.jpg">
						</div>
						<div class="subcontent2">
							<a href="load?id=${pageScope.quocte10.id }">
								<img src="${pageScope.quocte10.url_daidien }" height="147" hspace="5" vspace="3"
								align="left" border="0">
							</a>
							<p class="title_ctt">
								<a href="load?id=${pageScope.quocte10.id }">${pageScope.quocte10.title }</a>
							</p>
							<p class="detail_ctt">${pageScope.quocte10.header }</p>
						</div>

						<div class="lines">
							<img src="Image/netdut.jpg">
						</div>
						<div class="subcontent2">
							<a href="load?id=${pageScope.quocte11.id }">
								<img src="${pageScope.quocte11.url_daidien }" height="142" hspace="5"
								vspace="3" align="left" border="0">
							</a>
							<p class="title_ctt">
								<a href="load?id=${pageScope.quocte11.id }">${pageScope.quocte11.title }</a>
							</p>
							<p class="detail_ctt">${pageScope.quocte11.header }</p>
						</div>

						<div class="lines">
							<img src="Image/netdut.jpg">
						</div>
						<div class="subcontent2">
							<a
								href="load?id=${pageScope.quocte12.id }">
								<img src="${pageScope.quocte12.url_daidien }" width="287" height="160"
								hspace="5" vspace="3" align="left" border="0">
							</a>
							<p class="title_ctt">
								<a
									href="load?id=${pageScope.quocte12.id }">${pageScope.quocte12.title }</a>
							</p>
							<p class="detail_ctt">${pageScope.quocte12.header }</p>
						</div>

						<div class="lines">
							<img src="Image/netdut.jpg">
						</div>


						<div class="lines">
							<img src="../../../Styles/images/kengang_netdut_digi_03.jpg">
						</div>
						<div class="news_other">CÁC TIN KHÁC</div>
						<div class="title_news">

							<ul>

								<li><a
									href="/kiem-hang-ngan-usd-tu-viec-bat-loi-bao-mat-cho-google-105514">Motorola
										có bằng sáng chế hình xăm microphone </a></li>

								<li><a
									href="/giam-doc-windows-phone-khang-dinh-se-duoi-kip-doi-thu-105513">Microsoft
										sắp quay trở lại vị thế công ty dẫn đầu? </a></li>

								<li><a
									href="/google-maps-phai-go-bo-hinh-anh-thi-the-mot-cau-be-105493">Microsoft
										"tên gọi sân vận động hàng đầu thế giới" </a></li>

								<li><a
									href="/chuyen-gia-it-cua-nato-lanh-an-7-nam-tu-vi-trom-du-lieu-mat-105487">Canada
										ngăn cản Lenovo mua lại BlackBerry </a></li>

								<li><a
									href="/apple-thu-lai-iphone-ipad-bi-tham-nuoc-105477">600
										triệu USD sẽ được đầu tư cho công nghệ 5G </a></li>

								<li><a href="/ai-se-giet-chet-tien-ao-bitcoin-105455">Facebook
										sắp có biểu tượng Like mới </a></li>

								<li><a
									href="/anonymous-tan-cong-nhieu-co-quan-chinh-phu-my-105448">
										Internet làm thay đổi tính chất của chiến tranh </a></li>

								<li><a
									href="/chau-au-chinh-thuc-cho-dung-thiet-bi-dien-tu-tren-may-bay-105443">Cựu
										CEO Nokia có thể điều hành Microsoft </a></li>

								<li><a
									href="/apple-dong-cua-itunes-connect-tu-21-12-den-27-12-105442">Nỗi
										khổ của những người làm việc ở Google </a></li>

								<li><a
									href="/nhat-ban-ho-tro-asean-tang-cuong-an-ninh-mang-105436">iGoogle
										chính thức bị khai tử vào ngày 02/11 </a></li>

							</ul>


						</div>

					</div>

					<div class="page">
						<span>Trang: [<b>1</b>] [<a href="/tintuc/tin-quoc-te/2"
							title="Qua trang 2">2</a>] [<a href="/tintuc/tin-quoc-te/3"
							title="Qua trang 3">3</a>] [<a href="/tintuc/tin-quoc-te/731"
							title="Qua trang cuối">Cuối</a>] <br>Có tất cả 16803 bài
							viết
						</span>

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

