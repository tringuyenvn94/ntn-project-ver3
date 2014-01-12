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

<title>Bảo Mật</title>
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



					<li id="item_3" class="item menu"><a href="baomat.jsp"><span> Bảo mật </span></a>

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
                        	List<TopicEntity> topnew = TopicDAO.loadByMainId("baomat");
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
                                        <a href="load?id=${pageScope.topnew1.id }"><span> ${pageScope.topnew1.title } </span></a></div>
                                    <div>
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tbody><tr>
                                                <td class="img_top">
                                                    <a href="load?id=${pageScope.topnew1.id }"><img src="${pageScope.topnew1.url_daidien }" height="123" align="left" border="0" hspace="3" vspace="3"></a>
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
                                              ${pageScope.topnew2.title }</a>
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
                                                ${pageScope.topnew3.title }</a>
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
                            
                                    <a href="tinbaomat.jsp" title="Chuyên mục 'Tin bảo mật'">Tin bảo mật</a>
                            
                        </div>
                        <div class="ctm">
                        <%
                        	List<TopicEntity> tinbaomat = TopicDAO.loadBySubMenu("tinbaomat");
                        	TopicEntity tinbaomat1 = tinbaomat.get(0);
                        	TopicEntity tinbaomat2 = tinbaomat.get(1);
                        	TopicEntity tinbaomat3 = tinbaomat.get(2);
                        	TopicEntity tinbaomat4 = tinbaomat.get(3);
                        	TopicEntity tinbaomat5 = tinbaomat.get(4);
                        	
                        	pageContext.setAttribute("tinbaomat1", tinbaomat1);
                        	pageContext.setAttribute("tinbaomat2", tinbaomat2);
                        	pageContext.setAttribute("tinbaomat3", tinbaomat3);
                        	pageContext.setAttribute("tinbaomat4", tinbaomat4);
                        	pageContext.setAttribute("tinbaomat5", tinbaomat5);
                        
                        %>
                           
                                    <div class="title_article">
                                        <a href="load?id=${pageScope.tinbaomat1.id }">Trojan mới khó phát hiện tấn công lỗ hổng IE</a>
                                     </div>   
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="load?id=${pageScope.tinbaomat1.id }"><img src="${pageScope.tinbaomat1.url_daidien }" align="left" border="0" hspace="3" vspace="3"></a>
																		${pageScope.tinbaomat1.header }	
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                    <div class="title_article">
                                        <a href="load?id=${pageScope.tinbaomat2.id }">Mã PIN smartphone sẽ lộ vì camera, microphone?</a>
                                     </div>   
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="load?id=${pageScope.tinbaomat2.id }"><img src="${pageScope.tinbaomat2.url_daidien }" align="left" border="0" hspace="3" vspace="3"></a>
 																	${pageScope.tinbaomat2.header }
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                    <div class="title_article">
                                        <a href="load?id=${pageScope.tinbaomat3.id }">152 triệu tài khoản Adobe bị lộ trên web</a>
                                     </div>   
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="load?id=${pageScope.tinbaomat3.id }"><img src="Image/adobe.jpg" align="left" border="0" hspace="3" vspace="3"></a>
																		${pageScope.tinbaomat3.header }
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                    <div class="tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="load?id=${pageScope.tinbaomat4.id }">CIA trả tiền cho dữ liệu cuộc gọi của AT&T </a> </li>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="load?id=${pageScope.tinbaomat5.id }">Microsoft, Facebook khuyến khích tìm lỗi bảo mật </a> </li>
                                            
                                                </ul>
                                            
                                      
                                    </div>
                               
                        </div>
                        
                    </div>
                    
                                
                   <div class="wbox cat">
                        <div class="tit">
                                    <a href="giaiphapbaomat.jsp" title="Chuyên mục 'Giải pháp bảo mật'">Giải pháp bảo mật</a>
                            
                        </div>
                        <div class="ctm">
                           
                           	<%
	                        	List<TopicEntity> giaiphapbaomat = TopicDAO.loadBySubMenu("giaiphapbaomat");
	                        	TopicEntity giaiphapbaomat1 = giaiphapbaomat.get(0);
	                        	TopicEntity giaiphapbaomat2 = giaiphapbaomat.get(1);
	                        	TopicEntity giaiphapbaomat3 = giaiphapbaomat.get(2);
	                        	TopicEntity giaiphapbaomat4 = giaiphapbaomat.get(3);
	                        	TopicEntity giaiphapbaomat5 = giaiphapbaomat.get(4);
	                        	
	                        	pageContext.setAttribute("giaiphapbaomat1", giaiphapbaomat1);
	                        	pageContext.setAttribute("giaiphapbaomat2", giaiphapbaomat2);
	                        	pageContext.setAttribute("giaiphapbaomat3", giaiphapbaomat3);
	                        	pageContext.setAttribute("giaiphapbaomat4", giaiphapbaomat4);
	                        	pageContext.setAttribute("giaiphapbaomat5", giaiphapbaomat5);
                        
                       	 %>
                           
                                    <div class="title_article">
                                        <a href="load?id=${pageScope.giaiphapbaomat1.id }">Mẹo bảo mật Google, Facebook và dịch vụ trực tuyến</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="load?id=${pageScope.giaiphapbaomat1.id }"><img src="${pageScope.giaiphapbaomat1.url_daidien }" align="left" border="0" hspace="3" vspace="3"></a>
 																					${pageScope.giaiphapbaomat1.header } 
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="title_article">
                                        <a href="load?id=${pageScope.giaiphapbaomat2.id }">"Tuyệt chiêu" diệt virus Autorun bằng tay</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="load?id=${pageScope.giaiphapbaomat2.id }"><img src="${pageScope.giaiphapbaomat2.url_daidien }" align="left" border="0" hspace="3" vspace="3"></a>
                                                      			${pageScope.giaiphapbaomat2.header }
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="title_article">
                                        <a href="load?id=${pageScope.giaiphapbaoma3.id }">Hanoi Telecom ra mắt giải pháp chống tấn công mạng</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="load?id=${pageScope.giaiphapbaoma3.id }"><img src="${pageScope.giaiphapbaoma3.url_daidien }" align="left" border="0" hspace="3" vspace="3"></a>
															${pageScope.giaiphapbaoma3.header }
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="load?id=${pageScope.giaiphapbaoma4.id }">Trang khắc phục lỗi tấn công của Apple </a> </li>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="load?id=${pageScope.giaiphapbaoma5.id }">8 cách bảo vệ thông tin cá nhân thời đại số
 </a> </li>
                                            
                                                </ul>
                                    </div>                             
                        </div>
                        
                    </div>
               
                    <div class="wbox cat">
                        <div class="tit">
                            
                                    <a href="virus.jsp" title="Chuyên mục 'Virus'">Virus</a>
                            
                        </div>
                        <div class="ctm">
                            	
                            	<%
	                        	List<TopicEntity> virus = TopicDAO.loadBySubMenu("virus");
	                        	TopicEntity virus1 = virus.get(0);
	                        	TopicEntity virus2 = virus.get(1);
	                        	TopicEntity virus3 = virus.get(2);
	                        	TopicEntity virus4 = virus.get(3);
	                        	TopicEntity virus5 = virus.get(4);
	                        	
	                        	pageContext.setAttribute("virus1", virus1);
	                        	pageContext.setAttribute("virus2", virus2);
	                        	pageContext.setAttribute("virus3", virus3);
	                        	pageContext.setAttribute("virus4", virus4);
	                        	pageContext.setAttribute("virus5", virus5);
                        
                       	 %>
                            	
                                    <div class="title_article">
                                        <a href="load?id=${pageScope.virus1.id }">Bùng nổ virus file Infector</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="load?id=${pageScope.virus1.id }"><img src="${pageScope.virus1.url_daidien }" align="left" border="0" hspace="3" vspace="3"></a>
																	${pageScope.virus1.header }
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                     <div class="title_article">
                                        <a href="load?id=${pageScope.virus2.id }">Xuất hiện loại virus mới bùng phát qua USB
