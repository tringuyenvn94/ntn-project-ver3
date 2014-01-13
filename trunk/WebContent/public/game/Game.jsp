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
<title>Game</title>
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
					<li id="item_8" class="item menu"><a href="game.jsp"><span> Game </span></a>
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
           
                               
<div class="bag">
   
       					<%
                        	
                        	List<TopicEntity> game = TopicDAO.loadByMainId("game");
                        	TopicEntity game1 = game.get(0);
                        	
                        	pageContext.setAttribute("game1", game1);
                        
                       %>
       		
       		
                <div class="title_article">
                    <a href="load?id=${pageScope.game1.id }"><span>${pageScope.game1.title }</span></a>
                </div>
                <div>
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tbody><tr>
                            <td class="img_top2">
                                <a href="load?id=${pageScope.game1.id }"><img src="${pageScope.game1.url_daidien }" width="247" height="265" hspace="3" vspace="3" align="left" border="0"></a>
                            </td>
                            <td class="content_top" valign="top" align="left">
												${pageScope.game1.header }
                          </td>
                        </tr>
                    </tbody></table>
                </div>
                		<div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent">
                        
                        	<%
                        	List<TopicEntity> gamesub = TopicDAO.loadBySubMenu("game");
                        	TopicEntity gamesub1 = gamesub.get(0);
                        	TopicEntity gamesub2 = gamesub.get(1);
                        	TopicEntity gamesub3 = gamesub.get(2);
                        	TopicEntity gamesub4 = gamesub.get(3);
                        	TopicEntity gamesub5 = gamesub.get(4);
                        	TopicEntity gamesub6 = gamesub.get(5);
                        	TopicEntity gamesub7 = gamesub.get(6);
                        	TopicEntity gamesub8 = gamesub.get(7);
                        	TopicEntity gamesub9 = gamesub.get(8);
                        	TopicEntity gamesub10 = gamesub.get(9);
                        	TopicEntity gamesub11 = gamesub.get(10);
                        	TopicEntity gamesub12 = gamesub.get(11);
                        	TopicEntity gamesub13 = gamesub.get(12);
                        	//TopicEntity gamesub14 = gamesub.get(13);

                        	
                        	pageContext.setAttribute("gamesub1", gamesub1);
                        	pageContext.setAttribute("gamesub2", gamesub2);
                        	pageContext.setAttribute("gamesub3", gamesub3);
                        	pageContext.setAttribute("gamesub4", gamesub4);
                        	pageContext.setAttribute("gamesub5", gamesub5);
                        	pageContext.setAttribute("gamesub6", gamesub6);
                        	pageContext.setAttribute("gamesub7", gamesub7);
                        	pageContext.setAttribute("gamesub8", gamesub8);
                        	pageContext.setAttribute("gamesub9", gamesub9);
                        	pageContext.setAttribute("gamesub10", gamesub10);
                        	pageContext.setAttribute("gamesub11", gamesub11);
                        	pageContext.setAttribute("gamesub12", gamesub12);
                        	pageContext.setAttribute("gamesub13", gamesub13);
                        	//pageContext.setAttribute("gamesub14", gamesub14);
                        
                        %>
                        
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tbody><tr>
                            
                                <td>
                                    <span>
                                        <div class="boxsub">
                                            <a href="load?id=${pageScope.gamesub1.id }">
                                                <img src="${pageScope.gamesub1.url_daidien }" border="0">
                                            </a>
                                        </div>
                                        <div class="title_boxsub">
                                            <a href="load?id=${pageScope.gamesub1.id }">
												${pageScope.gamesub1.title }
</a>
                                        </div>
                                    </span>
                                </td>
                            
                                <td>
                                    <span>
                                        <div class="boxsub">
                                            <a href="load?id=${pageScope.gamesub2.id }">
                                                <img src="${pageScope.gamesub2.url_daidien }" border="0">
                                            </a>
                                        </div>
                                        <div class="title_boxsub">
                                            <a href="load?id=${pageScope.gamesub2.id }">
                                                ${pageScope.gamesub2.title }
