<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Tin quốc tế</title>

<link rel="stylesheet" type="text/css" href="CSS/styleMenu.css"/>
<link rel="stylesheet" type="text/css" href="CSS/styleLayout.css"/>

</head>

<body>

	<div class="container">
    
		<div class="header">
			<div class="headermain">
			  <div id="menu_top">
                    <a href="TrangChu.jsp">Trang chủ&nbsp;</a> | &nbsp;
                    <a href="TinTucCN.jsp">Tin tức&nbsp;</a> |&nbsp;
                    <a href="GioiThieu.jsp">Giới thiệu&nbsp;</a> |&nbsp;
                    <a href="Game.jsp">Game &nbsp;</a> |&nbsp;
                    <a href="LienHe.jsp">Liên hệ&nbsp;</a> |&nbsp;
                    <a href="https://www.facebook.com/ntncoporation?ref=hl">
                    <img src="Image/facebook.jpg" width="18" height="18" /></a>
				</div>
				<div class="logo"><a href="TrangChu.jsp"><img src="Image/Logo.png" width="185" height="107" /></a></div>
			  <div class="login">
                    <form action="Control(Nú làm)" method="post" name="form_login" id="form_login" onsubmit="checklogin">
                    	<label>Đăng nhập </label>
                    		<div class="login_input">
                   			 	<input name="username" id="username" type="text" class="login_username" value="Tên đăng nhập" onfocus="if(this.value == 'Tên đăng nhập') this.value='';" onblur="if(this.value == '') this.value='Tên đăng nhập';">
                    
                    			<input type="password" name="passwd" id="passwd" class="login_password" value="Mật khẩu" onfocus="if(this.value == 'Mật khẩu') this.value='';" onblur="if(this.value == '') this.value='Mật khẩu';">
           			  </div>
                    		<div class="login_button">
                                <a href="register.jsp">Đăng kí |</a>
                                <a href="reset.jsp">Quên mật khẩu</a>
                                <input type="submit" name="submit" class="button" value="Đăng nhập">
                            </div>
                    </form>

			  </div>
		  </div>
		</div>
		
        <div id="menumain">

            <ul id="topmenu">
            <li class="item"><a href="TrangChu.jsp"><span>Trang chủ</span> </a>
            	 <ul class="submenu_1"></ul>
     
                 
            </li>
            
            <li id="item_2" class="item menu"><a href="TinTucCN.jsp"><span>
            Tin tức công nghệ
            </span></a>
            
            <ul class="submenu_2">
            
            <li>
            
            <a href="TinTrongNuoc.jsp">
            Trong nước</a></li>
            
            <li>
            
            <a href="TinQuocTe.jsp">
            Quốc tế</a></li>
            
            <li>
            
            <a href="TinKhac.jsp">
            Tin khác</a></li>
            
            </ul>
            </li>
            
            
            
            <li id="item_3" class="item"><a href="BaoMat.jsp"><span>
            Bảo mật
            </span></a>
            
            <ul class="submenu_3">
            
            <li>
            
            <a href="TinBaoMat.jsp">
            Tin bảo mật</a></li>
            
            <li>
            
            <a href="GPBaoMat.jsp">
            Giải pháp bảo mật</a></li>
            
            <li>
            
            <a href="Virus.jsp">
            Virus</a></li>
            
            <li>
            
            <a href="Hacker.jsp">
            Hacker</a></li>
            
            </ul>
            </li>
                    
            <li id="item_4" class="item"><a href="PhanCung.jsp"><span>
            Phần cứng
            </span></a>
            
            <ul class="submenu_4">
            
            <li>
            
            <a href="Desktop.jsp">
            Desktop</a></li>
            
            <li>
            
            <a href="Laptop.jsp">
            Laptop</a></li>
                        
            <li>
            
            <a href="ThietBi-LinhKien.jsp">
            Thiết bị - Linh kiện</a></li>
            
            <li>
            
            <a href="TuVan.jsp">
            Tư vấn</a></li>
            
            </ul>
            </li>
            
            <li id="item_5" class="item"><a href="PhanMem.jsp"><span>
            Phần mềm
            </span></a>
            
            <ul class="submenu_5">
            
            <li>
            
            <a href="TinPM.jsp">
            Tin tức</a></li>
            
            <li>
            
            <a href="DanhGia.jsp">
            Đánh giá</a></li>
            
            <li>
            
            <a href="KhuyenMai.jsp">
            Miễn phí - Giảm giá</a></li>
            
            </ul>
            </li>
            
            <li id="item_6" class="item"><a href="HeDieuHanh.jsp"><span>
            Hệ điều hành
            </span></a>
            
            <ul class="submenu_6">
            
            <li>
            
            <a href="Windows.jsp">
            Windows</a></li>
            
            <li>
            
            <a href="Unix-Linux.jsp">
            Unix-Linux</a></li>
            
            <li>
            
            <a href="Mac.jsp">
            Mac</a></li>
            
            </ul>
            </li>
            
            <li id="item_7" class="item"><a href="ThietBiSo.jsp"><span>
            Thiết bị số
            </span></a>
            <ul class="submenu_7">
            
            <li>
            
            <a href="MayAnh.jsp">
            Máy ảnh</a></li>
            
            <li>
            
            <a href="MayQuay.jsp">
            Máy quay</a></li>
            
            <li>
            
            <a href="DiDong.jsp">
            Di động</a></li>
             <li>            
            <a href="MayNgheNhac.jsp">
            Máy nghe nhạc</a></li>
            
             <li>           
            <a href="ThietBiGame.jsp">
            Thiết bị game</a></li>
            
             <li>            
            <a href="ThietBiKhac.jsp">
            Thiết bị khác</a></li>            
            
             <li>            
            <a href="PhuKien.jsp">
            Phụ kiện</a></li>
            
            </ul>
            </li>
            <li id="item_8" class="item"><a href="Game.jsp"><span>
            Game
            </span></a>
             <ul class="submenu_8"></ul>
            
            </li>
            
            <li id="item_9" class="item"><a href="ThuThuat-TienIch.jsp"><span>
            Thủ thuật-Tiện ích
            </span></a>
            <ul class="submenu_9"></ul>
            </li>
            
            <li id="item_10" class="item"><a href="HoiDap.jsp"><span>
            Hỏi-đáp
            </span></a>            
            <ul class="submenu_10"></ul>
            </li>
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
                <a href="TrangChu.jsp"><img src="Image/icon_home.jpg" width="18" height="24" align="absmiddle" border="0"></a> »&nbsp;<a href="TinTucCN.jsp">Tin tức công nghệ</a>&nbsp;»&nbsp;<a href="TinQuocTe.jsp">Quốc tế</a>
        
    </div>
       
          <div class="title_article">
                    <a href="/apple-tang-the-qua-nhan-ngay-black-friday-105640"><span>Ai sẽ giết chết "tiền ảo" Bitcoin?