</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="load?id=${pageScope.virus2.id }"><img src="${pageScope.virus2.url_daidien }" align="left" border="0" hspace="3" vspace="3"></a>
																		${pageScope.virus2.header }
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                     <div class="title_article">
                                        <a href="load?id=${pageScope.virus3.id }">Phát hiện ứng dụng "độc" nhìn xuyên quần áo
</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="load?id=${pageScope.virus3.id }"><img src="${pageScope.virus1.url_daidien }" align="left" border="0" hspace="3" vspace="3"></a>
																${pageScope.virus1.header }
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                    
                                    <div class="tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="load?id=${pageScope.virus5.id }">Trojan chèn quảng cáo vào trình duyệt OS X
 </a> </li>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="load?id=${pageScope.virus5.id }">Xuất hiện gần 3.000 dòng virus máy tính mới ở VN
 </a> </li>
                                            
                                                </ul>
                                            
                                      
                                    </div>
                               
                        </div>
                        
                    </div>
					
                    <div class="wbox cat">
                        <div class="tit">
                            
                                    <a href="hacker.jsp" title="Chuyên mục 'Hacker'">Hacker</a>
                            
                        </div>
                        <div class="ctm">
                            		
                            		<%
	                        	List<TopicEntity> hacker = TopicDAO.loadBySubMenu("hacker");
	                        	TopicEntity hacker1 = hacker.get(0);
	                        	TopicEntity hacker2 = hacker.get(1);
	                        	TopicEntity hacker3 = hacker.get(2);
	                        	TopicEntity hacker4 = hacker.get(3);
	                        	TopicEntity hacker5 = hacker.get(4);
	                        	
	                        	pageContext.setAttribute("hacker1", hacker1);
	                        	pageContext.setAttribute("hacker2", hacker2);
	                        	pageContext.setAttribute("hacker3", hacker3);
	                        	pageContext.setAttribute("hacker4", hacker4);
	                        	pageContext.setAttribute("hacker5", hacker5);
                        
                       	 %>
                            		
                                    <div class="title_article">
                                        <a href="load?id=${pageScope.hacker1.id }">Tin tặc Trung Quốc đánh cắp bí mật công ty Mỹ?