</a>
                                        </div>
                                    </span>
                                </td>
                            
                                <td>
                                    <span>
                                        <div class="boxsub">
                                            <a href="load?id=${pageScope.gamesub3.id }">
                                                <img src="${pageScope.gamesub3.url_daidien }" border="0">
                                            </a>
                                        </div>
                                        <div class="title_boxsub">
                                            <a href="load?id=${pageScope.gamesub3.id }">
                                                ${pageScope.gamesub3.title }
</a>
                                        </div>
                                    </span>
                                </td>
                            
                                </tr> </tbody></table>
                            
                    </div>
                    	<div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                   
                        <div class="subcontent2">
                            <a href="load?id=${pageScope.gamesub4.id }">
                                <img src="${pageScope.gamesub4.url_daidien }" height="179" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="load?id=${pageScope.gamesub4.id }">
             ${pageScope.gamesub4.title }
</a></p>
                            <p class="detail_ctt">
										${pageScope.gamesub4.header }            
</div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="load?id=${pageScope.gamesub5.id }">
                                <img src="${pageScope.gamesub5.url_daidien }" height="171" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="load?id=${pageScope.gamesub5.id }">    ${pageScope.gamesub5.title }
 </a></p>
                            <p class="detail_ctt">
								${pageScope.gamesub5.header }     
                       </p>
            </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="load?id=${pageScope.gamesub6.id }">
                                <img src="${pageScope.gamesub6.url_daidien }" height="164" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="load?id=${pageScope.gamesub6.id }">
                         ${pageScope.gamesub6.title }
