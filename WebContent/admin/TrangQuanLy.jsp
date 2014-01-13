<%@page import="dao.TopicDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entity.TopicEntity"%>
<%@page import="dao.LienHeDAO"%>
<%@page import="entity.LienHeEntity"%>
<%@page import="dao.StatusDAO"%>
<%@page import="dao.RoleDAO"%>
<%@page import="java.util.Date"%>
<%@page import="handle.Validation"%>
<%@page import="dao.UserDAO"%>
<%@page import="java.util.List"%>
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
<title>Trang Quản Lý</title>
<script>
function xoalh() {
 	return confirm("Bạn có thật sự muốn xóa liên hệ này không?")

  
}
</script>
			
<jsp:include page="/template/Facebook.jsp"></jsp:include>

<link rel="stylesheet" type="text/css" href="CSS/styleMenu.css" />
<link rel="stylesheet" type="text/css" href="CSS/styleLayout.css" />
<link href="SpryAssets/SpryTabbedPanels.css" rel="stylesheet" type="text/css">
<style type="text/css">
.TabbedPanelsContent table tr td a {
	text-decoration: none;
	font-weight: bold;
}
.TabbedPanelsContent table tr td form table {
	float: none;
}
.TabbedPanelsContent table {
	float: right;
}
.TabbedPanelsContent table tr td form table {
	float: right;
}
</style>
<script src="SpryAssets/SpryTabbedPanels.js" type="text/javascript"></script>
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
				<div id="TabbedPanels1" class="TabbedPanels">
					<ul class="TabbedPanelsTabGroup">
						<li class="TabbedPanelsTab" tabindex="0">Quản lý thành viên</li>
						<li class="TabbedPanelsTab" tabindex="0">Quản lý liên hệ</li>
						<li class="TabbedPanelsTab" tabindex="0">Quản lý bài viết</li>
					</ul>
					<div class="TabbedPanelsContentGroup">
						<div class="TabbedPanelsContent">
						  <table width="950">
						    <tr>
						      <td align="right"><a href="themthanhvien.jsp" target="_blank">Thêm thành viên</a></td>
					        </tr>
					      </table>
<table width="950" border="1" cellpadding="5">
				<tr><%
					pageContext.setAttribute("bg", "#007F7F");
					%>
									<td width="111" align="center" bgcolor="${pageScope.bg }"><strong>Tên tài khoản</strong></td>
									<td width="119" align="center" bgcolor="${pageScope.bg }"><strong>Họ tên</strong></td>
									<td width="118" align="center" bgcolor="${pageScope.bg }"><strong>Email</strong></td>
									<td width="103" align="center" bgcolor="${pageScope.bg }"><strong>Ngày đăng ký</strong></td>
									<td width="88" align="center" bgcolor="${pageScope.bg }"><strong>Chức vụ</strong></td>
									<td width="69" align="center" bgcolor="${pageScope.bg }"><strong>Trạng thái</strong></td>
									<td width="68" align="center" bgcolor="${pageScope.bg }"><strong>Số bài đã đăng</strong></td>
									<td width="106" align="center" bgcolor="${pageScope.bg }"><strong>Tác vụ</strong></td>
			  </tr>
								<%
									int c = 0;
									List<UserEntity> users = UserDAO.loadAllUser();
									for (UserEntity u : users)  {
										c++;
										pageContext.setAttribute("user", u);
										
										Date dateRegister = u.getDateReg();
										String dateSt = Validation.rightDate(dateRegister);
										pageContext.setAttribute("date", dateSt);
										
										String role = RoleDAO.getRoleName(u.getUserId());
										pageContext.setAttribute("role", role);
										
										String status = StatusDAO.getStatusName(u.getUserId());
										pageContext.setAttribute("status", status);
										
										int count = UserDAO.countTopics(u.getUseName());
										pageContext.setAttribute("count", count);
										if ((c % 2) == 0) pageContext.setAttribute("color", "#C9FFFF");
										else pageContext.setAttribute("color", "#D4D4DB");
								%>
								<tr>
									<td align="center" bgcolor="${pageScope.color }">${pageScope.user.username }</td>
									<td align="center" bgcolor="${pageScope.color }">${pageScope.user.fullName }</td>
									<td align="center" bgcolor="${pageScope.color }">${pageScope.user.email }</td>
									<td align="center" bgcolor="${pageScope.color }">${pageScope.date }</td>
									<td align="center" bgcolor="${pageScope.color }">${pageScope.role }</td>
									<td align="center" bgcolor="${pageScope.color }">${pageScope.status }</td>
									<td align="center" bgcolor="${pageScope.color }">${pageScope.count }</td>
									<td align="center" bgcolor="${pageScope.color }"><a href="suathanhvien?username=${pageScope.user.username }" target="_blank">Sửa </a>&nbsp;<a href="xoathanhvien.jsp?uname=${pageScope.user.username }" target="_blank">Xoá</a></td>
								</tr>
								<%} %>
						  </table>
					  </div>
						<div class="TabbedPanelsContent">
							<table width="950" border="0">
								<tr>
									<td align="right"></td>
								</tr>
							</table>
							<table width="950">
							  <tr>
							    <td width="882" align="left"><form name="form2" method="get" action="lienhe">
							      <table width="233">
							        <tr>
							          <td width="225" height="27"><label>
							            <input type="radio" name="process_lh" value="readall" id="process_lh_0">
							            Đánh dấu tất cả đã đọc</label></td>
						            </tr>
							        <tr>
							          <td><label>
							            <input type="radio" name="process_lh" value="deleteall" id="process_lh_1">
							            Xoá tất cả
							          </label></td>
						            </tr>
						          </table>
							    </td>
							    <td width="56" align="left">
							      <input type="submit" name="button5" id="button5" value="Thực hiện">
						        </form></td>
						      </tr>
						  </table>
