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
<title>Phần cứng</title>
<jsp:include page="/template/Facebook.jsp"></jsp:include>

<link rel="stylesheet" type="text/css" href="CSS/styleMenu.css"/>
<link rel="stylesheet" type="text/css" href="CSS/styleLayout.css"/>

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

					<li id="item_4" class="item menu"><a href="phancung.jsp"><span> Phần cứng </span></a>

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
            	
                <div class="content_left">
           
                    <div class="topnew">
                        
                        <%
                        	
                        	List<TopicEntity> topnew = TopicDAO.loadByMainId("phancung");
                        	TopicEntity topnew1 = topnew.get(0);
                        	TopicEntity topnew2 = topnew.get(1);
                        	TopicEntity topnew3 = topnew.get(2);
                        	TopicEntity topnew4 = topnew.get(3);
                        	
                        	pageContext.setAttribute("topnew1", topnew1);
                        	pageContext.setAttribute("topnew2", topnew2);
                        	pageContext.setAttribute("topnew3", topnew3);
                        	pageContext.setAttribute("topnew4", topnew4);
                        
                        %>
                        
                        
                                    <div class="title_topnew">
                                        <a href="load?id=${pageScope.topnew1.id }"><span> ${pageScope.topnew1.title }
 </span></a></div>
                                    <div>
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tbody><tr>
                                                <td class="img_top">
                                                    <a href="load?id=${pageScope.topnew1.id }"><img src="${pageScope.topnew1.url_daidien }" height="222" align="left" border="0" hspace="3" vspace="3"></a>
                                                </td>
                                                <td class="ctt_top" valign="top">${pageScope.topnew1.header }

</td>
                                            </tr>
                                        </tbody></table>
                                
                        			</div>
                    </div>
              
                    <div class="subcontent">
                        
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tbody><tr>
                            
                                <td>
                                    <span>
                                        <div class="boxsub">
                                            <a href="load?id=${pageScope.topnew2.id }">
                                                <img src="${pageScope.topnew2.url_daidien }" border="0">
                                            </a>
                                        </div>
                                        <div class="title_boxsub">
                                            <a href="load?id=${pageScope.topnew2.id }">
                                              ${pageScope.topnew2.title }
</a>
                                        </div>
                                    </span>
                                </td>
                            
                                <td>
                                    <span>
                                        <div class="boxsub">
                                            <a href="load?id=${pageScope.topnew3.id }">
                                                <img src="${pageScope.topnew3.url_daidien }" border="0">
                                            </a>
                                        </div>
                                        <div class="title_boxsub">
                                            <a href="load?id=${pageScope.topnew3.id }">
                                                ${pageScope.topnew3.title }
</a>
                                        </div>
                                    </span>
                                </td>
                            
                                <td>
                                    <span>
                                        <div class="boxsub">
                                            <a href="load?id=${pageScope.topnew4.id }">
                                                <img src="${pageScope.topnew4.url_daidien }" border="0">
                                            </a>
                                        </div>
                                        <div class="title_boxsub">
                                            <a href="load?id=${pageScope.topnew4.id }">
													${pageScope.topnew4.title }