</span></a>
                </div>
                <div>
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tbody><tr>
                            <td class="img_top2">
                                <a href="/apple-tang-the-qua-nhan-ngay-black-friday-105640"><img src="Image/Bitcoin-1.jpg" width="247" height="265" hspace="3" vspace="3" align="left" border="0"></a>
                            </td>
                            <td class="content_top" valign="top" align="left">
Đúng 2 năm về trước, Wired cho đăng tải một bài báo có tên "Sự trỗi dậy và sụp đổ của Bitcoin". Trong khi Wired đã đúng về sự trỗi dậy của Bitcoin, ngày sụp đổ của đồng tiền ảo này liệu có còn quá xa?

                          </td>
                        </tr>
                    </tbody></table>
                </div>
                		
                        
                    	<div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                   
                        <div class="subcontent2">
                            <a href="/chinh-phu-my-bi-phat-50-trieu-usd-vi-cai-phan-mem-lau-105658">
                                <img src="Image/anonymous-1.jpg" height="179" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/chinh-phu-my-bi-phat-50-trieu-usd-vi-cai-phan-mem-lau-105658">
Anonymous tấn công nhiều cơ quan chính phủ Mỹ


</a></p>
                            <p class="detail_ctt">
Báo cáo từ Cơ quan Điều tra Liên bang Mỹ (FBI) cho biết tin tặc có liên hệ với nhóm Anonymous đã truy cập vào hệ thống máy tính của các cơ quan chính phủ Mỹ và lấy đi nhiều thông tin mật.

            </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/trung-quoc-nghien-cuu-cong-nghe-phat-hien-anh-da-chinh-sua-105655">
                                <img src="Image/smartphone-plane.jpg" height="171" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/trung-quoc-nghien-cuu-cong-nghe-phat-hien-anh-da-chinh-sua-105655">Châu Âu cho dùng thiết bị điện tử trên máy bay



 
 </a></p>
                            <p class="detail_ctt">