<table width="950" border="1" cellpadding="5">
				<tr>
									<td width="144" align="center" bgcolor="${pageScope.bg }"><strong>Họ tên</strong></td>
									<td width="144" align="center" bgcolor="${pageScope.bg }"><strong>Email</strong></td>
									<td width="240" align="center" bgcolor="${pageScope.bg }"><strong>Nội dung</strong></td>
									<td width="119" align="center" bgcolor="${pageScope.bg }"><strong>Ngày gửi</strong></td>
									<td width="53" align="center" bgcolor="${pageScope.bg }"><strong>Đã đọc</strong></td>
									<td width="100" align="center" bgcolor="${pageScope.bg }"><strong>Tác vụ</strong></td>
			  </tr>
									<%
									int c2 = 0;
									List<LienHeEntity> contacts = LienHeDAO.loadLienHe();
									for (LienHeEntity lh : contacts) {
										c2++;
										pageContext.setAttribute("l", lh);
										pageContext.setAttribute("cut", Validation.cut(lh.getContent()));
										pageContext.setAttribute("date", Validation.rightDate(lh.getDate()));
										if (lh.isRead()) pageContext.setAttribute("read", "CHECKED");
										if ((c2 % 2) == 0) pageContext.setAttribute("color2", "#C9FFFF");
										else pageContext.setAttribute("color2", "#D4D4DB");
									%>
								<tr>
									<td align="center" bgcolor="${pageScope.color2 }">${pageScope.l.fullName }</td>
									<td align="center" bgcolor="${pageScope.color2 }">${pageScope.l.email }</td>
									<td align="center" bgcolor="${pageScope.color2 }">${pageScope.cut }</td>
									<td align="center" bgcolor="${pageScope.color2 }">${pageScope.date}</td>
									<td align="center" bgcolor="${pageScope.color2}">
											<input type="checkbox" name="checkbox4" id="checkbox4" ${pageScope.read } disabled="disabled"> <label for="checkbox4"></label>

								  </td>
									<td align="center" bgcolor="${pageScope.color2 }">&nbsp;<a href="doclienhe?id=${pageScope.l.id } " target="_blank">Đọc</a>&nbsp;&nbsp;&nbsp;<a href="xoalienhe?id=${pageScope.l.id }">Xoá</a></td>
								</tr>
								<%} %>
						  </table>
							<table width="950">
								<tr>
									<td align="right"></td>
								</tr>
							</table>
							<br>
						</div>
						<div class="TabbedPanelsContent">
						  <table width="950" border="1">
						    <tr>
						      <td align="right"><form name="form1" method="post" action="">
						        <label for="select"></label>
						        Sắp xếp theo
						        <select name="select" id="select">
						          <option value="waiting">Watting</option>
						          <option value="posted">Posted</option>
						          <option value="banned">Banned</option>
                                </select>&nbsp;&nbsp;&nbsp;&nbsp;
					            <input type="submit" name="button4" id="button4" value="Sắp xếp">
					            &nbsp;&nbsp;&nbsp;&nbsp;
						        </form></td>
					        </tr>
					      </table>