</a>
                                        </div>
                                    </span>
                                </td>
                            
                                </tr> </tbody></table>
                            
                    </div>
                    
                       
                    <div class="wbox cat">
                    
                        <div class="tit">
                            
                                    <a href="desktop.jsp" title="Chuyên mục 'Desktop'">Desktop</a>
                            
                        </div>
                        <div class="ctm">
                           
                         <%
                        	List<TopicEntity> desktop = TopicDAO.loadBySubMenu("desktop");
                        	TopicEntity desktop1 = desktop.get(0);
                        	TopicEntity desktop2 = desktop.get(1);
                        	TopicEntity desktop3 = desktop.get(2);
                        	TopicEntity desktop4 = desktop.get(3);
                        	TopicEntity desktop5 = desktop.get(4);
                        	
                        	pageContext.setAttribute("desktop1", desktop1);
                        	pageContext.setAttribute("desktop2", desktop2);
                        	pageContext.setAttribute("desktop3", desktop3);
                        	pageContext.setAttribute("desktop4", desktop4);
                        	pageContext.setAttribute("desktop5", desktop5);
                        
                        %>
                           
                           
                                    <div class="title_article">
                                        <a href="load?id=${pageScope.desktop1.id }">Giá Mac Pro 2013 có thể lên tới 14.000 USD</a>
                                     </div>   
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="load?id=${pageScope.desktop1.id }"><img src="${pageScope.desktop1.url_daidien }" align="left" border="0" hspace="3" vspace="3"></a>
 																${pageScope.desktop1.header }
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                    <div class="title_article">
                                        <a href="load?id=${pageScope.desktop2.id }">Siêu máy tính có khả năng dự báo thời tiết
</a>
                                     </div>   
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="load?id=${pageScope.desktop2.id }"><img src="${pageScope.desktop2.url_daidien }" align="left" border="0" hspace="3" vspace="3"></a>
 																${pageScope.desktop2.header }
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                    <div class="title_article">
                                        <a href="load?id=${pageScope.desktop3.id }">MSI ra bộ đôi All In One cấu hình cao
</a>
                                     </div>   
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="load?id=${pageScope.desktop3.id }"><img src="${pageScope.desktop3.url_daidien }" align="left" border="0" hspace="3" vspace="3"></a>
														${pageScope.desktop3.header }
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                    <div class="tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="load?id=${pageScope.desktop4.id }"> Apple Mac Pro giá 63 triệu đồng, bán ra tháng 12
 </a> </li>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="load?id=${pageScope.desktop5.id }"> "Máu điện tử" cho siêu máy tính
 </a> </li>
                                            
                                                </ul>
                                            
                                      
                                    </div>
                               
                        </div>
                        
                    </div>
                    
                                
                   <div class="wbox cat">
                        <div class="tit">
                                    <a href="Laptop.jsp" title="Chuyên mục 'Laptop'">laptop</a>
                            
                        </div>
                        <div class="ctm">
                           
                           		<%
                        	List<TopicEntity> laptop = TopicDAO.loadBySubMenu("laptop");
                        	TopicEntity laptop1 = laptop.get(0);
                        	TopicEntity laptop2 = laptop.get(1);
                        	TopicEntity laptop3 = laptop.get(2);
                        	TopicEntity laptop4 = laptop.get(3);
                        	TopicEntity laptop5 = laptop.get(4);
                        	
                        	pageContext.setAttribute("laptop1", laptop1);
                        	pageContext.setAttribute("laptop2", laptop2);
                        	pageContext.setAttribute("laptop3", laptop3);
                        	pageContext.setAttribute("laptop4", laptop4);
                        	pageContext.setAttribute("laptop5", laptop5);
                        
                        %>
                           
                                    <div class="title_article">
                                        <a href="load?id=${pageScope.laptop1.id }">HP Chromebook 11 bị thu hồi hàng loạt
</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="load?id=${pageScope.laptop1.id }"><img src="${pageScope.laptop1.url_daidien }" align="left" border="0" hspace="3" vspace="3"></a>
														${pageScope.laptop1.header }
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="title_article">
                                        <a href="load?id=${pageScope.laptop2.id }">Acer giới thiệu chromebook "siêu rẻ"
</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="load?id=${pageScope.laptop2.id }"><img src="${pageScope.laptop2.url_daidien }" align="left" border="0" hspace="3" vspace="3"></a>
																		${pageScope.laptop2.header }
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="title_article">
                                        <a href="load?id=${pageScope.laptop3.id }">Cách phòng tránh các tác hại khi sử dụng laptop
