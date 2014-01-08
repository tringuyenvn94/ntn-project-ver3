<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Virus</title>

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
                <a href="trangchu.jsp"><img src="Image/icon_home.jpg" width="18" height="24" align="absmiddle" border="0"></a> »&nbsp;<a href="baomat.jsp">Bảo mật</a>&nbsp;»&nbsp;<a href="virus.jsp">Virus</a>
        
    </div>
       
          <div class="title_article">
                    <a href="/apple-tang-the-qua-nhan-ngay-black-friday-105640"><span>
Virus lây từ smartphone sang máy tính đã có ở VN
</span></a>
                </div>
                <div>
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tbody><tr>
                            <td class="img_top2">
                                <a href="/apple-tang-the-qua-nhan-ngay-black-friday-105640"><img src="Image/ma-doc.jpg" width="247" height="265" hspace="3" vspace="3" align="left" border="0"></a>
                            </td>
                            <td class="content_top" valign="top" align="left">
Các chương trình độc hại thường được viết để hoạt động trên một hệ điều hành nhất định, tuy nhiên, một loại phần mềm gián điệp (spyware) vừa được phát hiện đang tấn công máy tính từ điện thoại di động.
                          </td>
                        </tr>
                    </tbody></table>
                </div>
                		
                        
                    	<div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                   
                        <div class="subcontent2">
                            <a href="/chinh-phu-my-bi-phat-50-trieu-usd-vi-cai-phan-mem-lau-105658">
                                <img src="Image/hacker.jpg" height="179" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/chinh-phu-my-bi-phat-50-trieu-usd-vi-cai-phan-mem-lau-105658">
Bùng nổ virus file Infector

</a></p>
                            <p class="detail_ctt">
Hãng bảo mật Trend Micro vừa phát hiện một biến thể mới của virus file Infector, có khả năng khai thác các tập tin của Java và PDF để chèn vào mã độc và lấy trộm thông tin cá nhân người dùng.
            </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/trung-quoc-nghien-cuu-cong-nghe-phat-hien-anh-da-chinh-sua-105655">
                                <img src="Image/USB.jpg" height="171" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/trung-quoc-nghien-cuu-cong-nghe-phat-hien-anh-da-chinh-sua-105655">
Xuất hiện loại virus mới bùng phát qua USB

 </a></p>
                            <p class="detail_ctt">
Hệ thống giám sát virus của Công ty An ninh mạng Bkav vừa phát hiện một loại virus mới W32.UsbFakeDrive có tốc độ lây nhiễm chóng mặt. Các chuyên gia nhận định đây sẽ là mã độc thay thế các dòng virus AutoRun, phát tán qua USB trước đây.
                            </p>
            </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/my-se-cham-dut-dich-vu-dien-thoai-co-dinh-105648">
                                <img src="Image/ung-dung-doc.jpg" height="164" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/my-se-cham-dut-dich-vu-dien-thoai-co-dinh-105648">
Phát hiện ứng dụng "độc" nhìn xuyên quần áo

</a></p>
                            <p class="detail_ctt">
Bộ phận Phản ứng bảo mật của Symantec mới đây đã phát hiện một ứng dụng độc hại có tên gọi Android.Uracto, để lừa phỉnh mọi người về khả năng có thể nhìn xuyên thấu quần áo.
                            </p>
            </div>
                    
                       <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/microsoft-giam-gia-hang-loat-san-pham-trong-dip-ngay-thu-6-den-toi-105638">
                                <img src="Image/Trojan-ads.jpg" height="150" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/microsoft-giam-gia-hang-loat-san-pham-trong-dip-ngay-thu-6-den-toi-105638">
Trojan chèn quảng cáo vào trình duyệt OS X

</a></p>
                            <p class="detail_ctt">
