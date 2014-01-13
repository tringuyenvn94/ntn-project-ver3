<%@page import="java.util.List"%>
<%@page import="entity.UserEntity"%>
<%@page import="dao.TopicDAO"%>
<%@page import="java.util.Date"%>
<%@page import="entity.TopicEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	request.setCharacterEncoding("utf8");
	response.setCharacterEncoding("utf8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<%
		//TODO START
		String id = (String) request.getAttribute("id");
		TopicEntity topic = TopicDAO.load(id);
		pageContext.setAttribute("topic", topic);
		
		String subMenu = TopicDAO.loadSubMenu(id);
		String mainMenu = TopicDAO.loadMainMenu(id);
		
		String linkSubMenu = TopicDAO.loadLinkSub(subMenu);
		String linkMainMenu = TopicDAO.loadLinkMain(mainMenu);
		
		if (mainMenu.equals("Trang Chủ")) pageContext.setAttribute("menu1", "menu");
		if (mainMenu.equals("Tin Tức Công Nghệ")) pageContext.setAttribute("menu2", "menu");
		if (mainMenu.equals("Bảo Mật")) pageContext.setAttribute("menu3", "menu");
		if (mainMenu.equals("Phần Cứng")) pageContext.setAttribute("menu4", "menu");
		if (mainMenu.equals("Phần Mềm")) pageContext.setAttribute("menu5", "menu");
		if (mainMenu.equals("Hệ Điều Hành")) pageContext.setAttribute("menu6", "menu");
		if (mainMenu.equals("Thiết Bị Số")) pageContext.setAttribute("menu7", "menu");
		if (mainMenu.equals("Game")) pageContext.setAttribute("menu8", "menu");
		if (mainMenu.equals("Thủ Thuật - Tiện Ích")) pageContext.setAttribute("menu9", "menu");
		if (mainMenu.equals("Hỏi - Đáp")) pageContext.setAttribute("menu10", "menu");
		
	%>

<title>${pageScope.topic.title }</title>

<link rel="stylesheet" type="text/css" href="CSS/styleMenu.css"/>
<link rel="stylesheet" type="text/css" href="CSS/styleLayout.css"/>

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
				<%
					UserEntity user = (UserEntity) session.getAttribute("user");
					if (user == null) {
				%>
				<div id="memberbox"><a href="dangnhap.jsp">Đăng nhập</a> | <a href="quenmatkhau.jsp">Quên mật khẩu?</a> | <a href="dangky.jsp">Đăng ký</a></div>
				<%
					} else {
						String username = user.getUseName();
						
				%>
				<div id="tv">
					Xin chào,<%=username %> |<a href="trangcanhan.jsp">Trang cá nhân </a>|<a href="dangxuat?user=user">Đăng Xuất </a>

				</div>
				<%
					}
				%>
			</div>
			</div>
		
        <div id="menumain">

				<ul id="topmenu">
					<li class="item ${pageScope.menu1 }"><a href="trangchu.jsp"><span>Trang chủ</span> </a>
						<ul class="submenu_1"></ul></li>

					<li id="item_2" class="item ${pageScope.menu2 }"><a href="tintuccongnghe.jsp"><span> Tin tức công nghệ </span></a>

						<ul class="submenu_2">

							<li><a href="tintrongnuoc.jsp"> Trong nước</a></li>

							<li><a href="tinquocte.jsp"> Quốc tế</a></li>

							<li><a href="tinkhac.jsp"> Tin khác</a></li>

						</ul></li>



					<li id="item_3" class="item ${pageScope.menu3 }"><a href="baomat.jsp"><span> Bảo mật </span></a>

						<ul class="submenu_3">

							<li><a href="tinbaomat.jsp"> Tin bảo mật</a></li>

							<li><a href="giaiphapbaomat.jsp"> Giải pháp bảo mật</a></li>

							<li><a href="virus.jsp"> Virus</a></li>

							<li><a href="hacker.jsp"> Hacker</a></li>

						</ul></li>

					<li id="item_4" class="item ${pageScope.menu4 }"><a href="phancung.jsp"><span> Phần cứng </span></a>

						<ul class="submenu_4">

							<li><a href="desktop.jsp"> Desktop</a></li>

							<li><a href="laptop.jsp"> Laptop</a></li>

							<li><a href="thietbilinhkien.jsp"> Thiết bị - Linh kiện</a></li>

							<li><a href="tuvan.jsp"> Tư vấn</a></li>

						</ul></li>

					<li id="item_5" class="item ${pageScope.menu5 }"><a href="phanmem.jsp"><span> Phần mềm </span></a>

						<ul class="submenu_5">

							<li><a href="tinphanmem.jsp"> Tin tức</a></li>

							<li><a href="danhgia.jsp"> Đánh giá</a></li>

							<li><a href="mienphigiamgia.jsp"> Miễn phí - Giảm giá</a></li>

						</ul></li>

					<li id="item_6" class="item ${pageScope.menu6 }"><a href="hedieuhanh.jsp"><span> Hệ điều hành </span></a>

						<ul class="submenu_6">

							<li><a href="windows.jsp"> Windows</a></li>

							<li><a href="unix-linux.jsp"> Unix-Linux</a></li>

							<li><a href="mac.jsp"> Mac</a></li>

						</ul></li>

					<li id="item_7" class="item ${pageScope.menu7 }"><a href="thietbiso.jsp"><span> Thiết bị số </span></a>
						<ul class="submenu_7">

							<li><a href="mayanh.jsp"> Máy ảnh</a></li>

							<li><a href="mayquay.jsp"> Máy quay</a></li>

							<li><a href="didong.jsp"> Di động</a></li>
							<li><a href="maynghenhac.jsp"> Máy nghe nhạc</a></li>

							<li><a href="thietbigame.jsp"> Thiết bị game</a></li>

							<li><a href="thietbikhac.jsp"> Thiết bị khác</a></li>

							<li><a href="phukien.jsp"> Phụ kiện</a></li>

						</ul></li>
					<li id="item_8" class="item ${pageScope.menu8 }"><a href="game.jsp"><span> Game </span></a>
						<ul class="submenu_8"></ul></li>

					<li id="item_9" class="item ${pageScope.menu9 }"><a href="thuthuattientich.jsp"><span> Thủ thuật-Tiện ích </span></a>
						<ul class="submenu_9"></ul></li>

					<li id="item_10" class="item ${pageScope.menu10 }"><a href="hoidap.jsp"><span> Hỏi-đáp </span></a>
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
	<div class="tit">
	
		
				<a href="trangchu.jsp"><img src="Image/icon_home.jpg" width="18" height="22" align="middle" border="0"></a> »&nbsp;<a href="<%=linkMainMenu %>"><%=mainMenu %></a>&nbsp;»&nbsp;<a href="<%=linkSubMenu%>"><%=subMenu %></a>
			
	</div>
	<div class="ctm">

		
				<h1 class="title_article">${pageScope.topic.title }</h1>
				<div class="infoUpdate">
					<table border="0" cellpadding="0" cellspacing="0" width="676">
						<tbody><tr>
							<td width="415">
								Cập nhật lúc ${pageScope.topic.dateCreated }
								 
							 </td>
							 
								
								 
						</tr>
					</tbody></table>
				</div>
				<div class="infoDetail">
				
					<table border="0" cellpadding="0" cellspacing="0" width="100%">
						<tbody>
							<tr>
								<td>
									<div id="baiviet">${pageScope.topic.content }
									
										<p style="text-align: right;"><em><strong>Theo ${pageScope.topic.url }</strong></em></p>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					
				</div>
				
			
	</div>
	<div class="space">	
	</div>
</div>


		<div class="sameType">
            <div class="article_detail">
          
    <div class="title_art">
    <div class="fb-like" data-href="https://www.facebook.com/ntncoporation" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>
    <br>
    <div class="fb-comments" data-href="http://localhost:8080/Project/load?id=${requestScope.id }" data-numposts="5" data-colorscheme="light"></div>
        <br>
        Bài viết cùng chủ đề</div>
    <div class="hr"> </div>
    <div class="infoA">
        
                <ul>
            
                <li><a href=""> nd</a> </li>
            
                <li><a href=""> nd</a> </li>
            
                <li><a href=""> Lenovo ra mắt ThinkPad W540 màn hình 15,5 inch</a> </li>
            
                <li><a href=""> Xem mặt đối thủ mới của MacBook Pro Retina</a> </li>
            
                <li><a href=""> Chromebook dùng chip Haswell ra mắt vài tháng tới</a> </li>
            
                <li><a href=""> HP giới thiệu loạt máy trạm siêu mỏng dòng Zbook</a> </li>
            
                <li><a href=""> HP Chromebook 14 nhiều màu sắc, giá từ 299 USD</a> </li>
            
                <li><a href=""> Máy tính 2 màn hình tất cả trong một</a> </li>
            
                <li><a href=""> Dell công bố bộ đôi máy trạm cấu hình "khủng"</a> </li>
            
                <li><a href=""> Điểm mặt laptop giảm giá tiền triệu</a> </li>
            
                <li><a href=""> Những máy tính nổi bật nhất tại IFA 2013</a> </li>
            
                <li><a href=""> Asus công bố bộ đôi Zenbook UX301 và UX302</a> </li>
            
                <li><a href=""> Toshiba giới thiệu laptop lai Satellite Click</a> </li>
            
                <li><a href=""> Toshiba ra mắt Satellite NB15t màn hình cảm ứng</a> </li>
            
                <li><a href=""> Lenovo công bố Yoga 2 với màn hình "siêu khủng"</a> </li>
            
                <li><a href=""> Thế hệ Vaio Fit mới tối ưu khả năng cảm ứng</a> </li>
            
                <li><a href=""> Asus hé lộ mẫu ultrabook cao cấp Zenbook UX301</a> </li>
            
                <li><a href=""> Lenovo ra mắt Thinkpad X240 với pin hơn 10 tiếng</a> </li>
            
                <li><a href=""> Lenovo ra ultrabook có 2 pin, dùng được 17 tiếng</a> </li>
            
                <li><a href=""> 5 "bom xịt" laptop trong năm 2013</a> </li>
            
                <li><a href=""> Asus giới thiệu ultrabook cảm ứng giá từ 700 USD</a> </li>
            
                <li><a href=""> MacBook Pro dùng chip Intel sẽ ra mắt tháng sau</a> </li>
            
                <li><a href=""> Lenovo Flex 14 - Ultrabook màn hình xoay 300 độ</a> </li>
            
                <li><a href=""> Top laptop phục vụ thiết kế đồ họa hiện nay</a> </li>
            
                <li><a href=""> Apple tập trung đẩy mạnh doanh số máy Mac</a> </li>
            
                <li><a href=""> Asus có thể ra laptop cảm ứng với pin 5 tiếng</a> </li>
            
                <li><a href=""> Acer công bố giá bán Aspire S7 dùng chip Haswell</a> </li>
            
                <li><a href=""> Top những laptop phục vụ "nghe nhìn" đáng mua nhất</a> </li>
            
                <li><a href=""> Ultrabook đắt nhất của Acer nâng cấp chip Haswell</a> </li>
            
                <li><a href=""> Asus rời "sân chơi" Windows RT</a> </li>
            
                </ul> <span id="allnews"><a href="/">Xem tất cả </a></span>
    </div>


            </div>
            </div>
        </div>


<div class="ctRight_detail">
						
<div class="new_article">

				<%
					List<TopicEntity> bvmoinhat = TopicDAO.loadLastedTopic(29);
					TopicEntity bvmoinhat1 = bvmoinhat.get(0);
					TopicEntity bvmoinhat2 = bvmoinhat.get(1);
					TopicEntity bvmoinhat3 = bvmoinhat.get(2);
					TopicEntity bvmoinhat4 = bvmoinhat.get(3);
					TopicEntity bvmoinhat5 = bvmoinhat.get(4);
					TopicEntity bvmoinhat6 = bvmoinhat.get(5);
					TopicEntity bvmoinhat7 = bvmoinhat.get(6);
					TopicEntity bvmoinhat8 = bvmoinhat.get(7);
					TopicEntity bvmoinhat9 = bvmoinhat.get(8);
					TopicEntity bvmoinhat10 = bvmoinhat.get(9);
					TopicEntity bvmoinhat11 = bvmoinhat.get(10);
					TopicEntity bvmoinhat12 = bvmoinhat.get(11);
					TopicEntity bvmoinhat13 = bvmoinhat.get(12);
					TopicEntity bvmoinhat14 = bvmoinhat.get(13);
					TopicEntity bvmoinhat15 = bvmoinhat.get(14);
					TopicEntity bvmoinhat16 = bvmoinhat.get(15);
					TopicEntity bvmoinhat17 = bvmoinhat.get(16);
					TopicEntity bvmoinhat18 = bvmoinhat.get(17);
					TopicEntity bvmoinhat19 = bvmoinhat.get(18);
					TopicEntity bvmoinhat20 = bvmoinhat.get(19);
					TopicEntity bvmoinhat21 = bvmoinhat.get(20);
					TopicEntity bvmoinhat22 = bvmoinhat.get(21);
					TopicEntity bvmoinhat23 = bvmoinhat.get(22);
					TopicEntity bvmoinhat24 = bvmoinhat.get(23);
					TopicEntity bvmoinhat25 = bvmoinhat.get(24);
					TopicEntity bvmoinhat26 = bvmoinhat.get(25);
					TopicEntity bvmoinhat27 = bvmoinhat.get(26);
					TopicEntity bvmoinhat28 = bvmoinhat.get(27);
					TopicEntity bvmoinhat29 = bvmoinhat.get(28);

					pageContext.setAttribute("bvmoinhat1", bvmoinhat1);
					pageContext.setAttribute("bvmoinhat2", bvmoinhat2);
					pageContext.setAttribute("bvmoinhat3", bvmoinhat3);
					pageContext.setAttribute("bvmoinhat4", bvmoinhat4);
					pageContext.setAttribute("bvmoinhat5", bvmoinhat5);
					pageContext.setAttribute("bvmoinhat6", bvmoinhat6);
					pageContext.setAttribute("bvmoinhat7", bvmoinhat7);
					pageContext.setAttribute("bvmoinhat8", bvmoinhat8);
					pageContext.setAttribute("bvmoinhat9", bvmoinhat9);
					pageContext.setAttribute("bvmoinhat10", bvmoinhat10);
					pageContext.setAttribute("bvmoinhat11", bvmoinhat11);
					pageContext.setAttribute("bvmoinhat12", bvmoinhat12);
					pageContext.setAttribute("bvmoinhat13", bvmoinhat13);
					pageContext.setAttribute("bvmoinhat14", bvmoinhat14);
					pageContext.setAttribute("bvmoinhat15", bvmoinhat15);
					pageContext.setAttribute("bvmoinhat16", bvmoinhat16);
					pageContext.setAttribute("bvmoinhat17", bvmoinhat17);
					pageContext.setAttribute("bvmoinhat18", bvmoinhat18);
					pageContext.setAttribute("bvmoinhat19", bvmoinhat19);
					pageContext.setAttribute("bvmoinhat20", bvmoinhat20);
					pageContext.setAttribute("bvmoinhat21", bvmoinhat21);
					pageContext.setAttribute("bvmoinhat22", bvmoinhat22);
					pageContext.setAttribute("bvmoinhat23", bvmoinhat23);
					pageContext.setAttribute("bvmoinhat24", bvmoinhat24);
					pageContext.setAttribute("bvmoinhat25", bvmoinhat25);
					pageContext.setAttribute("bvmoinhat26", bvmoinhat26);
					pageContext.setAttribute("bvmoinhat27", bvmoinhat27);
					pageContext.setAttribute("bvmoinhat28", bvmoinhat28);
					pageContext.setAttribute("bvmoinhat29", bvmoinhat29);
				%>

    <div class="title_art">
        Bài viết mới nhất</div>
    <div class="hr">
         </div>
    <div class="infoA">
        
                <ul>
            
                <li><a href="load?id=${pageScope.bvmoinhat1.id }"> ${pageScope.bvmoinhat1.title } </a> </li>
            
                <li><a href="load?id=${pageScope.bvmoinhat2.id }"> ${pageScope.bvmoinhat2.title } </a> </li>
            
                <li><a href="load?id=${pageScope.bvmoinhat3.id }"> ${pageScope.bvmoinhat3.title }</a> </li>
            
                <li><a href="load?id=${pageScope.bvmoinhat4.id }"> ${pageScope.bvmoinhat4.title } </a> </li>
            
                <li><a href="load?id=${pageScope.bvmoinhat5.id }"> ${pageScope.bvmoinhat5.title } </a> </li>
            
                <li><a href="load?id=${pageScope.bvmoinhat6.id }"> ${pageScope.bvmoinhat6.title } </a> </li>
            
                <li><a href="load?id=${pageScope.bvmoinhat7.id }"> ${pageScope.bvmoinhat7.title } </a> </li>
            
                <li><a href="load?id=${pageScope.bvmoinhat8.id }"> ${pageScope.bvmoinhat8.title }</a> </li>
                
                <li><a href="load?id=${pageScope.bvmoinhat9.id }"> ${pageScope.bvmoinhat9.title }</a> </li>
                
                <li><a href="load?id=${pageScope.bvmoinhat10.id }"> ${pageScope.bvmoinhat10.title }</a> </li>
                
                <li><a href="load?id=${pageScope.bvmoinhat11.id }"> ${pageScope.bvmoinhat11.title }</a> </li>
                
                <li><a href="load?id=${pageScope.bvmoinhat12.id }"> ${pageScope.bvmoinhat12.title }</a> </li>
                
                <li><a href="load?id=${pageScope.bvmoinhat13.id }"> ${pageScope.bvmoinhat13.title }</a> </li>
                
                <li><a href="load?id=${pageScope.bvmoinhat14.id }"> ${pageScope.bvmoinhat14.title }</a> </li>
                
                <li><a href="load?id=${pageScope.bvmoinhat15.id }"> ${pageScope.bvmoinhat15.title }</a> </li>
                
                <li><a href="load?id=${pageScope.bvmoinhat16.id }"> ${pageScope.bvmoinhat16.title }</a> </li>
                
                <li><a href="load?id=${pageScope.bvmoinhat17.id }"> ${pageScope.bvmoinhat17.title }</a> </li>
                
                <li><a href="load?id=${pageScope.bvmoinhat18.id }"> ${pageScope.bvmoinhat18.title }</a> </li>
                
                <li><a href="load?id=${pageScope.bvmoinhat19.id }"> ${pageScope.bvmoinhat19.title }</a> </li>
                
                <li><a href="load?id=${pageScope.bvmoinhat20.id }"> ${pageScope.bvmoinhat20.title }</a> </li>
                
                <li><a href="load?id=${pageScope.bvmoinhat21.id }"> ${pageScope.bvmoinhat21.title }</a> </li>
                
                <li><a href="load?id=${pageScope.bvmoinhat22.id }"> ${pageScope.bvmoinhat22.title }</a> </li>
                
                <li><a href="load?id=${pageScope.bvmoinhat23.id }"> ${pageScope.bvmoinhat23.title }</a> </li>
                
                <li><a href="load?id=${pageScope.bvmoinhat24.id }"> ${pageScope.bvmoinhat24.title }</a> </li>
                
                <li><a href="load?id=${pageScope.bvmoinhat25.id }"> ${pageScope.bvmoinhat25.title }</a> </li>
                
                <li><a href="load?id=${pageScope.bvmoinhat26.id }"> ${pageScope.bvmoinhat26.title }</a> </li>
                
                <li><a href="load?id=${pageScope.bvmoinhat27.id }"> ${pageScope.bvmoinhat27.title }</a> </li>
                
                <li><a href="load?id=${pageScope.bvmoinhat28.id }"> ${pageScope.bvmoinhat28.title }</a> </li>
                
                <li><a href="load?id=${pageScope.bvmoinhat29.id }"> ${pageScope.bvmoinhat29.title }</a> </li>
            
                
            
                </ul>
                <span id="allnews"><a href="/">Xem tất cả</a></span>
                
        
    </div>
   
</div>


<div class="tieudiem">
    <div class="tit">
        
        			
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
							TopicEntity tieudiem11 = tieudiem.get(10);
							TopicEntity tieudiem12 = tieudiem.get(11);
							TopicEntity tieudiem13 = tieudiem.get(12);

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
							pageContext.setAttribute("tieudiem11", tieudiem11);
							pageContext.setAttribute("tieudiem12", tieudiem12);
							pageContext.setAttribute("tieudiem13", tieudiem13);
						%>
        			
                <a>
                    Tiêu điểm
                </a>
          
    </div>
    <div class="ctm">
        
                <div class="focus">
                    
                            <div>
                                <a href="load?id=${pageScope.tieudiem1.id }"><img src="Image/icon.jpg" align="absmiddle">
                                    ${pageScope.tieudiem1.title }
                                </a>
                            </div>

                        
                            <div>
                                <a  href="load?id=${pageScope.tieudiem2.id }"><img src="Image/icon.jpg" align="absmiddle">
                                    ${pageScope.tieudiem2.title }
                                </a>
                            </div>

                        
                            <div>
                                <a href="load?id=${pageScope.tieudiem3.id }"><img src="Image/icon.jpg" align="absmiddle">
                                    ${pageScope.tieudiem3.title }
                                </a>
                            </div>

                        
                            <div>
                                <a href="load?id=${pageScope.tieudiem4.id }"><img src="Image/icon.jpg" align="absmiddle">
                                    ${pageScope.tieudiem4.title }
                                </a>
                            </div>

                        
                            <div>
                                <a href="load?id=${pageScope.tieudiem5.id }"><img src="Image/icon.jpg" align="absmiddle">
                                    ${pageScope.tieudiem5.title }
                                </a>
                            </div>

                        
                            <div>
                                <a href="load?id=${pageScope.tieudiem6.id }"><img src="Image/icon.jpg" align="absmiddle">
                                    ${pageScope.tieudiem6.title }
                                </a>
                            </div>

                        
                            <div>
                                <a href="load?id=${pageScope.tieudiem7.id }"><img src="Image/icon.jpg" align="absmiddle">
                                    ${pageScope.tieudiem7.title }
                                </a>
                            </div>

                        
                            <div>
                                <a href="load?id=${pageScope.tieudiem8.id }"><img src="Image/icon.jpg" align="absmiddle">
                                    ${pageScope.tieudiem8.title }
                                </a>
                            </div>

                        
                            <div>
                                <a href="load?id=${pageScope.tieudiem9.id }"><img src="Image/icon.jpg" align="absmiddle">
                                    ${pageScope.tieudiem9.title }
                                </a>
                            </div>

                        
                            <div>
                                <a href="load?id=${pageScope.tieudiem10.id }"><img src="Image/icon.jpg" align="absmiddle">
                                     ${pageScope.tieudiem10.title }</a></div>
                                    <div>
                                <a href="load?id=${pageScope.tieudiem11.id }"><img src="Image/icon.jpg" align="absmiddle">
                                    ${pageScope.tieudiem11.title }</a></div>
                                    <div>
                                <a href="load?id=${pageScope.tieudiem12.id }"><img src="Image/icon.jpg" align="absmiddle">
                                    ${pageScope.tieudiem12.title }</a></div>

                        
                            <div>
                                <a href="load?id=${pageScope.tieudiem13.id }"><img src="Image/icon.jpg" align="absmiddle">
                                    ${pageScope.tieudiem13.title }
                                </a>
                          
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