</a></p>
                            <p class="detail_ctt">
							${pageScope.gamesub6.header } 
							 </p>
            </div>
                    
                       <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="load?id=${pageScope.gamesub7.id }">
                                <img src="${pageScope.gamesub7.url_daidien }" height="150" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="load?id=${pageScope.gamesub7.id }">
                          ${pageScope.gamesub7.title }  </a></p>
                            <p class="detail_ctt">
									${pageScope.gamesub7.header } 
									  </p>
            </div>
                    
                       <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="load?id=${pageScope.gamesub8.id }">
                                <img src="${pageScope.gamesub8.url_daidien }" height="146" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="load?id=${pageScope.gamesub8.id }"> ${pageScope.gamesub8.title } </a></p>
                            <p class="detail_ctt">
 									${pageScope.gamesub8.header } 
  </p>
            </div>
                    
                       <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="load?id=${pageScope.gamesub9.id }">
                                <img src="${pageScope.gamesub9.url_daidien }" height="146" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="load?id=${pageScope.gamesub9.id }">
                          ${pageScope.gamesub9.title } </a></p>
                            <p class="detail_ctt"> ${pageScope.gamesub9.header }                           </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="load?id=${pageScope.gamesub10.id }">
                                <img src="${pageScope.gamesub10.url_daidien }" height="134" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="load?id=${pageScope.gamesub10.id }"> ${pageScope.gamesub10.title } </a></p>
                            <p class="detail_ctt">
 								${pageScope.gamesub10.header }                            </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2"><a href="load?id=${pageScope.gamesub11.id }"><a href="load?id=${pageScope.gamesub11.id }"><img src="${pageScope.gamesub11.url_daidien }" height="144" hspace="5" vspace="3" align="left" border="0" /></a></a>
                          <p class="title_ctt">
                              <a href="load?id=${pageScope.gamesub11.id }">
                          ${pageScope.gamesub11.title } </a></p>
                            <p class="detail_ctt">
							${pageScope.gamesub11.header }
							  </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="load?id=${pageScope.gamesub12.id }">
                                <img src="${pageScope.gamesub12.url_daidien }" height="147" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="load?id=${pageScope.gamesub12.id }">
                          ${pageScope.gamesub12.title } </a></p>
                            <p class="detail_ctt">
									${pageScope.gamesub12.header }       </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="load?id=${pageScope.gamesub13.id }">
                                <img src="${pageScope.gamesub13.url_daidien }" height="142" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="load?id=${pageScope.gamesub13.id }">
                          ${pageScope.gamesub13.title } </a></p>
                            <p class="detail_ctt">
									${pageScope.gamesub13.header } </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="load?id=${pageScope.gamesub14.id }">
                                <img src="${pageScope.gamesub14.url_daidien }" width="287" height="160" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                          <a href="load?id=${pageScope.gamesub14.id }"> ${pageScope.gamesub14.title } </a></p>
                            <p class="detail_ctt">
									${pageScope.gamesub14.header }   </p>
          </div>
                    
                       <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        
                    
                        <div class="lines">
                            <img src="../../../Styles/images/kengang_netdut_digi_03.jpg"></div>
                        <div class="news_other">
                   CÁC TIN KHÁC</div>
          <div class="title_news">
                
                <ul>
                
                      <li> <a href="/kiem-hang-ngan-usd-tu-viec-bat-loi-bao-mat-cho-google-105514"> VLTK phiên bản 3D - WoW phương Đông </a> </li>
                    
                      <li> <a href="/giam-doc-windows-phone-khang-dinh-se-duoi-kip-doi-thu-105513">NgânLượng.vn tiếp tay cho game không phép nước ngoài tại Việt Nam </a> </li>
                    
                      <li> <a href="/google-maps-phai-go-bo-hinh-anh-thi-the-mot-cau-be-105493">Doanh nghiệp Trung Quốc vẫn phát hành game không phép tại Việt Nam </a> </li>
                    
                      <li> <a href="/chuyen-gia-it-cua-nato-lanh-an-7-nam-tu-vi-trom-du-lieu-mat-105487">Ra mắt cổng thanh toán game và nội dung số quốc tế </a> </li>
                    
                      <li> <a href="/apple-thu-lai-iphone-ipad-bi-tham-nuoc-105477">VLTK phiên bản 3D bổ sung hình thức thu phí theo phút </a> </li>
                    
                      <li> <a href="/ai-se-giet-chet-tien-ao-bitcoin-105455">Ông chủ “đế chế” game video Nintendo qua đời </a> </li>
                    
                      <li> <a href="/anonymous-tan-cong-nhieu-co-quan-chinh-phu-my-105448"> Lucky Man giành “ngôi vương” đầu tiên của “Siêu Hùng Đại Chiến"</a> </li>
                    
                      <li> <a href="/chau-au-chinh-thuc-cho-dung-thiet-bi-dien-tu-tren-may-bay-105443">FIFA Online 2 đóng cửa, FIFA Online 3 đón nhận game thủ </a> </li>
                    
                      <li> <a href="/apple-dong-cua-itunes-connect-tu-21-12-den-27-12-105442"> Game của Koram Game vẫn phát hành công khai tại Việt Nam </a> </li>
                    
                      <li> <a href="/nhat-ban-ho-tro-asean-tang-cuong-an-ninh-mang-105436"> VLTK phiên bản 3D tiếp tục tặng ngày chơi cho tân thủ </a> </li>
                    
                </ul>
                
                      
                </div>
              
          </div>
            
              <div class="page">
                    <span>Trang: [<b>1</b>] [<a href="/tintuc/tin-quoc-te/2" title="Qua trang 2">2</a>] [<a href="/tintuc/tin-quoc-te/3" title="Qua trang 3">3</a>] [<a href="/tintuc/tin-quoc-te/731" title="Qua trang cuối">Cuối</a>] <br>Có tất cả 16803 bài viết </span>
              
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
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Đưa game mobile đồ họa đỉnh cao về Việt Nam


</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Chọn hệ điều hành trải nghiệm Ngọa Long Mobile



</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Qualcomm đột phá trải nghiệm game di động với Địa hình thông minh Vuforia



 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Nhìn lại 5 năm Giải vô địch thể thao điện tử Việt Nam



 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">27/10: Tôn vinh những tài năng thể thao điện tử tại Hà Nội


</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Plants vs Zombies 2 đã có mặt trên Android
 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Freedom và Doping đối đầu tại chung kết VEC Hà Nội


 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">VEC đã xác định được ngôi vương tại khu vực miền Nam



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

