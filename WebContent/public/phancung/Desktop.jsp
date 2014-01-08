<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Desktop</title>

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
           
                               
<div class="bag">
   	<div class="tit">
                <a href="trangchu.jsp"><img src="Image/icon_home.jpg" width="18" height="24" align="absmiddle" border="0"></a> »&nbsp;<a href="phancung.jsp">Phần cứng</a>&nbsp;»&nbsp;<a href="desktop.jsp">Desktop</a>
        
    </div>
       
          <div class="title_article">
                    <a href="/apple-tang-the-qua-nhan-ngay-black-friday-105640"><span>
Apple Mac Pro giá 63 triệu đồng, bán ra tháng 12
</span></a>
                </div>
                <div>
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tbody><tr>
                            <td class="img_top2">
                                <a href="/apple-tang-the-qua-nhan-ngay-black-friday-105640"><img src="Image/Mac-Pro.jpg" width="247" height="265" hspace="3" vspace="3" align="left" border="0"></a>
                            </td>
                            <td class="content_top" valign="top" align="left">
Thiết bị của Apple từng khiến cả thế giới bất ngờ - Mac Pro – có giá khởi điểm từ 2.999 USD và bán ra từ tháng 12 năm nay.
                          </td>
                        </tr>
                    </tbody></table>
                </div>
                		
                        
                    	<div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                   
                        <div class="subcontent2">
                            <a href="/chinh-phu-my-bi-phat-50-trieu-usd-vi-cai-phan-mem-lau-105658">
                                <img src="Image/Mac-Pro-2013.jpg" height="179" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/chinh-phu-my-bi-phat-50-trieu-usd-vi-cai-phan-mem-lau-105658">
Giá Mac Pro 2013 có thể lên tới 14.000 USD

</a></p>
                            <p class="detail_ctt">
Mac Pro 2013 có giá khởi điểm 3000 USD nhưng nếu lựa chọn cấu hình cao nhất, người dùng sẽ phải trả một cái giá lên tới 14.000 USD.
            </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/trung-quoc-nghien-cuu-cong-nghe-phat-hien-anh-da-chinh-sua-105655">
                                <img src="Image/Sieu-may-tinh.jpg" height="171" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/trung-quoc-nghien-cuu-cong-nghe-phat-hien-anh-da-chinh-sua-105655">
Siêu máy tính có khả năng dự báo thời tiết

 </a></p>
                            <p class="detail_ctt">
Có khả năng dự báo về cường độ và đường đi của cơn bão bốn ngày trước khi nó hình thành, đó chính là sức mạnh vượt trội của siêu máy tính trị giá 30 triệu bảng - "bảo bối" của Cơ quan Khí tượng Thủy văn Anh (Met), vừa mới được lộ diện.
                            </p>
            </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/my-se-cham-dut-dich-vu-dien-thoai-co-dinh-105648">
                                <img src="Image/MSI-1.jpg" height="164" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/my-se-cham-dut-dich-vu-dien-thoai-co-dinh-105648">
MSI ra bộ đôi All In One cấu hình cao

</a></p>
                            <p class="detail_ctt">
Hãng công nghệ MSI vừa ra mắt bộ đôi máy tính All In One (AIO) là AE221 và AE270. Máy tính All In One hiện nay đang trở thành xu thế mua sắm mới nhờ thiết kế đẹp và gọn nhẹ hơn các dòng máy tính để bàn truyền thống.
                            </p>
            </div>
                    
                       <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/microsoft-giam-gia-hang-loat-san-pham-trong-dip-ngay-thu-6-den-toi-105638">
                                <img src="Image/Sieu-may-tinh(1).jpg" height="150" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/microsoft-giam-gia-hang-loat-san-pham-trong-dip-ngay-thu-6-den-toi-105638">
"Máu điện tử" cho siêu máy tính

</a></p>
                            <p class="detail_ctt">
Các nhà nghiên cứu của hãng IBM tại Thụy Sĩ đã công bố máy tính mới lấy cảm hứng từ não bộ của con người và được cung cấp năng lượng bởi cái mà họ gọi là "máu điện tử".
                           </p>
            </div>
                    
                       <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/chau-au-doa-huy-giao-keo-voi-my-vi-nsa-105632">
                                <img src="Image/May-chu.jpg" height="146" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/chau-au-doa-huy-giao-keo-voi-my-vi-nsa-105632">
