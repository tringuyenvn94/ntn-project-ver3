<%@page import="dao.TopicDAO"%>
<%@page import="java.util.List"%>
<%@page import="entity.UserEntity"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Tiêu đề</title>

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
					<li class="item"><a href="trangchu.jsp"><span>Trang chủ</span> </a>
						<ul class="submenu_1"></ul></li>

					<li id="item_2" class="item menu"><a href="tintuccongnghe.jsp"><span> Tin tức công nghệ </span></a>

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
		<%
		//TODO START
		
		TopicEntity topic = (TopicEntity) session.getAttribute("topic");
		session.removeAttribute("topic");
		String title = topic.getTitle();
		Date date = topic.getDateCreated();
		String content = topic.getContent();
		String author = topic.getAuthor();
	%>
		
				<a href="trangchu.jsp"><img src="Image/icon_home.jpg" width="18" height="22" align="absmiddle" border="0"></a> »&nbsp;<a href="">Tên menu cha</a>&nbsp;»&nbsp;<a href="">Tên menu con</a>
			
	</div>
	<div class="ctm">

		
				<h1 class="title_article">
					
						<%=title %></h1>
				<div class="infoUpdate">
					<table border="0" cellpadding="0" cellspacing="0" width="676">
						<tbody><tr>
							<td width="415">
								Cập nhật lúc
								 <%=date %>
							 </td>
							 
								
								 
						</tr>
					</tbody></table>
				</div>
				<div class="infoDetail">
				
					<table border="0" cellpadding="0" cellspacing="0" width="100%">
						<tbody><tr>
							<td>
							<div id="baiviet">
							<%=content %>
<p style="text-align: right;"><em><strong><%=author %></strong></em></p>
								
							</div>
							</td>
						</tr>
					</tbody></table>
					
				</div>
				<div>
					<table border="0" cellpadding="0" cellspacing="0" width="100%">
						<tbody><tr>
							<td colspan="5" align="right">
								
							</td>
						</tr>
						<tr>
							
						</tr>
						
						
							<tr>
							<td width="27%" class="bookmark">
								<a id="favorites" tabindex="2" href="#" onmouseover="_atw.shv(this)" onmouseout="_atw.rhv(this)" onclick="return addthis_sendto('favorites');"><span>Yêu Thích</span></a>
							</td>
							
							
							<td width="28%" class="share">
								<img src="Image/icon_phanhoi_03.jpg"><a title="Bình luận, nhận xét, tranh luận, góp ý cho bài này" href="/hp-pavilion-14-15-va-nhung-nang-cap-dang-gia-105663#comments">
									&nbsp; Phản hồi</a>
							</td>
							<td width="45%" class="danhgia">
								<div class="rating">
								Đánh giá(<a href="javascript:void(0);" onclick="alert(this.title)" title="Nhấn chuột vào các ngôi sao để đánh giá">?</a>):
								<span class="value-title" title="0"><a href="javascript:void(0);" onclick="dorate(105663,1,'oqiooih012qawuyb42uveqob')" title="1 điểm"><img onmouseover="rateover(this,0)" onmouseout="rateout(this,0)" id="dorate1" src="Image/ra.gif" border="0" height="11" hspace="1" width="11"></a><a href="javascript:void(0);" onclick="dorate(105663,2,'oqiooih012qawuyb42uveqob')" title="2 điểm"><img onmouseover="rateover(this,0)" onmouseout="rateout(this,0)" id="dorate2" src="Image/ra.gif" border="0" height="11" hspace="1" width="11"></a><a href="javascript:void(0);" onclick="dorate(105663,3,'oqiooih012qawuyb42uveqob')" title="3 điểm"><img onmouseover="rateover(this,0)" onmouseout="rateout(this,0)" id="dorate3" src="Image/ra.gif" border="0" height="11" hspace="1" width="11"></a><a href="javascript:void(0);" onclick="dorate(105663,4,'oqiooih012qawuyb42uveqob')" title="4 điểm"><img onmouseover="rateover(this,0)" onmouseout="rateout(this,0)" id="dorate4" src="Image/ra.gif" border="0" height="11" hspace="1" width="11"></a><a href="javascript:void(0);" onclick="dorate(105663,5,'oqiooih012qawuyb42uveqob')" title="5 điểm"><img onmouseover="rateover(this,0)" onmouseout="rateout(this,0)" id="dorate5" src="Image/ra.gif" border="0" height="11" hspace="1" width="11"></a></span></div>
							</td>
						</tr>
						
						<tr>
							
						</tr>
								   
						<tr>
							
						</tr>

	                  <tr>
							<td colspan="5"><div id="comments"><div class="fb-comments" data-href="http://www.quantrimang.com.vn/C:/Users/Nguyen%20Tan%20Tai/Downloads/moi/HP%20Pavilion%2014%20&amp;%2015%20v%C3%A0%20nh%E1%BB%AFng%20n%C3%A2ng%20c%E1%BA%A5p%20%C4%91%C3%A1ng%20gi%C3%A1%20%20%20Qu%E1%BA%A3n%20Tr%E1%BB%8B%20M%E1%BA%A1ng%20-%20QuanTriMang.com.htm" data-width="650" data-num-posts="10"></div></div>
								
							</td>
						</tr>

					</tbody></table>
				</div>
				
			
	</div>
	<div class="space">	
	</div>