</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="load?id=${pageScope.laptop3.id }"><img src="${pageScope.laptop3.url_daidien }" align="left" border="0" hspace="3" vspace="3"></a>
 														${pageScope.laptop3.header }
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="load?id=${pageScope.laptop4.id }"> HP ra mắt máy tính để bàn chạy Android
 </a> </li>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="load?id=${pageScope.laptop5.id }"> Làm thế nào để thay thế ổ cứng cho Laptop?

 </a> </li>
                                            
                                                </ul>
                                    </div>                             
                        </div>
                        
                    </div>
               
                    <div class="wbox cat">
                        <div class="tit">
                            
                                    <a href="thietbilinhkien.jsp" title="Chuyên mục 'Thiết bị-Linh Kiện'">Thiết bị-Linh Kiện</a>
                            
                        </div>
                        <div class="ctm">
                        
                        		
                         <%
                        	List<TopicEntity> thietbilinhkien = TopicDAO.loadBySubMenu("thietbilinhkien");
                        	TopicEntity thietbilinhkien1 = thietbilinhkien.get(0);
                        	TopicEntity thietbilinhkien2 = thietbilinhkien.get(1);
                        	TopicEntity thietbilinhkien3 = thietbilinhkien.get(2);
                        	TopicEntity thietbilinhkien4 = thietbilinhkien.get(3);
                        	TopicEntity thietbilinhkien5 = thietbilinhkien.get(4);
                        	
                        	pageContext.setAttribute("thietbilinhkien1", thietbilinhkien1);
                        	pageContext.setAttribute("thietbilinhkien2", thietbilinhkien2);
                        	pageContext.setAttribute("thietbilinhkien3", thietbilinhkien3);
                        	pageContext.setAttribute("thietbilinhkien4", thietbilinhkien4);
                        	pageContext.setAttribute("thietbilinhkien5", thietbilinhkien5);
                        
                        %>
                            
                                    <div class="title_article">
                                        <a href="load?id=${pageScope.thietbilinhkien1.id }">Mediatek đem công nghệ cao giá rẻ đến Việt Nam
</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="load?id=${pageScope.thietbilinhkien1.id }"><img src="${pageScope.thietbilinhkien1.url_daidien }" align="left" border="0" hspace="3" vspace="3"></a>
												 ${pageScope.thietbilinhkien1.header }
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                     <div class="title_article">
                                        <a href="load?id=${pageScope.thietbilinhkien2.id }">Samsung sẽ tự sản xuất cảm biến di động
