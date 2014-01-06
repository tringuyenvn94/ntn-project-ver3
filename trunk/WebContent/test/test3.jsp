<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${param.title }</title>

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
					<a href="trangchu.jsp"><img src="${param.logo }" width="185" height="107" /></a>
				</div>
				<div class="login"></div>
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
						<a href="${param.link_quang_cao }" target="_blank"><img src="${param.hinh_quang_cao }" width="999" height="80" border="0"> </a>
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

					<div class="content_left">

						<div class="topnew">

							<div class="title_topnew">
								<a href="${param.link_top_new }"><span>${param.title_top_new } </span></a>
							</div>
							<div>
								<table border="0" cellpadding="0" cellspacing="0" width="100%">
									<tbody>
										<tr>
											<td class="img_top"><a href="${param.link_top_new }"><img src="${param.image_top_new }" height="250" align="left" border="0" hspace="3" vspace="3"></a></td>
											<td class="ctt_top" valign="top">${param.short_content }.&nbsp;</td>
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
													<a href="${param.link_boxsub_1 }"> <img src="${param.image_boxsub_1 }" border="0">
													</a>
												</div>
												<div class="title_boxsub">
													<a href="${param.link_boxsub_1 }"> ${param.content_boxsub_1 }</a>
												</div>
										</span></td>

										<td><span>
												<div class="boxsub">
													<a href="${param.link_boxsub_2 }"> <img src="${param.image_boxsub_2 }" border="0">
													</a>
												</div>
												<div class="title_boxsub">
													<a href="${param.link_boxsub_2 }"> ${param.content_boxsub_2 }</a>
												</div>
										</span></td>

										<td><span>
												<div class="boxsub">
													<a href="${param.link_boxsub_3 }"> <img src="${param.image_boxsub_3 }" border="0">
													</a>
												</div>
												<div class="title_boxsub">
													<a href="${param.link_boxsub_3 }"> ${param.content_boxsub_3 }</a>
												</div>
										</span></td>

									</tr>
								</tbody>
							</table>

						</div>


						<div class="wbox cat">
							<div class="tit">

								<a href="tintuccongnghe.jsp" title="Chuyên mục 'Tin tức'">Tin tức</a>

							</div>
							<div class="ctm">

								<div class="title_article">
									<a href="${param.link_tintuc_1 }">${param.title_tintuc_1 }</a>
								</div>
								<div>
									<table border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<td class="image" valign="top"><a href="${param.link_tintuc_1 }"><img src="${param.image_tintuc_1 }" align="left" border="0" hspace="3" vspace="3"></a> ${param.content_tintuc_1 }</td>

											</tr>
										</tbody>
									</table>
								</div>
								<div class="tin_lienquan">

									<ul>

										<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_tintuc_2 }">${param.title_tintuc_2 } </a></li>

										<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_tintuc_3 }">${param.title_tintuc_3 } </a></li>

									</ul>


								</div>

							</div>

						</div>


						<div class="wbox cat">
							<div class="tit">
								<a href="baomat.jsp" title="Chuyên mục 'Bảo mật'">Bảo mật</a>

							</div>
							<div class="ctm">

								<div class="title_article">
									<a href="${param.link_baomat_1 }">${param.title_baomat_1 }</a>
								</div>
								<div>
									<table border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<td class="image" valign="top"><a href="${param.link_baomat_1 }"><img src="${param.image_baomat_1 }" align="left" border="0" hspace="3" vspace="3"></a> ${param.content_baomat_1 }.</td>

											</tr>
										</tbody>
									</table>
								</div>
								<div class="tin_lienquan">

									<ul>

										<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_baomat_2 }">${param.title_baomat_2 } </a></li>

										<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_baomat_3 }">${param.title_baomat_3 } </a></li>

									</ul>


								</div>

							</div>

						</div>

						<div class="wbox cat">
							<div class="tit">

								<a href="phancung.jsp" title="Chuyên mục 'Phần cứng'">Phần cứng</a>

							</div>
							<div class="ctm">

								<div class="title_article">
									<a href="${param.link_phancung_1 }">${param.title_phancung_1 }</a>
								</div>
								<div>
									<table border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<td class="image" valign="top"><a href="${param.link_phancung_1 }"><img src="${param.image_phancung_1 }" align="left" border="0" hspace="3" vspace="3"></a>${param.content_phancung_1 }.</td>

											</tr>
										</tbody>
									</table>
								</div>
								<div class="tin_lienquan">

									<ul>

										<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_phancung_2 }">${param.title_phancung_2 } </a></li>

										<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_phancung_3 }">${param.title_phancung_3 } </a></li>

									</ul>


								</div>

							</div>

						</div>

						<div class="wbox cat">
							<div class="tit">

								<a href="phanmem.jsp" title="Chuyên mục 'Phần mềm'">Phần mềm</a>

							</div>
							<div class="ctm">

								<div class="title_article">
									<a href="${param.link_phanmem_1 }">${param.title_phanmem_1 }</a>
								</div>
								<div>
									<table border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<td class="image" valign="top"><a href="${param.link_phanmem_1 }"><img src="${param.image_phanmem_1 }" align="left" border="0" hspace="3" vspace="3"></a> ${param.content_phanmem_1 }.</td>

											</tr>
										</tbody>
									</table>
								</div>
								<div class="tin_lienquan">

									<ul>

										<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_phanmem_2 }">${param.title_phanmem_2 } </a></li>

										<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_phanmem_3 }">${param.title_phanmem_3 } </a></li>

									</ul>


								</div>

							</div>

						</div>


						<div class="wbox cat">
							<div class="tit">

								<a href="hedieuhanh.jsp" title="Chuyên mục 'Hệ điều hành'">Hệ điều hành</a>

							</div>
							<div class="ctm">

								<div class="title_article">
									<a href="${param.link_hedieuhanh_1 }">{param.title_hedieuhanh_1 }</a>
								</div>
								<div>
									<table border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<td class="image" valign="top"><a href="${param.link_hedieuhanh_1 }"><img src="${param.image_hedieuhanh_1 }" align="left" border="0" hspace="3" vspace="3"></a> ${param.content_hedieuhanh_1 }.</td>

											</tr>
										</tbody>
									</table>
								</div>
								<div class="tin_lienquan">

									<ul>

										<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_hedieuhanh_2 }">${param.title_hedieuhanh_2 } </a></li>

										<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_hedieuhanh_3 }">${param.title_hedieuhanh_3 } </a></li>

									</ul>


								</div>

							</div>

						</div>


						<div class="wbox cat">
							<div class="tit">

								<a href="thietbiso.jsp" title="Chuyên mục 'Thiết bị số'">Thiết bị số</a>

							</div>
							<div class="ctm">

								<div class="title_article">
									<a href="${param.link_thietbiso_1 }">${param.title_thietbiso_1 }</a>
								</div>
								<div>
									<table border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<td class="image" valign="top"><a href="${param.link_thietbiso_1 }"><img src="${image.link_thietbiso_1 }" align="left" border="0" hspace="3" vspace="3"></a> ${param.content_thietbiso_1 }.</td>

											</tr>
										</tbody>
									</table>
								</div>
								<div class="tin_lienquan">

									<ul>

										<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_thietbiso_2 }">${param.title_thietbiso_2 } </a></li>

										<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_thietbiso_3 }">${param.title_thietbiso_3 } </a></li>

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
									<a href="${param.link_game_1 }">${param.title_game_1 } </a>
								</div>
								<div>
									<table border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<td class="image" valign="top"><a href="${param.link_game_1 }"><img src="${param.image_game_1 }" align="left" border="0" hspace="3" vspace="3"></a> ${param.content_game_1 }.</td>

											</tr>
										</tbody>
									</table>
								</div>
								<div class="tin_lienquan">

									<ul>

										<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_game_2 }">${param.title_game_2 } </a></li>

										<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_game_3 }">${param.title_game_3 } </a></li>

									</ul>


								</div>

							</div>

						</div>


						<div class="wbox cat">
							<div class="tit">

								<a href="thuthuattientich.jsp" title="Chuyên mục 'Thủ thuật-Tiện ích'">Thủ thuật-Tiện ích</a>
							</div>
							<div class="ctm">

								<div class="title_article">
									<a href="${param.link_thuthuattienich_1 }">${param.title_thuthuattienich_1 } </a>
								</div>
								<div>
									<table border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<td class="image" valign="top"><a href="${param.link_thuthuattienich_1 }"><img src="${param.image_thuthuattienich_1 }" height="170" align="left" border="0" hspace="3" vspace="3"></a> ${param.image_thuthuattienich_1 }.</td>

											</tr>
										</tbody>
									</table>
								</div>
								<div class="tin_lienquan">

									<ul>

										<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_thuthuattienich_2 }">${param.title_thuthuattienich_2 } </a></li>

										<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_thuthuattienich_3 }">${param.title_thuthuattienich_3 } </a></li>

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
									<a href="${param.link_hoidap_1 }">${param.title_hoidap_1 }</a>
								</div>
								<div>
									<table border="0" cellpadding="0" cellspacing="0">
										<tbody>
											<tr>
												<td class="image" valign="top"><a href="${param.link_hoidap_1 }"><img src="${param.image_hoidap_1 }" align="left" border="0" hspace="3" vspace="3"></a> ${param.content_hoidap_1 }.</td>

											</tr>
										</tbody>
									</table>
								</div>
								<div class="tin_lienquan">

									<ul>

										<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_hoidap_2 }"> ${param.title_hoidap_2 } </a></li>

										<li><img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_hoidap_3 }">${param.title_hoidap_3 } </a></li>

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


					<div class="content_right">

						<div class="news">
							<div class="tit">

								<a href="tinmoinhat.jsp"> Tin mới nhất </a>

							</div>
							<div class="ctm">

								<div class="title_new">

									<div>
										<img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_tinmoinhat_1 }">${param.title_tinmoinhat_1 }</a>
									</div>


									<div>
										<img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_tinmoinhat_2 }">${param.title_tinmoinhat_2 }</a>
									</div>


									<div>
										<img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_tinmoinhat_3 }">${param.title_tinmoinhat_3 }</a>
									</div>


									<div>
										<img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_tinmoinhat_4 }">${param.title_tinmoinhat_4 } </a>
									</div>


									<div>
										<img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_tinmoinhat_5 }">${param.title_tinmoinhat_5 }</a>
									</div>


									<div>
										<img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_tinmoinhat_6 }">${param.title_tinmoinhat_6 } </a>
									</div>


									<div>
										<img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_tinmoinhat_7 }">${param.title_tinmoinhat_7 } </a>
									</div>


									<div>
										<img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="${param.link_tinmoinhat_8 }">${param.title_tinmoinhat_8 }</a>
									</div>


									<span id="xemtin"><a href="${param.xemcactinkhac }"><strong>Xem các tin khác </strong></a></span>


								</div>

							</div>
							<div class="space"></div>

						</div>

						<div class="headlines">
							<div class="tit">

								<a> Tiêu điểm </a>

							</div>
							<div class="ctm">

								<div class="box1">
									<div class="img_tieudiem">
										<a href="${param.link_tieudiem_1 }"><img src="${param.image_tieudiem_1 }" width="142" height="174" hspace="3" vspace="3" align="left" border="0"></a>

									</div>
									<div class="title_tieudiem">
										<a href="${param.link_tieudiem_1 }"> ${param.title_tieudiem_1 } </a>
									</div>
								</div>


								<div class="box1">
									<div class="img_tieudiem">
										<a href="${param.link_tieudiem_2 }"><img src="${param.image_tieudiem_2 }" width="142" height="169" hspace="3" vspace="3" align="left" border="0"></a>

									</div>
									<div class="title_tieudiem">
										<a href="${param.link_tieudiem_2 }"> ${param.title_tieudiem_2 } </a>
									</div>
								</div>

								<div class="box1">
									<div class="img_tieudiem">
										<a href="${param.link_tieudiem_3 }"><img src="${param.image_tieudiem_3 } width="142" height="154" hspace="3" vspace="3" align="left" border="0"></a>

									</div>
									<div class="title_tieudiem">
										<a href="${param.link_tieudiem_3 }"> ${param.title_tieudiem_3 } </a>
									</div>
								</div>

								<div class="box1">
									<div class="img_tieudiem">
										<a href="${param.link_tieudiem_4 }"><img src="${param.image_tieudiem_4 }" width="142" height="172" hspace="3" vspace="3" align="left" border="0"></a>

									</div>
									<div class="title_tieudiem">
										<a href="${param.link_tieudiem_4 }"> ${param.title_tieudiem_4 } </a>
									</div>
								</div>

								<div class="box1">
									<div class="img_tieudiem">
										<a href="${param.link_tieudiem_5 }"><img src="${param.image_tieudiem_5 }" width="142" height="163" hspace="3" vspace="3" align="left" border="0"></a>

									</div>
									<div class="title_tieudiem">
										<a href="${param.link_tieudiem_5 }"> ${param.title_tieudiem_5 } </a>
									</div>
								</div>

								<div class="box1">
									<div class="img_tieudiem">
										<a href="${param.link_tieudiem_6 }"><img src="${param.image_tieudiem_6 }" width="142" height="154" hspace="3" vspace="3" align="left" border="0"></a>
									</div>
									<div class="title_tieudiem">
										<a href="${param.link_tieudiem_6 }"> ${param.title_tieudiem_6 } </a>
									</div>
								</div>

								<div class="box1">
									<div class="img_tieudiem">
										<a href="${param.link_tieudiem_7 }"><img src="${param.image_tieudiem_7 }" width="142" hspace="3" vspace="3" align="left" border="0"></a>

									</div>
									<div class="title_tieudiem">
										<a href="${param.link_tieudiem_7 }"> ${param.title_tieudiem_7} </a>
									</div>
								</div>

								<div class="box1">
									<div class="img_tieudiem">
										<a href="${param.link_tieudiem_8 }"><img src="${param.image_tieudiem_8 }" width="142" hspace="3" vspace="3" align="left" border="0"></a>

									</div>
									<div class="title_tieudiem">
										<a href="${param.link_tieudiem_8 }"> ${param.title_tieudiem_8 } </a>
									</div>
								</div>

								<div class="box1">
									<div class="img_tieudiem">
										<a href="${param.link_tieudiem_9 }"><img src="${param.image_tieudiem_9 }" width="142" height="145" hspace="3" vspace="3" align="left" border="0"></a>

									</div>
									<div class="title_tieudiem">
										<a href="${param.link_tieudiem_9 }"> ${param.title_tieudiem_9 } </a>
									</div>
								</div>

								<div class="box1">
									<div class="img_tieudiem">
										<a href="${param.link_tieudiem_10 }"><img src="${param.image_tieudiem_10 }" width="142" hspace="3" vspace="3" align="left" border="0"></a>

									</div>
									<div class="title_tieudiem">
										<a href="${param.link_tieudiem_10 }"> ${param.title_tieudiem_10 } </a>
									</div>
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
							<a href="trangchu.jsp"><img src="${param.logo_footer }" width="60" height="51" /></a>
						</div>
						Copyright © 2013 IT - Chuyên trang, thông tin công nghệ, thủ thuật , tiện ích.<br> Ghi rõ nguồn " it.com.vn" khi phát hành lại thông tin từ website này.
					</div>
				</div>
			</div>

			<div id="ads_left" style="position: fixed; top: 5px; height: 630px; width: 160px; margin-left: -165px;">
				<div style="position: absolute">
					<a href="${param.link_quang_cao_trai }" target="_blank"> <img src="${param.hinh_quang_cao_trai }" width="160" height="630" border="0"></a>
				</div>
			</div>

			<div id="ads_right" style="position: fixed; top: 5px; height: 630px; width: 160px; margin-left: 1005px;">
				<div style="position: absolute">
					<a href="${param.link_quang_cao_phai }" target="_blank"> <img src="${param.hinh_quang_cao_phai }" width="160" height="630" border="0"></a>
				</div>

			</div>

		</div>
	</div>

</body>
</html>

