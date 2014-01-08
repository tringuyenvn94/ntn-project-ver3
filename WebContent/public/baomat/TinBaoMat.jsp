<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Tin bảo mật</title>

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
				<div id="memberbox"><a href="dangnhap.jsp">Đăng nhập</a> | <a href="quenmatkhau.jsp">Quên mật khẩu?</a> | <a href="dangky.jsp">Đăng ký</a></div>
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
                <a href="trangchu.jsp"><img src="Image/icon_home.jpg" width="18" height="24" align="absmiddle" border="0"></a> »&nbsp;<a href="baomat.jsp">Bảo mật</a>&nbsp;»&nbsp;<a href="tinbaomat.jsp">Tin bảo mật</a>
        
    </div>
       
          <div class="title_article">
                    <a href="/apple-tang-the-qua-nhan-ngay-black-friday-105640"><span>
Windows XP dễ nhiễm virus hơn so với Windows 8
</span></a>
                </div>
                <div>
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tbody><tr>
                            <td class="img_top2">
                                <a href="/apple-tang-the-qua-nhan-ngay-black-friday-105640"><img src="Image/windows1.jpg" width="247" height="265" hspace="3" vspace="3" align="left" border="0"></a>
                            </td>
                            <td class="content_top" valign="top" align="left">
Một bản báo cáo giám sát mới được công bố của Microsoft đã chỉ ra rằng, hệ điều hành Windows XP có khả năng bị lây nhiễm virus nhiều gấp hơn 5 lần so với Windows 8.
                          </td>
                        </tr>
                    </tbody></table>
                </div>
                		
                        
                    	<div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                   
                        <div class="subcontent2">
                            <a href="/chinh-phu-my-bi-phat-50-trieu-usd-vi-cai-phan-mem-lau-105658">
                                <img src="Image/Trojan-1.jpg" height="179" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/chinh-phu-my-bi-phat-50-trieu-usd-vi-cai-phan-mem-lau-105658">
Trojan mới khó phát hiện tấn công lỗ hổng IE
</a></p>
                            <p class="detail_ctt">
Một trojan mới vừa xuất hiện khai thác lỗ hổng trình duyệt web Internet Explorer (IE), và người dùng sẽ không dễ dàng tìm thấy nó vì chúng không nằm trên ổ cứng.
            </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/trung-quoc-nghien-cuu-cong-nghe-phat-hien-anh-da-chinh-sua-105655">
                                <img src="Image/pin-smartphone.jpg" height="171" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/trung-quoc-nghien-cuu-cong-nghe-phat-hien-anh-da-chinh-sua-105655">
Mã PIN smartphone sẽ lộ vì camera, microphone?
 </a></p>
                            <p class="detail_ctt">
Sử dụng chương trình PIN Skimmer, nhóm nghiên cứu từ Đại học Cambridge (Anh) phát hiện mã pin (chỉ dùng chữ số) có thể bị xác định nhờ máy ảnh và micophone điện thoại.
                            </p>
            </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/my-se-cham-dut-dich-vu-dien-thoai-co-dinh-105648">
                                <img src="Image/adobe.jpg" height="164" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/my-se-cham-dut-dich-vu-dien-thoai-co-dinh-105648">
152 triệu tài khoản Adobe bị lộ trên web
</a></p>
                            <p class="detail_ctt">
Một hãng phần mềm vừa phát hiện dữ liệu thuộc 152 triệu tài khoản Adobe, cho thấy những gì Adobe thừa nhận cuối tháng 10 thấp hơn rất nhiều so với thực tế.
                            </p>
            </div>
                    
                       <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/microsoft-giam-gia-hang-loat-san-pham-trong-dip-ngay-thu-6-den-toi-105638">
                                <img src="Image/tru-so-CIA.jpg" height="150" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/microsoft-giam-gia-hang-loat-san-pham-trong-dip-ngay-thu-6-den-toi-105638">
CIA trả tiền cho dữ liệu cuộc gọi của AT&T
</a></p>
                            <p class="detail_ctt">
Theo quan chức chính phủ, Cục Tình báo TW Mỹ (CIA) trả cho nhà mạng AT&T (Mỹ) 10 triệu USD mỗi năm để khai thác cơ sở dữ liệu bản ghi điện thoại khổng lồ, hỗ trợ công tác điều tra chống khủng bố.
                           </p>
            </div>
                    
                       <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/chau-au-doa-huy-giao-keo-voi-my-vi-nsa-105632">
                                <img src="Image/microsoft-va-facebook.jpg" height="146" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/chau-au-doa-huy-giao-keo-voi-my-vi-nsa-105632">