<table width="950" border="1" cellpadding="5">
				<tr>
				  <td width="30" align="center" bgcolor="${pageScope.bg }"><strong>STT</strong></td>
									<td width="230" align="center" bgcolor="${pageScope.bg }"><strong>Tiêu đề bài viết</strong></td>
									<td width="177" align="center" bgcolor="${pageScope.bg }"><strong>Tác giả</strong></td>
									<td width="131" align="center" bgcolor="${pageScope.bg }"><strong>Ngày đăng</strong></td>
									<td width="54" align="center" bgcolor="${pageScope.bg }"><strong>Tiêu điểm</strong></td>
									<td width="68" align="center" bgcolor="${pageScope.bg }"><strong>Trạng thái</strong></td>
									<td width="158" align="center" bgcolor="${pageScope.bg }"><strong>Tác vụ</strong></td>
								</tr>
								<%
									List<TopicEntity> topics = new ArrayList<TopicEntity>();
									int stt = 0;
									String condition = (String) request.getAttribute("condition");
									if (condition == null) topics = TopicDAO.loadAllWaiting();
									else {
										if (condition.equals("waiting")) topics = TopicDAO.loadAllWaiting();
										else if (condition.equals("posted")) topics = TopicDAO.loadAllPosted();
										else if (condition.equals("banned")) topics = TopicDAO.loadAllBanned();
									}
									int c3 = 0;
									for (TopicEntity topic : topics) {
										++stt;
										c3++;
										pageContext.setAttribute("stt", stt);
										pageContext.setAttribute("topic", topic);
										Date datePost = topic.getDateCreated();
										String rightDate = Validation.rightDate(datePost);
										pageContext.setAttribute("datePost", rightDate);
										boolean focus = topic.isFocus();
										if (focus) pageContext.setAttribute("focus", "CHECKED");
										else pageContext.setAttribute("focus", "");
										if ((c3 % 2) == 0) pageContext.setAttribute("color3", "#C9FFFF");
										else pageContext.setAttribute("color3", "#D4D4DB");
								%>
							<form>
								<tr>
								  <td align="center" bgcolor="${pageScope.color3 }">${pageScope.stt }</td>
									<td align="center" bgcolor="${pageScope.color3 }"><a href="load?id=${pageScope.topic.id }" title="${pageScope.topic.title }"><%=Validation.cut(topic.getTitle()) %></a></td>
									<td align="center" bgcolor="${pageScope.color3 }">${pageScope.topic.author }</td>
									<td align="center" bgcolor="${pageScope.color3 }">${pageScope.datePost}</td>
									<td align="center" bgcolor="${pageScope.color3 }"><input type="checkbox" name="checkbox" id="checkbox" disabled="disabled" ${pageScope.focus }>
								    <label for="checkbox"></label></td>
									<td align="center" bgcolor="${pageScope.color3 }"><label for="select2"></label>
									  <select name="select2" id="select2">
									    <option value="waiting">Waiting</option>
									    <option value="waiting">Posted</option>
									    <option value="banned">Banned</option>
						            </select></td>
									<td align="center" bgcolor="${pageScope.color3 }"><a href="suabaiviet.jsp">Sửa </a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">Xoá</a>&nbsp;&nbsp;&nbsp;&nbsp;
								    <input type="submit" name="button3" id="button3" value="Lưu">									  &nbsp;&nbsp;&nbsp;&nbsp;</td>
								</tr>
                                </form>
                                <%} %>
							</table>
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
	<script type="text/javascript">
		var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
	</script>
</body>
</html>