Loại malware này giả dạng thành phần mềm nhằm lây nhiễm vào trình duyệt cũng như website mà người dùng đang xem.
                           </p>
            </div>
                    
                       <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/chau-au-doa-huy-giao-keo-voi-my-vi-nsa-105632">
                                <img src="Image/Virus21.jpg" height="146" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/chau-au-doa-huy-giao-keo-voi-my-vi-nsa-105632">
Xuất hiện gần 3.000 dòng virus máy tính mới ở VN

 </a></p>
                            <p class="detail_ctt">
Thống kê của Công ty An ninh mạng Bkav cho thấy trong tháng 2/2013 đã có 2.980 dòng virus máy tính mới xuất hiện tại Việt Nam.
                             </p>
            </div>
                    
                       <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/qualcomm-dang-bi-dieu-tra-chong-doc-quyen-tai-qualcomm-105602">
                                <img src="Image/Stuxnet.jpg" height="146" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/qualcomm-dang-bi-dieu-tra-chong-doc-quyen-tai-qualcomm-105602">
Phát hiện mới về phiên bản đầu của mã độc Stuxnet

</a></p>
                            <p class="detail_ctt"> 
Chiều 27/2/2013, Symantec công bố tại Việt Nam thông tin mới về phiên bản mã độc Stuxnet giai đoạn mới hình thành, và cho rằng dự án Stuxnet có thể được khởi tạo từ năm 2005 thay vì năm 2009 như những công bố trước đây.
                            </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/gia-ipad-co-the-giam-trong-ngay-black-friday-nam-nay-105597">
                                <img src="Image/Ma-doc-1.jpg" height="134" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/gia-ipad-co-the-giam-trong-ngay-black-friday-nam-nay-105597"> 
3 “Cỗ máy” quét virus, mã độc cho Facebook

 </a></p>
                            <p class="detail_ctt">
Với sự phổ biến ngày càng rộng rãi của Facebook, phần mềm độc hại cũng ngày càng trở nên hoành hành dữ dội trên Facebook.
                         </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2"><a href="/internet-khien-nganh-truyen-hinh-my-hap-hoi-105584"><a href="/internet-khien-nganh-truyen-hinh-my-hap-hoi-105584"><img src="Image/android1.jpg" height="144" hspace="5" vspace="3" align="left" border="0" /></a>
                          <p class="title_ctt">
                              <a href="/internet-khien-nganh-truyen-hinh-my-hap-hoi-105584">
Phát hiện ứng dụng Android mã độc ở Google Play

 </a></p>
                            <p class="detail_ctt">
Nhiều ứng dụng mã độc ẩn mình dưới vỏ bọc là các game nổi tiếng như Temple Run đã ẩn trên chợ ứng dụng Google Play.
                             </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/trung-quoc-chinh-thuc-cung-cap-4g-tu-18-12-105578">
                                <img src="Image/Apple-OS-X.jpg" height="147" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/trung-quoc-chinh-thuc-cung-cap-4g-tu-18-12-105578">
Apple chặn trojan SMSSend trên OS X

 </a></p>
                            <p class="detail_ctt">
Phần mềm chứa mã độc có thể khiến người dùng phải trả chi phí lớn cho số điện thoại mà họ đã đăng ký trên máy tính.
                            </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/2-3-so-vu-ro-ri-thong-tin-xay-ra-tren-may-chu-105558">
                                <img src="Image/anonymous.jpg" height="142" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/2-3-so-vu-ro-ri-thong-tin-xay-ra-tren-may-chu-105558">
Anonymous tuyên bố chiến tranh mạng với Syria

 </a></p>
                            <p class="detail_ctt">
Giới truyền thông cho hay, nhóm tin tặc lớn nhất thế giới Anonymous vừa tuyên bố sẽ tiến hành chiến tranh mạng chống lại chính phủ Syria, chỉ một ngày sau khi nước này gây ra sự phẫn nộ bằng việc chặn truy cập Internet của người dân.
                            </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/gioi-chuc-duc-cam-dung-iphone-sau-be-boi-nghe-len-dien-thoai-105537">
                                <img src="Image/thu-rac.jpg" width="287" height="160" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                          <a href="/gioi-chuc-duc-cam-dung-iphone-sau-be-boi-nghe-len-dien-thoai-105537">