Châu Âu đã chính thức cho phép dùng thiết bị điện tử cá nhân trên máy bay. Có khả năng bắt đầu từ cuối tháng 11/2013, các hãng hàng không châu Âu sẽ bắt đầu áp dụng quy định mới này.
                            </p>
            </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/my-se-cham-dut-dich-vu-dien-thoai-co-dinh-105648">
                                <img src="Image/iTunesConnect.jpg" height="164" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/my-se-cham-dut-dich-vu-dien-thoai-co-dinh-105648">
Apple đóng cửa iTunes Connect từ 21/12 đến 27/12


</a></p>
                            <p class="detail_ctt">
Trong thời gian tạm đóng cửa iTunes Connect (21/12 - 27/12), lập trình viên không thể đệ trình cập nhật hoặc thay đổi giá ứng dụng.
                            </p>
            </div>
                    
                       <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/microsoft-giam-gia-hang-loat-san-pham-trong-dip-ngay-thu-6-den-toi-105638">
                                <img src="Image/ASEAN-1.jpg" height="150" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/microsoft-giam-gia-hang-loat-san-pham-trong-dip-ngay-thu-6-den-toi-105638">
Nhật Bản hỗ trợ ASEAN tăng cường an ninh mạng


</a></p>
                            <p class="detail_ctt">
Bộ trưởng Viễn thông và Công nghệ Thông tin của các nước thành viên Hiệp hội các quốc gia Đông Nam Á (ASEAN) ngày 15/11 cho biết họ đã nhất trí thông qua đề xuất của Nhật Bản về việc hợp tác đảm bảo mạng lưới công nghệ thông tin và truyền thông "thông minh" trong khu vực.
                           </p>
            </div>
                    
                       <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/chau-au-doa-huy-giao-keo-voi-my-vi-nsa-105632">
                                <img src="Image/google12.jpg" height="146" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/chau-au-doa-huy-giao-keo-voi-my-vi-nsa-105632">
Google vẫn là “Vua” tìm kiếm tại thị trường Mỹ


 </a></p>
                            <p class="detail_ctt">
Theo số liệu của công ty phân tích ComScore cho biết, thị phần tìm kiếm của các công cụ tại Mỹ trong tháng 10/2013 ít biến động. Không mấy ngạc nhiên khi Google vẫn giữ vững vị trí dẫn đầu, Microsoft đã có một sự gia tăng nhỏ, trong khi Yahoo lại có sự giảm nhẹ.
                             </p>
            </div>
                    
                       <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/qualcomm-dang-bi-dieu-tra-chong-doc-quyen-tai-qualcomm-105602">
                                <img src="Image/apple-map1.jpg" height="146" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/qualcomm-dang-bi-dieu-tra-chong-doc-quyen-tai-qualcomm-105602">