</div>


		<div class="sameType">
            <div class="article_detail">
          
    <div class="title_art">
        Bài viết cùng chủ đề</div>
    <div class="hr"> </div>
    
    			
    				<% 
    			String id = (String) request.getAttribute("id");
    			
    			String topicIdMenu =  TopicDAO.getSubMenuId(id);
    			List<TopicEntity> bv = TopicDAO.loadBySubMenu(topicIdMenu);
    			TopicEntity bv1 = bv.get(0);    			
    			TopicEntity bv2 = bv.get(1);    			
    			TopicEntity bv3 = bv.get(2);    			
    			TopicEntity bv4 = bv.get(3);    			
    			TopicEntity bv5 = bv.get(4);    			
    			TopicEntity bv6 = bv.get(5);    			
    			TopicEntity bv7 = bv.get(6);    			
    			TopicEntity bv8 = bv.get(7);    			
    			TopicEntity bv9 = bv.get(8);    			
    			TopicEntity bv10 = bv.get(9);    			
    			TopicEntity bv11 = bv.get(10);    			
    			TopicEntity bv12 = bv.get(11);    			
    		/*	TopicEntity bv13 = bv.get(12);    			
    			TopicEntity bv14 = bv.get(13);    			
    			TopicEntity bv15 = bv.get(14);    			
    			TopicEntity bv16 = bv.get(15);    			
    			TopicEntity bv17 = bv.get(16);    			
    			TopicEntity bv18 = bv.get(17);    			
    			TopicEntity bv19 = bv.get(18);    			
    			TopicEntity bv20 = bv.get(19);    			
    			TopicEntity bv21 = bv.get(20);    			
    			TopicEntity bv22 = bv.get(21);    			
    			TopicEntity bv23 = bv.get(22);    			
    			TopicEntity bv24 = bv.get(23);    			
    			TopicEntity bv25 = bv.get(24);    			
    			TopicEntity bv26 = bv.get(25);    			
    			TopicEntity bv27 = bv.get(26);    			
    			TopicEntity bv28 = bv.get(27);    			
    			TopicEntity bv29 = bv.get(28);    			
    			TopicEntity bv30 = bv.get(29);    			*/
    			
    			pageContext.setAttribute("bv1", bv1);
    			pageContext.setAttribute("bv2", bv2);
    			pageContext.setAttribute("bv3", bv3);
    			pageContext.setAttribute("bv4", bv4);
    			pageContext.setAttribute("bv5", bv5);
    			pageContext.setAttribute("bv6", bv6);
    			pageContext.setAttribute("bv7", bv7);
    			pageContext.setAttribute("bv8", bv8);
    			pageContext.setAttribute("bv9", bv9);
    			pageContext.setAttribute("bv10", bv10);
    			pageContext.setAttribute("bv11", bv11);
    			pageContext.setAttribute("bv12", bv12);
    	/*		pageContext.setAttribute("bv13", bv13);
    			pageContext.setAttribute("bv14", bv14);
    			pageContext.setAttribute("bv15", bv15);
    			pageContext.setAttribute("bv16", bv16);
    			pageContext.setAttribute("bv17", bv17);
    			pageContext.setAttribute("bv18", bv18);
    			pageContext.setAttribute("bv19", bv19);
    			pageContext.setAttribute("bv20", bv20);
    			pageContext.setAttribute("bv21", bv21);
    			pageContext.setAttribute("bv22", bv22);
    			pageContext.setAttribute("bv23", bv23);
    			pageContext.setAttribute("bv24", bv24);
    			pageContext.setAttribute("bv25", bv25);
    			pageContext.setAttribute("bv26", bv26);
    			pageContext.setAttribute("bv27", bv27);
    			pageContext.setAttribute("bv28", bv28);
    			pageContext.setAttribute("bv29", bv29);
    			pageContext.setAttribute("bv30", bv30);			*/
    			
    			%>
    			
    			
    <div class="infoA">
        
                <ul>
            
                <li><a href="load?id=${pageScope.bv1.id }"> ${pageScope.bv1.title }  </a> </li>
            
                <li><a href="load?id=${pageScope.bv2.id }"> ${pageScope.bv2.title }</a> </li>
            
                <li><a href="load?id=${pageScope.bv3.id }"> ${pageScope.bv3.title }</a> </li>
            
                <li><a href="load?id=${pageScope.bv4.id }"> ${pageScope.bv4.title }</a> </li>
            
                <li><a href="load?id=${pageScope.bv5.id }"> ${pageScope.bv5.title }</a> </li>
            
                <li><a href="load?id=${pageScope.bv6.id }"> ${pageScope.bv6.title }</a> </li>
            
                <li><a href="load?id=${pageScope.bv7.id }"> ${pageScope.bv7.title }</a> </li>
            
                <li><a href="load?id=${pageScope.bv8.id }"> ${pageScope.bv8.title }</a> </li>
            
                <li><a href="load?id=${pageScope.bv9.id }"> ${pageScope.bv9.title }</a> </li>
            
                <li><a href="load?id=${pageScope.bv10.id }"> ${pageScope.bv10.title }</a> </li>
            
                <li><a href="load?id=${pageScope.bv11.id }"> ${pageScope.bv11.title }</a> </li>
            
                <li><a href="load?id=${pageScope.bv12.id }"> ${pageScope.bv12.title }</a> </li>
            
         
            
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
            
                <li><a href="load?id=${pageScope.bvmoinhat1.id }"> ${pageScope.bvmoinhat1.title } xa</a> </li>
            
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
							List<TopicEntity> tieudiem = TopicDAO.loadAllFocusTopic(true);
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