Microsoft, Facebook khuyến khích tìm lỗi bảo mật
 </a></p>
                            <p class="detail_ctt">
Microsoft và Facebook muốn cùng nhau tìm ra các lỗ hổng bảo mật bằng cách hợp tác tạo ra dự án mang tên HackerOne.
                             </p>
            </div>
                    
                       <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/qualcomm-dang-bi-dieu-tra-chong-doc-quyen-tai-qualcomm-105602">
                                <img src="Image/chrome.jpg" height="146" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/qualcomm-dang-bi-dieu-tra-chong-doc-quyen-tai-qualcomm-105602">
Google thắt chặt truy cập mật khẩu trên Chrome
</a></p>
                            <p class="detail_ctt"> 
Không như trước đây, việc truy cập vào các mật khẩu đã lưu trên Chrome sẽ cần thêm một bước xác nhận mật khẩu nữa.
                            </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/gia-ipad-co-the-giam-trong-ngay-black-friday-nam-nay-105597">
                                <img src="Image/D-Link-1.jpg" height="134" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/gia-ipad-co-the-giam-trong-ngay-black-friday-nam-nay-105597"> 
Modem D-Link, Tenda của Trung Quốc cài sẵn mã độc
 </a></p>
                            <p class="detail_ctt">
Các sản phẩm modem của một số tên tuổi lớn từ Trung Quốc như D-Link, Tenda được cài sẵn mã độc nên có thể bị đột nhập bất kỳ lúc nào mà không cần tới mật khẩu truy cập.
                         </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2"><a href="/internet-khien-nganh-truyen-hinh-my-hap-hoi-105584"><a href="/internet-khien-nganh-truyen-hinh-my-hap-hoi-105584"><img src="Image/Ma-doc11.jpg" height="144" hspace="5" vspace="3" align="left" border="0" /></a>
                          <p class="title_ctt">
                              <a href="/internet-khien-nganh-truyen-hinh-my-hap-hoi-105584">
45% doanh nghiệp Việt Nam nhiễm mã độc tự lây lan
 </a></p>
                            <p class="detail_ctt">
Theo khảo sát của Hiệp hội An toàn thông tin Việt Nam (VNISA), khả năng tự bảo vệ trước các cuộc tấn công mạng của các tổ chức, doanh nghiệp Việt Nam còn rất yếu.
                             </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/trung-quoc-chinh-thuc-cung-cap-4g-tu-18-12-105578">
                                <img src="Image/Tin-nhan-rac.jpg" height="147" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/trung-quoc-chinh-thuc-cung-cap-4g-tu-18-12-105578">
Máy tính Việt phát tán hơn 3 tỷ tin nhắn rác/ngày
 </a></p>
                            <p class="detail_ctt">
Theo Trung tâm ứng cứu máy tính khẩn cấp Việt Nam Vncert, mỗi ngày các máy tính ở Việt Nam đang phát tán hơn 3,33 tỷ tin nhắn rác.
                            </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/2-3-so-vu-ro-ri-thong-tin-xay-ra-tren-may-chu-105558">
                                <img src="Image/Hacker-1.jpg" height="142" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/2-3-so-vu-ro-ri-thong-tin-xay-ra-tren-may-chu-105558">
Đoạt tài khoản email người quen, phát tán mã độc
 </a></p>
                            <p class="detail_ctt">
Tại hội thảo hacker mũ trắng đầu tiên được tổ chức tại Việt Nam ngày 29/10, ông Vũ Ngọc Sơn, Phó Chủ tịch phụ trách Nghiên cứu Phát triển của Bkav tiết lộ, hầu hết các tổ chức doanh nghiệp ở Việt Nam đều bị hacker tấn công bằng các phần mềm gián điệp.
                            </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/gioi-chuc-duc-cam-dung-iphone-sau-be-boi-nghe-len-dien-thoai-105537">
                                <img src="Image/PHP.jpg" width="287" height="160" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                          <a href="/gioi-chuc-duc-cam-dung-iphone-sau-be-boi-nghe-len-dien-thoai-105537">
PHP.net xác nhận website bị nhiễm mã độc
 </a></p>
                            <p class="detail_ctt">
Từ khoảng 1 giờ chiều 24/10, Google cảnh báo trang web php.net dính mã độc và ngăn người dùng truy cập. Ban đầu, nhóm quản lý php.net cho rằng Google cảnh báo nhầm, nhưng đến buổi tối họ đã chính thức xác nhận website bị nhiễm mã độc.
                            </p>
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
Dùng Flash trên OS X Mavericks sẽ an toàn hơn
 </a> </li>
                    
                      <li> <a href="/giam-doc-windows-phone-khang-dinh-se-duoi-kip-doi-thu-105513">