Ra mắt máy chủ cao cấp HP Integrity Superdome 2

 </a></p>
                            <p class="detail_ctt">
HP Superdome 2 là sản phẩm máy chủ Unix cao cấp hàng đầu đã được phát triển hơn 10 năm để phục vụ các ứng dụng quan trọng với những đòi hỏi cao nhất trên thế giới.
                             </p>
            </div>
                    
                       <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/qualcomm-dang-bi-dieu-tra-chong-doc-quyen-tai-qualcomm-105602">
                                <img src="Image/iMac.jpg" height="146" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/qualcomm-dang-bi-dieu-tra-chong-doc-quyen-tai-qualcomm-105602">
Apple ra mắt iMac giá rẻ ngay trong thời gian tới

</a></p>
                            <p class="detail_ctt"> 
Theo những nguồn tin được phát đi từ báo giới Hoa Kỳ, Apple đang chuẩn bị phát hành một chiếc iMac giá rẻ ngay trong nửa đầu năm 2014.
                            </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/gia-ipad-co-the-giam-trong-ngay-black-friday-nam-nay-105597">
                                <img src="Image/M8-2.jpg" height="134" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/gia-ipad-co-the-giam-trong-ngay-black-friday-nam-nay-105597"> 
Tiết lộ về máy tính chơi game của BM và Asrock

 </a></p>
                            <p class="detail_ctt">
Hồi tháng 6 chúng ta đã từng được biết tới chiếc máy tính chơi game M8 do ASRock và BMW Group DesignworksUSA hợp tác sản xuất. Hôm nay, thêm một số thông tin mới về sản phẩm này được tiết lộ, cụ thể hơn là thông tin về cấu hình máy.
                         </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2"><a href="/internet-khien-nganh-truyen-hinh-my-hap-hoi-105584"><a href="/internet-khien-nganh-truyen-hinh-my-hap-hoi-105584"><img src="Image/GeForce-GTX-Battlebox.jpg" height="144" hspace="5" vspace="3" align="left" border="0" /></a>
                          <p class="title_ctt">
                              <a href="/internet-khien-nganh-truyen-hinh-my-hap-hoi-105584">
Nvidia ra máy tính để bàn GeForce GTX Battlebox

 </a></p>
                            <p class="detail_ctt">
Vừa qua, Nvidia đã tiết lộ một kế hoạch đầy tham vọng rằng hãng sẽ hợp tác với nhà sản xuất máy tính OEM để cho ra mắt một dòng máy tính để bàn mạnh mẽ với thương hiệu mới Nvidia GeForce GTX Battlebox.
                             </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/trung-quoc-chinh-thuc-cung-cap-4g-tu-18-12-105578">
                                <img src="Image/Lenovo-1.jpg" height="147" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/trung-quoc-chinh-thuc-cung-cap-4g-tu-18-12-105578">
Lenovo công bố loạt máy tính AIO mới

 </a></p>
                            <p class="detail_ctt">
Lenovo vừa chính thức tung ra một loạt mẫu máy AIO mới kết thúc đợt ra mắt dòng sản phẩm này trong năm nay bao gồm các model có tên A530, B750, B550, B350.
                            </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/2-3-so-vu-ro-ri-thong-tin-xay-ra-tren-may-chu-105558">
                                <img src="Image/iMac(1).jpg" height="142" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/2-3-so-vu-ro-ri-thong-tin-xay-ra-tren-may-chu-105558">
Nâng cấp iMac với chip Haswell và ổ cứng "khủng"

 </a></p>
                            <p class="detail_ctt">
Apple vừa nâng cấp cho dòng máy tính iMac của họ với một số cải tiến về chip xử lý và bộ nhớ lưu trữ. Theo đó, iMac 2013 sẽ được trang bị chip xử lý Haswell.
                            </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/gioi-chuc-duc-cam-dung-iphone-sau-be-boi-nghe-len-dien-thoai-105537">
                                <img src="Image/PC-Appe.jpg" width="287" height="160" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                          <a href="/gioi-chuc-duc-cam-dung-iphone-sau-be-boi-nghe-len-dien-thoai-105537">
PC Apple khiến khách hàng hài lòng 10 năm liền

 </a></p>
                            <p class="detail_ctt">