Apple Maps đang chiếm vị thế của Google Maps?


</a></p>
                            <p class="detail_ctt"> 
Theo thống kê của hãng nghiên cứu thị trường ComScore, trong khi Apple phải chịu một thảm họa PR về ứng dụng Maps của mình, thì Google cũng để tuột mất hơn 23 triệu người dùng iPhone tại Hoa Kỳ.
                            </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/gia-ipad-co-the-giam-trong-ngay-black-friday-nam-nay-105597">
                                <img src="Image/apple.jpg" height="134" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/gia-ipad-co-the-giam-trong-ngay-black-friday-nam-nay-105597"> 
Apple bị nghi trốn thuế 1,34 tỷ USD tại Ý


 </a></p>
                            <p class="detail_ctt">
Tờ l'Espresso của Ý cho hay Apple đang bị cơ quan thuế Ý “sờ gáy” vì tình nghi trốn khoản thuế hơn 1 tỷ USD. Hãng thông tấn Reuters đưa tin Apple đang bị điều tra tại Ý do bị cáo buộc trốn thuế hơn 1 tỷ Euro (tương đương 1,34 tỷ USD).
                         </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2"><a href="/internet-khien-nganh-truyen-hinh-my-hap-hoi-105584"><a href="/internet-khien-nganh-truyen-hinh-my-hap-hoi-105584"><img src="Image/internet5.jpg" height="144" hspace="5" vspace="3" align="left" border="0" /></a>
                          <p class="title_ctt">
                              <a href="/internet-khien-nganh-truyen-hinh-my-hap-hoi-105584">
Báo cáo tổng kết xu hướng Internet toàn cầu 2013


 </a></p>
                            <p class="detail_ctt">
Facebook là mạng xã hội lớn duy nhất đang suy giảm. Arập Saudi chia sẻ trên mạng nhiều hơn bất cứ nước nào. Bạn kiểm tra điện thoại 150 lần một ngày. Và hơn thế nữa...
                             </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/trung-quoc-chinh-thuc-cung-cap-4g-tu-18-12-105578">
                                <img src="Image/apple-1.jpg" height="147" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/trung-quoc-chinh-thuc-cung-cap-4g-tu-18-12-105578">
Apple Store bí ẩn đóng cửa vào ngày 17 và 18/11


 </a></p>
                            <p class="detail_ctt">
Một số cửa hàng của Apple trên toàn thế giới thông báo đóng cửa sớm một cách bí ẩn vào cuối tuần tới. Lí do tại sao các cửa hàng đang đóng cửa sớm vẫn chưa rõ.
                            </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/2-3-so-vu-ro-ri-thong-tin-xay-ra-tren-may-chu-105558">
                                <img src="Image/dich-vu-4G1.jpg" height="142" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/2-3-so-vu-ro-ri-thong-tin-xay-ra-tren-may-chu-105558">
Dịch vụ 4G nhanh nhất thế giới


 </a></p>
                            <p class="detail_ctt">
Tốc độ hiện hành của dịch vụ 4G là 25 - 30 Mbps. Nhưng, hãng điều hành điện thoại di động EE đang làm một bước đột phá tốc độ với 10 lần nhanh hơn.
                            </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/gioi-chuc-duc-cam-dung-iphone-sau-be-boi-nghe-len-dien-thoai-105537">
                                <img src="Image/ket-noi-internet1.jpg" width="287" height="160" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                          <a href="/gioi-chuc-duc-cam-dung-iphone-sau-be-boi-nghe-len-dien-thoai-105537">
Sẽ có hơn 50 tỷ thiết bị kết nối vào năm 2020


 </a></p>
                            <p class="detail_ctt">
