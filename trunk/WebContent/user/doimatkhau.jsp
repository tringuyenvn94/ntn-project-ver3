
<%@page import="entity.UserEntity"%>
<%
	request.setCharacterEncoding("utf8");
	response.setCharacterEncoding("utf8");
	UserEntity user = (UserEntity) session.getAttribute("user");
	if (user == null) {
%>
<jsp:forward page="/dangnhap.jsp"></jsp:forward>
<%} %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đổi mật khẩu</title>
<jsp:include page="/template/Facebook.jsp"></jsp:include>

<link rel="stylesheet" type="text/css" href="CSS/styleMenu.css" />
<link rel="stylesheet" type="text/css" href="CSS/styleLayout.css" />
<style type="text/css">
#dmk {
	font-size: 18px;
	font-style: italic;
	font-weight: bold;
}
</style>
</head>

<body>

	<div class="container">

		<div class="header">
			<div class="headermain">
				<div id="menu_top">
					<a href="trangchu.jsp">Trang chủ&nbsp;</a> | &nbsp; <a href="tintuccongnghe.jsp">Tin tức&nbsp;</a> |&nbsp; <a href="gioithieu.jsp">Giới thiệu&nbsp;</a> |&nbsp; <a href="game.jsp">Game &nbsp;</a> |&nbsp; <a href="lienhe.jsp">Liên hệ&nbsp;</a> |&nbsp; 
<div class="fb-like" data-href="https://www.facebook.com/ntncoporation" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></div>				</div>
				<div class="logo">
					<a href="trangchu.jsp"><img src="Image/Logo.png" width="185" height="107" /></a>
				</div>

				<div id="tv">
				<%
					String username = user.getUseName(); 
				
				%>
					Xin chào, <%=username %> <a href="trangcanhan.jsp">Trang Cá Nhân</a>&nbsp;&nbsp; | &nbsp; <a href="dangxuat?user=user>">Đăng Xuất &nbsp;</a>&nbsp;

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
						<div id="dmk">
						  <p>Đổi mật khẩu

							
						  </p>
						  <p>&nbsp;</p>
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

