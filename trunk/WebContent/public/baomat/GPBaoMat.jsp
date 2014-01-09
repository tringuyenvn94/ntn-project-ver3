<%@page import="entity.UserEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Giải pháp bảo mật</title>

<link rel="stylesheet" type="text/css" href="CSS/styleMenu.css"/>
<link rel="stylesheet" type="text/css" href="CSS/styleLayout.css"/>

</head>

<body>

	<div class="container">
    
		<div class="header">
			<div class="headermain">
				<div id="menu_top">
					<a href="trangchu.jsp">Trang chủ&nbsp;</a> | &nbsp; <a href="tintuccongnghe.jsp">Tin tức&nbsp;</a> |&nbsp; <a href="gioithieu.jsp">Giới thiệu&nbsp;</a> |&nbsp; <a href="game.jsp">Game &nbsp;</a> |&nbsp; <a href="lienhe.jsp">Liên hệ&nbsp;</a> |&nbsp; <a href="http://www.facebook.com"> <img src="Image/facebook.jpg" width="18" height="18" /></a>
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
           
                               
<div class="bag">
   	<div class="tit">
                <a href="trangchu.jsp"><img src="Image/icon_home.jpg" width="18" height="24" align="absmiddle" border="0"></a> »&nbsp;<a href="baomat.jsp">Bảo mật</a>&nbsp;»&nbsp;<a href="giaiphapbaomat.jsp">Giải pháp bảo mật</a>
        
    </div>
       
          <div class="title_article">
                    <a href="/apple-tang-the-qua-nhan-ngay-black-friday-105640"><span>
 Google tung "độc chiêu" phòng chống DDoS </span></a>
                </div>
                <div>
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tbody><tr>
                            <td class="img_top2">
                                <a href="/apple-tang-the-qua-nhan-ngay-black-friday-105640"><img src="Image/google-2.jpg" width="247" height="193" hspace="3" vspace="3" align="left" border="0"></a>
                            </td>
                            <td class="content_top" valign="top" align="left">
 Cho dù có cùng tên gọi với máy chơi game cầm tay của NVIDIA, Project Shield của Google là một dự án hoàn toàn độc lập sẽ giúp ích rất nhiều cho các trang web nhỏ.                           </td>
                        </tr>
                    </tbody></table>
                </div>
                		
                        
                    	<div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                   
                        <div class="subcontent2">
                            <a href="/chinh-phu-my-bi-phat-50-trieu-usd-vi-cai-phan-mem-lau-105658">
                                <img src="Image/Bao-mat.jpg" height="179" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/chinh-phu-my-bi-phat-50-trieu-usd-vi-cai-phan-mem-lau-105658">
 Mẹo bảo mật Google, Facebook và dịch vụ trực tuyến</a></p>
                            <p class="detail_ctt">
 Những thông tin gần đây về các hoạt động bí mật của chính phủ Mỹ, sự tăng cường các cuộc xâm phạm thông tin cá nhân và việc ảnh đại diện của bạn xuất hiện trên Google Ads đã làm dấy lên một vấn đề: Thông tin cá nhân trực tuyến của bạn chỉ được bảo vệ tối đa khi bạn có thể để mắt đến chúng.             </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/trung-quoc-nghien-cuu-cong-nghe-phat-hien-anh-da-chinh-sua-105655">
                                <img src="Image/Autorun.jpg" height="171" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/trung-quoc-nghien-cuu-cong-nghe-phat-hien-anh-da-chinh-sua-105655">
 "Tuyệt chiêu" diệt virus Autorun bằng tay </a></p>
                            <p class="detail_ctt">
 Trước tiên phải khẳng định, việc giải quyết lây lan virus qua chức năng Autorun của Windows có vô cùng nhiều cách. Những cách làm này khá thủ công, tuy nhiên nó giúp người thực hiện hiểu rõ hơn về các nguyên tắc bảo mật, an ninh cho hệ thống.                             </p>
            </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/my-se-cham-dut-dich-vu-dien-thoai-co-dinh-105648">
                                <img src="Image/Tan-cong-mang.jpg" height="164" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/my-se-cham-dut-dich-vu-dien-thoai-co-dinh-105648">
 Hanoi Telecom ra mắt giải pháp chống tấn công mạng</a></p>
                            <p class="detail_ctt">
 Ngày 6/8, Công ty Cổ phần công nghệ an ninh không gian mạng Việt Nam VNCS (thuộc Hanoi Telecom) đã giới thiệu giải pháp giám sát tập trung (VNCS Web Monitoring) nhằm phát hiện các cuộc tấn công mạng kịp thời và đưa ra cảnh báo theo thời gian thực.                             </p>
            </div>
                    
                       <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/microsoft-giam-gia-hang-loat-san-pham-trong-dip-ngay-thu-6-den-toi-105638">
                                <img src="Image/apple-11.jpg" height="150" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/microsoft-giam-gia-hang-loat-san-pham-trong-dip-ngay-thu-6-den-toi-105638">
 Trang khắc phục lỗi tấn công của Apple</a></p>
                            <p class="detail_ctt">
 Trang web dành cho nhà phát triển (developer) của Apple mới đây đã bị hacker tấn công khiến công ty phải "đại tu hoàn toàn" cơ sở hạ tầng. Hiện tại Apple đã giới thiệu một trang cập nhật những trạng thái mới nhất của việc khắc phục hậu quả từ vụ tấn công trên.                            </p>
            </div>
                    
                       <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/chau-au-doa-huy-giao-keo-voi-my-vi-nsa-105632">
                                <img src="Image/Bao-ve.jpg" height="146" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/chau-au-doa-huy-giao-keo-voi-my-vi-nsa-105632">
 8 cách bảo vệ thông tin cá nhân thời đại số </a></p>
                            <p class="detail_ctt">
 Người dùng có thể tự vệ bằng cách không lưu lại các thông tin duyệt web trên browser, luôn đặt mật khẩu cho các thiết bị di động của bạn để đề phòng các trường hợp "táy máy" không cần thiết hoặc kích hoạt tính năng mật khẩu hai tầng cho một số dịch vụ Internet.                              </p>
            </div>
                    
                       <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/qualcomm-dang-bi-dieu-tra-chong-doc-quyen-tai-qualcomm-105602">
                                <img src="Image/Antivirut-27.jpg" height="146" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/qualcomm-dang-bi-dieu-tra-chong-doc-quyen-tai-qualcomm-105602">
 Danh sách 26 đĩa CD boot antivirus để quét offline</a></p>
                            <p class="detail_ctt"> 
 Một đĩa CD cứu hộ là một công cụ bổ sung hữu ích được cung cấp bởi các công ty chống virus để hỗ trợ trong việc loại bỏ khó khăn những phần mềm độc hại mà không cần khởi động vào Windows.                             </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/gia-ipad-co-the-giam-trong-ngay-black-friday-nam-nay-105597">
                                <img src="Image/hacker-11.jpg" height="134" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/gia-ipad-co-the-giam-trong-ngay-black-friday-nam-nay-105597"> 
 Chương trình giúp người dùng kiểm tra mã độc DDoS </a></p>
                            <p class="detail_ctt">
 Các trang báo điện tử lớn tại Việt Nam hiện tại vẫn đang bị hacker tấn công từ chối dịch vụ (DDoS) dẫn tới việc khó truy cập. Diễn đàn hacker lớn nhất Việt Nam, HVA Online cho biết hiện mỗi tờ báo đang phải gánh từ 50-70 Mbps, con số này lớn hơn rất nhiều lần so với lưu lượng truy cập thông thường.                          </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2"><a href="/internet-khien-nganh-truyen-hinh-my-hap-hoi-105584"><a href="/internet-khien-nganh-truyen-hinh-my-hap-hoi-105584"><img src="Image/Two-step-Apple-ID.jpg" height="144" hspace="5" vspace="3" align="left" border="0" /></a>
                          <p class="title_ctt">
                              <a href="/internet-khien-nganh-truyen-hinh-my-hap-hoi-105584">
 Apple ID được tăng cường tính bảo mật </a></p>
                            <p class="detail_ctt">
 Nhà sản xuất iPhone, iPad buộc người dùng phải đăng nhập vào tài khoản Apple ID thông qua hai tầng mật khẩu.                              </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/trung-quoc-chinh-thuc-cung-cap-4g-tu-18-12-105578">
                                <img src="Image/Virus.jpg" height="147" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/trung-quoc-chinh-thuc-cung-cap-4g-tu-18-12-105578">
 Cách phòng chống nhiễm virus từ trình duyệt </a></p>
                            <p class="detail_ctt">
 Plugin là những đối tượng tấn công béo bở. Lỗ hổng plugin có thể bị lợi dụng trên tất cả các trình duyệt và trên nhiều hệ điều hành khác nhau. Một lỗ hổng plugin Flash có thể bị lợi dụng để khai thác trình duyệt Chrome, Firefox hoặc Internet Explorer trên máy tính chạy hệ điều hành Windows, Linux hoặc Mac.                             </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/2-3-so-vu-ro-ri-thong-tin-xay-ra-tren-may-chu-105558">
                                <img src="Image/Cuoc-goi-nho.jpg" width="233" height="143" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/2-3-so-vu-ro-ri-thong-tin-xay-ra-tren-may-chu-105558">
 Đã có giải pháp chặn các cuộc gọi nhỡ lừa đảo </a></p>
                            <p class="detail_ctt">
 Chiều ngày 27/2, Công ty Bkav cho biết đã tích hợp thành công giải pháp chặn các cuộc gọi nhỡ lừa đảo vào phần mềm bảo vệ Smartphone - Bkav Mobile Security.                             </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/gioi-chuc-duc-cam-dung-iphone-sau-be-boi-nghe-len-dien-thoai-105537">
                                <img src="Image/Bao-mat-2.jpg" width="287" height="141" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                          <a href="/gioi-chuc-duc-cam-dung-iphone-sau-be-boi-nghe-len-dien-thoai-105537">
 10 lời khuyên bảo mật trực tuyến từ Google </a></p>
                            <p class="detail_ctt">
 Có thể kể đến một số cách đơn giản như sử dụng mật khẩu phức tạp hoặc luôn khoá thiết bị sau khi sử dụng. Những lời khuyên này có thể áp dụng được cả trên máy tính lẫn thiết bị di động.                             </p>
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
                
                      <li> <a href="/kiem-hang-ngan-usd-tu-viec-bat-loi-bao-mat-cho-google-105514">
 Cách tắt Java để cải thiện bảo mật  </a> </li>
                    
                      <li> <a href="/giam-doc-windows-phone-khang-dinh-se-duoi-kip-doi-thu-105513">
 Microsoft sắp tung loạt bản vá lỗ hổng bảo mật mới  </a> </li>
                    
                      <li> <a href="/google-maps-phai-go-bo-hinh-anh-thi-the-mot-cau-be-105493">
 Cách nâng cao bảo mật thông tin cho trường học </a> </li>
                    
                      <li> <a href="/chuyen-gia-it-cua-nato-lanh-an-7-nam-tu-vi-trom-du-lieu-mat-105487">
 4 bài toán khó cho an ninh mạng 2013  </a> </li>
                    
                      <li> <a href="/apple-thu-lai-iphone-ipad-bi-tham-nuoc-105477">
 Mách bạn cách diệt virus hiệu quả nhất  </a> </li>
                    
                      <li> <a href="/ai-se-giet-chet-tien-ao-bitcoin-105455">
 FBI cảnh báo người dùng Android về Malware  </a> </li>
                    
                      <li> <a href="/anonymous-tan-cong-nhieu-co-quan-chinh-phu-my-105448"> 
 Một số quy tắc bảo mật cơ bản cho website </a> </li>
                    
                      <li> <a href="/chau-au-chinh-thuc-cho-dung-thiet-bi-dien-tu-tren-may-bay-105443">
 Tăng bảo mật máy tính thông qua DNS server  </a> </li>
                    
                      <li> <a href="/apple-dong-cua-itunes-connect-tu-21-12-den-27-12-105442">
 Bảo vệ an toàn thông tin trên mạng Wi-Fi  </a> </li>
                    
                      <li> <a href="/nhat-ban-ho-tro-asean-tang-cuong-an-ninh-mang-105436">
 Sử dụng tính năng bảo mật trong Galaxy S3  </a> </li>
                    
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
       		          <p><a href="https://www.facebook.com/ntncoporation?ref=hl" target="_blank"><img src="Image/Untitled.png" width="55" height="22"/></a></p>
                      
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
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">
Google tung "độc chiêu" phòng chống DDoS
</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">
Tin tặc Trung Quốc đánh cắp bí mật công ty Mỹ?
</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">
Trojan mới khó phát hiện tấn công lỗ hổng IE
 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">