Giới truyền thông vừa cho hay hãng Apple tiếp tục đứng đầu trong danh sách chỉ số hài lòng của người tiêu dùng Mỹ (ACSI) đối với các nhà sản xuất máy tính cá nhân.
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
Asus M70: Máy tính đầu tiên có giao tiếp NFC
 </a> </li>
                    
                      <li> <a href="/giam-doc-windows-phone-khang-dinh-se-duoi-kip-doi-thu-105513">
Asus M70: Máy tính đầu tiên có giao tiếp NFC
 </a> </li>
                    
                      <li> <a href="/google-maps-phai-go-bo-hinh-anh-thi-the-mot-cau-be-105493">
Gygabyte ra mắt máy tính siêu nhỏ BRIX thế hệ mới
</a> </li>
                    
                      <li> <a href="/chuyen-gia-it-cua-nato-lanh-an-7-nam-tu-vi-trom-du-lieu-mat-105487">
Máy tính bàn HP tiêu thụ điện tương đương laptop
 </a> </li>
                    
                      <li> <a href="/apple-thu-lai-iphone-ipad-bi-tham-nuoc-105477">
Lenovo trình làng mẫu máy tính AIO mới
 </a> </li>
                    
                      <li> <a href="/ai-se-giet-chet-tien-ao-bitcoin-105455">
LG hé lộ máy tính AIO màn hình siêu dài tỷ lệ 21:9
 </a> </li>
                    
                      <li> <a href="/anonymous-tan-cong-nhieu-co-quan-chinh-phu-my-105448"> 
LG ra mắt máy tính màn hình siêu rộng
</a> </li>
                    
                      <li> <a href="/chau-au-chinh-thuc-cho-dung-thiet-bi-dien-tu-tren-may-bay-105443">
HP ra mắt máy tính để bàn tích hợp Wi-Fi
 </a> </li>
                    
                      <li> <a href="/apple-dong-cua-itunes-connect-tu-21-12-den-27-12-105442">
HP giới thiệu máy tính bàn EliteDesk 800 G1
 </a> </li>
                    
                      <li> <a href="/nhat-ban-ho-tro-asean-tang-cuong-an-ninh-mang-105436">
Máy tính siêu nhỏ kiểu dáng giống Mac Mini
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
2 lý do nên mua ngay iPad Mini Retina
</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">
HP Chromebook 11 bị thu hồi hàng loạt
</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">
Acer giới thiệu chromebook "siêu rẻ"
 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">
iPad Mini Retina rất khó sửa chữa
 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">
Ngày mai iPad mini Retina 4G có mặt tại Việt Nam
</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">
iPad mini 2 rất khó sửa chữa
 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">
Năm sau doanh số iPad Mini Retina sẽ tăng gấp 2
 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">
LG G Pad 8.3 bán tại Việt Nam cuối tháng này
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
                                            <a href="/"><img src="Image/MSI-1.jpg" width="175" height="161" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/8-cong-dung-khong-ngo-cua-task-manager-105027">
MSI ra bộ đôi All In One cấu hình cao
                                                </a>
                                            </div>
                                        </div>
                                        

                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/huong-dan-nang-cap-len-windows-8-1-bang-hinh-anh-105098"><img src="Image/Sieu-may-tinh.jpg" width="142" height="159" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/huong-dan-nang-cap-len-windows-8-1-bang-hinh-anh-105098">
Siêu máy tính có khả năng dự báo thời tiết
                                                </a>
                                            </div>
                                        </div>
  
                                       	<div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/xoa-bo-du-lieu-dong-bo-tren-may-tu-windows-8-1-105119"><img src="Image/Mac-Pro-2013.jpg" width="142" height="147" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/xoa-bo-du-lieu-dong-bo-tren-may-tu-windows-8-1-105119">
Giá Mac Pro 2013 có thể lên tới 14.000 USD
                                             </a>
                                            </div>
                                        </div>
                                                        
                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/kich-hoat-bo-go-tieng-viet-tren-ubuntu-13-10-105044"><img src="Image/Mac-Pro.jpg" width="142" height="160" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/kich-hoat-bo-go-tieng-viet-tren-ubuntu-13-10-105044">
Apple Mac Pro giá 63 triệu đồng, bán ra tháng 12
                                                </a>
                                            </div>
                                        </div>
       
                                        
                   
                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/"><img src="Image/Sieu-may-tinh(1).jpg" width="142" height="162" hspace="3" vspace="3" align="left" border="0"></a>    
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/">
"Máu điện tử" cho siêu máy tính
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