Cẩn thận những chiêu bẫy thư rác mùa Giáng sinh

 </a></p>
                            <p class="detail_ctt">
Còn hơn một tháng nữa mới tới Giáng sinh nhưng những kẻ phát tán thư rác đã lên kế hoạch cho cả một “kỳ nghỉ lễ thư rác” của chúng.
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
Skyfall 2012 lấy cảm hứng từ virus Stuxnet
 </a> </li>
                    
                      <li> <a href="/giam-doc-windows-phone-khang-dinh-se-duoi-kip-doi-thu-105513">
Kaspersky 2013 sắp ra mắt tại Việt Nam
 </a> </li>
                    
                      <li> <a href="/google-maps-phai-go-bo-hinh-anh-thi-the-mot-cau-be-105493">
Skype đang bị sâu Dorkbot hoành hành
</a> </li>
                    
                      <li> <a href="/chuyen-gia-it-cua-nato-lanh-an-7-nam-tu-vi-trom-du-lieu-mat-105487">
Những nguy cơ từ malware và cách phòng tránh
 </a> </li>
                    
                      <li> <a href="/apple-thu-lai-iphone-ipad-bi-tham-nuoc-105477">
8 cách kiểm tra link an toàn
 </a> </li>
                    
                      <li> <a href="/ai-se-giet-chet-tien-ao-bitcoin-105455">
Những điều cần biết về malware Gauss
 </a> </li>
                    
                      <li> <a href="/anonymous-tan-cong-nhieu-co-quan-chinh-phu-my-105448"> 
Mật khẩu đơn giản là "mồi béo" của sâu Conficker
</a> </li>
                    
                      <li> <a href="/chau-au-chinh-thuc-cho-dung-thiet-bi-dien-tu-tren-may-bay-105443">
Phân biệt các dạng Malware
 </a> </li>
                    
                      <li> <a href="/apple-dong-cua-itunes-connect-tu-21-12-den-27-12-105442">
Những loại virus “ăn thịt” máy tính siêu tốc
 </a> </li>
                    
                      <li> <a href="/nhat-ban-ho-tro-asean-tang-cuong-an-ninh-mang-105436">
Một số thủ thuật đơn giản để đối phó với Malware
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
                                            <a href="/"><img src="Image/android1.jpg" width="175" height="161" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/8-cong-dung-khong-ngo-cua-task-manager-105027">
Phát hiện ứng dụng Android mã độc ở Google Play

                                                </a>
                                            </div>
                                        </div>
                                        

                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/huong-dan-nang-cap-len-windows-8-1-bang-hinh-anh-105098"><img src="Image/Stuxnet.jpg" width="142" height="159" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/huong-dan-nang-cap-len-windows-8-1-bang-hinh-anh-105098">
Phát hiện mới về phiên bản đầu của mã độc Stuxnet

                                                </a>
                                            </div>
                                        </div>
  
                                       	<div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/xoa-bo-du-lieu-dong-bo-tren-may-tu-windows-8-1-105119"><img src="Image/anonymous.jpg" width="142" height="147" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/xoa-bo-du-lieu-dong-bo-tren-may-tu-windows-8-1-105119">
Anonymous tuyên bố chiến tranh mạng với Syria

                                             </a>
                                            </div>
                                        </div>
                                                        
                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/kich-hoat-bo-go-tieng-viet-tren-ubuntu-13-10-105044"><img src="Image/ma-doc.jpg" width="142" height="160" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/kich-hoat-bo-go-tieng-viet-tren-ubuntu-13-10-105044">
Virus lây từ smartphone sang máy tính đã có ở VN
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

