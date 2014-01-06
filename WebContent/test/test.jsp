<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="/test/test3.jsp"></jsp:include>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="CSS/styleMenu.css" />
<link rel="stylesheet" type="text/css" href="CSS/styleLayout.css" />

</head>

<body>

	<div class="container">

		<div class="header">


			<div class="content">


				<div id="content_main">

					
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