Mã PIN smartphone sẽ lộ vì camera, microphone?
 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">
152 triệu tài khoản Adobe bị lộ trên web
</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">
CIA trả tiền cho dữ liệu cuộc gọi của AT&T
 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">
Microsoft, Facebook khuyến khích tìm lỗi bảo mật
 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">
Virus lây từ smartphone sang máy tính đã có ở VN
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
                                            <a href="/"><img src="Image/Tan-cong-mang.jpg" width="175" height="161" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/8-cong-dung-khong-ngo-cua-task-manager-105027">
 Hanoi Telecom ra mắt giải pháp chống tấn công mạng                                                </a>
                                            </div>
                                        </div>
                                        

                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/huong-dan-nang-cap-len-windows-8-1-bang-hinh-anh-105098"><img src="Image/hacker-11.jpg" width="142" height="159" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/huong-dan-nang-cap-len-windows-8-1-bang-hinh-anh-105098">
 Chương trình giúp người dùng kiểm tra mã độc DDoS                                                </a>
                                            </div>
                                        </div>
  
                                       	<div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/xoa-bo-du-lieu-dong-bo-tren-may-tu-windows-8-1-105119"><img src="Image/Bao-mat.jpg" width="142" height="147" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/xoa-bo-du-lieu-dong-bo-tren-may-tu-windows-8-1-105119">
 Mẹo bảo mật Google, Facebook và dịch vụ trực tuyến                                              </a>
                                            </div>
                                        </div>
                                                        
                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/kich-hoat-bo-go-tieng-viet-tren-ubuntu-13-10-105044"><img src="Image/google-2.jpg" width="142" height="160" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/kich-hoat-bo-go-tieng-viet-tren-ubuntu-13-10-105044">
 Google tung "độc chiêu" phòng chống DDoS                                                 </a>
                                            </div>
                                        </div>
                                     <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/"><img src="Image/Bao-mat(1).jpg" width="142" height="185" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/">
 Bảo mật smartphone Android chuyên nghiệp                                                </a>
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