Thế giới hiện có khoảng 11 tỷ thiết bị kết nối Internet và đang tăng trung bình 80 thiết bị mới mỗi giây. Tốc độ tăng này sẽ đạt 100 trong năm tới và 250 vào năm 2020.
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
                
                      <li> <a href="/kiem-hang-ngan-usd-tu-viec-bat-loi-bao-mat-cho-google-105514">Motorola có bằng sáng chế hình xăm microphone

 </a> </li>
                    
                      <li> <a href="/giam-doc-windows-phone-khang-dinh-se-duoi-kip-doi-thu-105513">Microsoft sắp quay trở lại vị thế công ty dẫn đầu?

 </a> </li>
                    
                      <li> <a href="/google-maps-phai-go-bo-hinh-anh-thi-the-mot-cau-be-105493">Microsoft "tên gọi sân vận động hàng đầu thế giới"

</a> </li>
                    
                      <li> <a href="/chuyen-gia-it-cua-nato-lanh-an-7-nam-tu-vi-trom-du-lieu-mat-105487">Canada ngăn cản Lenovo mua lại BlackBerry

 </a> </li>
                    
                      <li> <a href="/apple-thu-lai-iphone-ipad-bi-tham-nuoc-105477">600 triệu USD sẽ được đầu tư cho công nghệ 5G

 </a> </li>
                    
                      <li> <a href="/ai-se-giet-chet-tien-ao-bitcoin-105455">Facebook sắp có biểu tượng Like mới

 </a> </li>
                    
                      <li> <a href="/anonymous-tan-cong-nhieu-co-quan-chinh-phu-my-105448"> Internet làm thay đổi tính chất của chiến tranh

</a> </li>
                    
                      <li> <a href="/chau-au-chinh-thuc-cho-dung-thiet-bi-dien-tu-tren-may-bay-105443">Cựu CEO Nokia có thể điều hành Microsoft

 </a> </li>
                    
                      <li> <a href="/apple-dong-cua-itunes-connect-tu-21-12-den-27-12-105442">Nỗi khổ của những người làm việc ở Google

 </a> </li>
                    
                      <li> <a href="/nhat-ban-ho-tro-asean-tang-cuong-an-ninh-mang-105436">iGoogle chính thức bị khai tử vào ngày 02/11

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
                            
                                   <a href="/">  Tin mới nhất </a>
                            
                        </div>
                        <div class="ctm">
                            
                                    <div class="title_new">
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Ai sẽ giết chết "tiền ảo" Bitcoin?



</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Anonymous tấn công nhiều cơ quan chính phủ Mỹ




</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Đà Nẵng: Quản lý đô thị qua… Facebook




 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Châu Âu cho dùng thiết bị điện tử trên máy bay



 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Apple đóng cửa iTunes Connect từ 21/12 đến 27/12



</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Nhật Bản hỗ trợ ASEAN tăng cường an ninh mạng

 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Doanh nghiệp thí điểm nộp thuế điện tử từ 1/2014



 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Google vẫn là “Vua” tìm kiếm tại thị trường Mỹ



</a>
                                     </div>
                                      
                                    
                                     <span id="xemtin"><a href="/"><strong>Xem các tin khác </strong></a></span>
                                    
                                               
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
                                            <a href="/"><img src="Image/Mac-App-Store.jpg" width="175" height="161" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/8-cong-dung-khong-ngo-cua-task-manager-105027">
Lỗi App Store khiến phần mềm lậu thành bản quyền
                                                </a>
                                            </div>
                                        </div>
                                        

                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/huong-dan-nang-cap-len-windows-8-1-bang-hinh-anh-105098"><img src="Image/google1(1).jpg" width="142" height="159" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/huong-dan-nang-cap-len-windows-8-1-bang-hinh-anh-105098">
Nỗi khổ của những người làm việc ở Google
                                                </a>
                                            </div>
                                        </div>
  
                                       	<div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/xoa-bo-du-lieu-dong-bo-tren-may-tu-windows-8-1-105119"><img src="Image/ASEAN-1.jpg" width="142" height="147" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/xoa-bo-du-lieu-dong-bo-tren-may-tu-windows-8-1-105119">