`
</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="load?id=${pageScope.thietbilinhkien2.id }"><img src="${pageScope.thietbilinhkien2.url_daidien }" align="left" border="0" hspace="3" vspace="3"></a>
													${pageScope.thietbilinhkien2.header }
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                     <div class="title_article">
                                        <a href="load?id=${pageScope.thietbilinhkien3.id }">Chuẩn cáp mới có tốc độ lên đến 10 Gbps

</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="load?id=${pageScope.thietbilinhkien3.id }"><img src="${pageScope.thietbilinhkien3.url_daidien }" align="left" border="0" hspace="3" vspace="3"></a>
														${pageScope.thietbilinhkien3.header }
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                    
                                    <div class="tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="load?id=${pageScope.thietbilinhkien4.id }"> AMD sẽ chiếm 40% thị phần GPU trong 6 tháng tới

 </a> </li>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="load?id=${pageScope.thietbilinhkien5.id }"> Buffalo ra dòng ổ cứng ngoài đủ màu sắc

 </a> </li>
                                            
                                                </ul>
                                            
                                      
                                    </div>
                               
                        </div>
                        
                    </div>
					
                    <div class="wbox cat">
                        <div class="tit">
                            
                                    <a href="tuvan.jsp" title="Chuyên mục 'Tư vấn'">Tư vấn</a>
                            
                        </div>
                        <div class="ctm">
                            
                          <%
                        	List<TopicEntity> tuvan = TopicDAO.loadBySubMenu("tuvan");
                        	TopicEntity tuvan1 = tuvan.get(0);
                        	TopicEntity tuvan2 = tuvan.get(1);
                        	TopicEntity tuvan3 = tuvan.get(2);
                        	TopicEntity tuvan4 = tuvan.get(3);
                        	TopicEntity tuvan5 = tuvan.get(4);
                        	
                        	pageContext.setAttribute("tuvan1", tuvan1);
                        	pageContext.setAttribute("tuvan2", tuvan2);
                        	pageContext.setAttribute("tuvan3", tuvan3);
                        	pageContext.setAttribute("tuvan4", tuvan4);
                        	pageContext.setAttribute("tuvan5", tuvan5);
                        
                        %>	
                            
                                    <div class="title_article">
                                        <a href="load?id=${pageScope.tuvan1.id }">Để tránh đau cổ tay khi làm việc lâu với máy tính

</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="load?id=${pageScope.tuvan1.id }"><img src="${pageScope.tuvan1.url_daidien }" align="left" border="0" hspace="3" vspace="3"></a>
														 ${pageScope.tuvan1.header }
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                     <div class="title_article">
                                        <a href="load?id=${pageScope.tuvan2.id }">5 mẹo nhỏ tiết kiệm đáng kể thời lượng pin iPad


</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="load?id=${pageScope.tuvan2.id }"><img src="${pageScope.tuvan2.url_daidien}" align="left" border="0" hspace="3" vspace="3"></a>
													 ${pageScope.tuvan2.header }
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                     <div class="title_article">
                                        <a href="load?id=${pageScope.tuvan3.id }">8 điều tối kỵ khi "vệ sinh" cho máy tính

</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="load?id=${pageScope.tuvan3.id }"><img src="${pageScope.tuvan3.url_daidien }" align="left" border="0" hspace="3" vspace="3"></a>
														${pageScope.tuvan3.header }
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                    
                                    <div class="tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="load?id=${pageScope.tuvan4.id }">Bí kíp tránh đau tay khi sử dụng chuột máy tính


 </a> </li>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="load?id=${pageScope.tuvan5.id }">Những băn khoăn khi muốn TV mỏng


 </a> </li>
                                            
                                                </ul>
                                            
                                      
                                    </div>
                               
                        </div>
                        
                    </div>                    
                    

                    <div class="facebook">
                	<div class="title_fb">InformationTechnology trên Facebook</div>
        		  <div class="fb"><table width="280" border="0">
        		    <tr>
        		      <td width="104"><a href="https://www.facebook.com/ntncoporation?ref=hl" target="_blank"><img src="Image/Logo.png" width="101" height="91" /></a></td>
        		      <td width="166" valign="top"><p><a href="https://www.facebook.com/ntncoporation?ref=hl" target="_blank">InformationTechnology</a></p>
       		          <p><div class="fb-like" data-href="https://www.facebook.com/ntncoporation" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></div></p>
                      
                      </td>
      		      </tr>
      		    </table>
        		  <div style="margin-left:12px; margin-top:10px"><a href="https://facebook.com/help/443483272359009" target="_blank"><img src="Image/facebook.jpg" width="15" height="16" /></a><a href="https://facebook.com/help/443483272359009" target="_blank"> Plugin xã hội của facebook</a></div></div>
        		</div>
                                                                                        
				</div>
           

        		<div class="content_right">
				
                    <div class="news">
                        <div class="tit">
                            
                                   <a href="tinmoinhat.jsp">  Tin mới nhất </a>
                            
                        </div>
                        <div class="ctm">
                            
                                    <div class="title_new">
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">2 lý do nên mua ngay iPad Mini Retina
</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">HP Chromebook 11 bị thu hồi hàng loạt

</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Acer giới thiệu chromebook "siêu rẻ"

 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">iPad Mini Retina rất khó sửa chữa

 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Ngày mai iPad mini Retina 4G có mặt tại Việt Nam
</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">iPad mini 2 rất khó sửa chữa
 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Năm sau doanh số iPad Mini Retina sẽ tăng gấp 2
 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">LG G Pad 8.3 bán tại Việt Nam cuối tháng này

</a>
                                     </div>
                                      
                                    
                                     <span id="xemtin"><a href="${param.xemcactinkhac }"><strong>Xem các tin khác </strong></a></span>
                                    
                                               
                                    </div>
                               
                        </div>
                        <div class="space"></div>
                       
                    </div>   
                                     
                    <div class="headlines">
                        <div class="tit">
                           
                                    <a>
                                        Tiêu điểm
                                    </a>
                                
                        </div>
                        <div class="ctm">
                                        
                                       	<div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/"><img src="Image/Task-Manager.jpg" width="142" height="174" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/8-cong-dung-khong-ngo-cua-task-manager-105027">
                                                    8 công dụng không ngờ của Task Manager
                                                </a>
                                            </div>
                                        </div>
                                        

                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/huong-dan-nang-cap-len-windows-8-1-bang-hinh-anh-105098"><img src="Image/Windows-81.jpg" width="142" height="169" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/huong-dan-nang-cap-len-windows-8-1-bang-hinh-anh-105098">
                                                    Hướng dẫn nâng cấp lên Windows 8.1 bằng hình ảnh
                                                </a>
                                            </div>
                                        </div>
  
                                       	<div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/xoa-bo-du-lieu-dong-bo-tren-may-tu-windows-8-1-105119"><img src="Image/Dong-bo-1.jpg" width="142" height="154" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/xoa-bo-du-lieu-dong-bo-tren-may-tu-windows-8-1-105119">
                                                    Xóa bỏ dữ liệu đồng bộ trên mây từ Windows 8.1
                                                </a>
                                            </div>
                                        </div>
                                                        
                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/kich-hoat-bo-go-tieng-viet-tren-ubuntu-13-10-105044"><img src="Image/Ubuntu.jpg" width="142" height="172" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/kich-hoat-bo-go-tieng-viet-tren-ubuntu-13-10-105044">
                                                    Kích hoạt bộ gõ Tiếng Việt trên Ubuntu 13.10
                                                </a>
                                            </div>
                                        </div>
       
                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/modem-d-link-tenda-cua-trung-quoc-cai-san-ma-doc-105160"><img src="Image/D-Link-1.jpg" width="142" height="163" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/nhieu-modem-d-link-tenda-cua-trung-quoc-da-duoc-cai-san-ma-doc-105160">
                                                    Modem D-Link, Tenda của Trung Quốc cài sẵn mã độc
                                                </a>
                                            </div>
                                        </div>
                   
                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/"><img src="Image/Outlook.jpg" width="142" height="154" hspace="3" vspace="3" align="left" border="0"></a>    
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/">
                                                   Mẹo hay khắc phục sự cố kết nối trên Outlook 
                                                </a>
                                            </div>
                                        </div>

                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/"><img src="Image/Phan-cung.jpg" width="142" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/">
                                                   Xác định phần cứng nào trong máy tính đang hỏng 
                                                </a>
                                            </div>
                                        </div>

                                       	<div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/"><img src="Image/iOS-7.jpg" width="142" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/">
                                                    Apple chính thức tung ra bản cập nhật iOS 7.0.3 
                                                </a>
                                            </div>
                                        </div>

                                       	<div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/"><img src="Image/Windows-81-1.jpg" width="142" height="145" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/">
                                                    Hướng dẫn nâng cấp lên Windows 8.1 bằng hình ảnh 
                                                </a>
                                            </div>
                                        </div>
                                        
                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/"><img src="Image/Facebook-Page.jpg" width="142" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/">
                                                    Cách chuyển Facebook cá nhân thành Facebook Page
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