</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="load?id=${pageScope.hacker1.id }"><img src="${pageScope.hacker1.url_daidien }" align="left" border="0" hspace="3" vspace="3"></a>
															load?id=${pageScope.hacker1.header }
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                     <div class="title_article">
                                        <a href="load?id=${pageScope.hacker2.id }">Bẻ mật khẩu hotspot trên iOS trong vòng 1 phút

</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="load?id=${pageScope.hacker2.id }"><img src="${pageScope.hacker1.url_daidien }" align="left" border="0" hspace="3" vspace="3"></a>
															${pageScope.hacker2.header }
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                     <div class="title_article">
                                        <a href="load?id=${pageScope.hacker3.id }">Hacker bẻ mật khẩu 16 ký tự chưa đầy 60 phút

</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="load?id=${pageScope.hacker3.id }"><img src="${pageScope.hacker3.url_daidien }" align="left" border="0" hspace="3" vspace="3"></a>
														 ${pageScope.hacker3.header }
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                    
                                    <div class="tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="load?id=${pageScope.hacker4.id }"> Đã có thể tải về công cụ bẻ khóa Windows RT

 </a> </li>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="load?id=${pageScope.hacker5.id }"> Quá trình "chôm" mật khẩu Yahoo Mail trong 4 phút

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
       		          <p><div class="fb-like" data-href="https://www.facebook.com/ntncoporation" data-layout="box_count" data-action="like" data-show-faces="false" data-share="false"></div></p>
                      
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
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Google tung "độc chiêu" phòng chống DDoS
</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Tin tặc Trung Quốc đánh cắp bí mật công ty Mỹ?
</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Trojan mới khó phát hiện tấn công lỗ hổng IE
 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Mã PIN smartphone sẽ lộ vì camera, microphone?
 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">152 triệu tài khoản Adobe bị lộ trên web</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">CIA trả tiền cho dữ liệu cuộc gọi của AT&T </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Microsoft, Facebook khuyến khích tìm lỗi bảo mật </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Virus lây từ smartphone sang máy tính đã có ở VN
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