Nhật Bản hỗ trợ ASEAN tăng cường an ninh mạng
                                                </a>
                                            </div>
                                        </div>
                                                        
                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/kich-hoat-bo-go-tieng-viet-tren-ubuntu-13-10-105044"><img src="Image/microsoft-tro-lai1.jpg" width="142" height="160" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/kich-hoat-bo-go-tieng-viet-tren-ubuntu-13-10-105044">
Microsoft sắp quay trở lại vị thế công ty dẫn đầu?
                                                </a>
                                            </div>
                                        </div>
       
                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/modem-d-link-tenda-cua-trung-quoc-cai-san-ma-doc-105160"><img src="Image/Kiem-soat.jpg" width="142" height="153" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/nhieu-modem-d-link-tenda-cua-trung-quoc-da-duoc-cai-san-ma-doc-105160">
NSA kiểm soát máy chủ của Google và Yahoo!
                                                </a>
                                            </div>
                                        </div>
                   
                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/"><img src="Image/motorola.jpg" width="142" height="162" hspace="3" vspace="3" align="left" border="0"></a>    
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/">
Motorola có bằng sáng chế hình xăm microphone
                                                </a>
                                            </div>
                                        </div>

                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/"><img src="Image/DDoS.jpg" width="142" height="169" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/">
Google ra giải pháp giúp website nhỏ chống DDoS
                                                </a>
                                            </div>
                                        </div>

                                       	<div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/"><img src="Image/apple(1).jpg" width="142" height="176" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/">
Thương hiệu Apple đáng giá hơn 100 tỷ USD
                                                </a>
                                            </div>
                                        </div>

                                       	<div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/"><img src="Image/Google.jpg" width="142" height="145" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/">
Dịch vụ vượt tường lửa trên Chrome và Firefox
                                                </a>
                                            </div>
                                        </div>
                                        
                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/"><img src="Image/internet5.jpg" width="142" height="185" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/">
Báo cáo tổng kết xu hướng Internet toàn cầu 2013

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
                        <a href="TrangChu.jsp">Trang chủ</a> | <a href="GioiThieu.jsp">Giới thiệu </a> | <a href="ThietBiSo.jsp">Thiết bị số </a> | 
                        <a href="Game.jsp">Game</a> |
                        <a href="http://tapchicntt.com" target="_blank">Tapchicntt.com</a> | 
                        <a href="http://bkc.vn" target="_blank">bkc.vn</a> | <a href="http://Stivi.vn" target="_blank">Stivi.vn</a> | 
                        <a href="HoiDap.jsp">Hỏi đáp</a> |
                        <a href="LienHe.jsp">Liên hệ</a> | 
                        <a href="https://www.facebook.com/ntncoporation?ref=hl" target="_blank">Facebook</a></div>
                    <div class="line">
                    </div>
                    <div class="info">
                        <div class="info_left">
                        	Information Technology - Chuyên trang về Công nghệ thông tin.<br>
                            Giấy phép số 1133/GP – BTTTT ngày 1/1/2014 của Bộ thông tin truyền thông.<br>
                            Tổng Biên tập: Nguyễn Tấn Tài. Phó Tổng biên tập: Nguyễn Văn Nú, Lương Văn Nhẫn.<br>
                        	Cơ quan chủ quản: NTN Coporation Entertainment Education Information Technology.</div>
                        <div class="info_right">
                        	<div class="logo_footer"><a href="TrangChu.jsp"><img src="Image/Logo.png" width="60" height="51"/></a></div>
                        	Copyright © 2013 IT - Chuyên trang, thông tin công nghệ, thủ thuật , tiện ích...<br>
                            Ghi rõ nguồn " it.com.vn"  khi phát hành lại thông tin từ website này.
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