Hàng nghìn người dính virus do tải GTA V "nhái"
 </a> </li>
                    
                      <li> <a href="/google-maps-phai-go-bo-hinh-anh-thi-the-mot-cau-be-105493">
Apple có thể đọc được nội dung tin nhắn iMessage
</a> </li>
                    
                      <li> <a href="/chuyen-gia-it-cua-nato-lanh-an-7-nam-tu-vi-trom-du-lieu-mat-105487">
80% smartphone dễ bị phần mềm độc hại tấn công
 </a> </li>
                    
                      <li> <a href="/apple-thu-lai-iphone-ipad-bi-tham-nuoc-105477">
Giả mạo Facebook để lấy cắp thông tin cá nhân
 </a> </li>
                    
                      <li> <a href="/ai-se-giet-chet-tien-ao-bitcoin-105455">
Phát hiện lỗ hổng bảo mật trên phần mềm vBulletin
 </a> </li>
                    
                      <li> <a href="/anonymous-tan-cong-nhieu-co-quan-chinh-phu-my-105448"> 
Graph Search trở thành thiên đường của hacker
</a> </li>
                    
                      <li> <a href="/chau-au-chinh-thuc-cho-dung-thiet-bi-dien-tu-tren-may-bay-105443">
Nguy cơ 5,3 triệu máy tính tại Việt Nam gặp rủi ro
 </a> </li>
                    
                      <li> <a href="/apple-dong-cua-itunes-connect-tu-21-12-den-27-12-105442">
Lợi dụng Apple để lừa đảo người dùng
 </a> </li>
                    
                      <li> <a href="/nhat-ban-ho-tro-asean-tang-cuong-an-ninh-mang-105436">
HP kêu gọi khách hàng xem xét chiến lược bảo mật
 </a> </li>
                    
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
                                            <a href="/"><img src="Image/D-Link-1.jpg" width="175" height="161" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/8-cong-dung-khong-ngo-cua-task-manager-105027">
Modem D-Link, Tenda của Trung Quốc cài sẵn mã độc
                                                </a>
                                            </div>
                                        </div>
                                        

                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/huong-dan-nang-cap-len-windows-8-1-bang-hinh-anh-105098"><img src="Image/PHP.jpg" width="142" height="159" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/huong-dan-nang-cap-len-windows-8-1-bang-hinh-anh-105098">
PHP.net xác nhận website bị nhiễm mã độc
                                                </a>
                                            </div>
                                        </div>
  
                                       	<div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/xoa-bo-du-lieu-dong-bo-tren-may-tu-windows-8-1-105119"><img src="Image/windows1.jpg" width="142" height="147" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/xoa-bo-du-lieu-dong-bo-tren-may-tu-windows-8-1-105119">
Windows XP dễ nhiễm virus hơn so với Windows 8
                                             </a>
                                            </div>
                                        </div>
                                                        
                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/kich-hoat-bo-go-tieng-viet-tren-ubuntu-13-10-105044"><img src="Image/iMessage.jpg" width="142" height="160" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/kich-hoat-bo-go-tieng-viet-tren-ubuntu-13-10-105044">
Apple có thể đọc được nội dung tin nhắn iMessage
                                                </a>
                                            </div>
                                        </div>
       
                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/modem-d-link-tenda-cua-trung-quoc-cai-san-ma-doc-105160"><img src="Image/Hacker-1.jpg" width="142" height="153" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/nhieu-modem-d-link-tenda-cua-trung-quoc-da-duoc-cai-san-ma-doc-105160">
Đoạt tài khoản email người quen, phát tán mã độc
                                                </a>
                                            </div>
                                        </div>
                   
                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/"><img src="Image/GTA-V.jpg" width="142" height="162" hspace="3" vspace="3" align="left" border="0"></a>    
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/">
Hàng nghìn người dính virus do tải GTA V "nhái"
                                                </a>
                                            </div>
                                        </div>

                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/"><img src="Image/Trojan-1.jpg" width="142" height="169" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/">
Trojan mới khó phát hiện tấn công lỗ hổng IE
                                                </a>
                                            </div>
                                        </div>

                                       	<div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/"><img src="Image/adobe.jpg" width="142" height="176" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/">
152 triệu tài khoản Adobe bị lộ trên web
                                                </a>
                                            </div>
                                        </div>

                                       	<div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/"><img src="Image/Ma-doc11.jpg" width="142" height="145" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/">
45% doanh nghiệp Việt Nam nhiễm mã độc tự lây lan
                                                </a>
                                            </div>
                                        </div>
                                        
                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/"><img src="Image/chrome.jpg" width="142" height="185" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/">
Google thắt chặt truy cập mật khẩu trên Chrome
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

