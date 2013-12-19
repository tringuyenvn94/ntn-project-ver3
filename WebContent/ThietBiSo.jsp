<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thiết bị số</title>

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
            
            <li id="item_2" class="item"><a href="TinTucCN.jsp"><span>
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
            
            <li id="item_7" class="item menu"><a href="ThietBiSo.jsp"><span>
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
           
                    <div class="topnew">
                        
                                    <div class="title_topnew">
                                        <a href="cach sua loi lag chuot tren windows 8.1"><span>Công cụ điều khiển Word, Excel qua Windows Phone
 </span></a></div>
                                    <div>
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tbody><tr>
                                                <td class="img_top">
                                                    <a href="/cach-sua-loi-lag-chuot-tren-windows-8-1-105457"><img src="Image/microsoft-1.jpg" height="250" align="left" border="0" hspace="3" vspace="3"></a>
                                                </td>
                                                <td class="ctt_top" valign="top">
Microsoft vừa phát hành công cụ Office Remote cho phép điều khiển các ứng dụng văn phòng của họ qua máy chạy Windows Phone.
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
                                            <a href="/bi-quyet-bo-tui-truoc-khi-chon-mua-laptop-105450">
                                                <img src="Image/iOS-1.jpg" border="0">
                                            </a>
                                        </div>
                                        <div class="title_boxsub">
                                            <a href="/bi-quyet-bo-tui-truoc-khi-chon-mua-laptop-105450">
         Apple cung cấp iOS 7.1 beta 1 với nhiều cải tiến
</a>
                                        </div>
                                    </span>
                                </td>
                            
                                <td>
                                    <span>
                                        <div class="boxsub">
                                            <a href="/thietbiso/lg-man-hinh-cong-bat-ngo-xuat-hien-tai-viet-nam-105439">
                                                <img src="Image/smartphone-2.jpg" border="0">
                                            </a>
                                        </div>
                                        <div class="title_boxsub">
                                            <a href="/thietbiso/lg-man-hinh-cong-bat-ngo-xuat-hien-tai-viet-nam-105439">
                                               Top 5 smartphone có camera trước tốt nhất hiện nay
</a>
                                        </div>
                                    </span>
                                </td>
                            
                                <td>
                                    <span>
                                        <div class="boxsub">
                                            <a href="4-cach-de-chong-lai-he-thong-binh-luan-moi-cua-youtube-105438">
                                                <img src="Image/LG-G-Flex15.jpg" border="0">
                                            </a>
                                        </div>
                                        <div class="title_boxsub">
                                            <a href="/4-cach-de-chong-lai-he-thong-binh-luan-moi-cua-youtube-105438">
          LG màn hình cong bất ngờ xuất hiện tại Việt Nam
</a>
                                        </div>
                                    </span>
                                </td>
                            
                                </tr> </tbody></table>
                            
                    </div>
                    
                       
                    <div class="wbox cat">
                        <div class="tit">
                            
                                    <a href="MayAnh.jsp" title="Chuyên mục 'Máy ảnh'">Máy ảnh</a>
                            
                        </div>
                        <div class="ctm">
                           
                                    <div class="title_article">
                                        <a href="/ai-se-giet-chet-tien-ao-bitcoin-105455">HP thu hồi gần 700.000 camera số vì lỗi kỹ thuật
</a>
                                     </div>   
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/ai-se-giet-chet-tien-ao-bitcoin-105455"><img src="Image/mayanh.jpg" height="198" align="left" border="0" hspace="3" vspace="3"></a>
Theo thông báo của Uỷ ban an toàn sản phẩm tiêu dùng Mỹ (CPSC) ngày 6/6, HP sẽ tiến hành thu hồi khoảng 679.000 chiếc camera kỹ thuật số trên toàn thế giới với lý do trục trặc về mặt kỹ thuật.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/anonymous-tan-cong-nhieu-co-quan-chinh-phu-my-105448"> Samsung giới thiệu camera 10MP
 </a> </li>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/da-nang-quan-ly-do-thi-qua-facebook-105446"> Camera số - cuộc chiến sinh tồn
 </a> </li>
                                            
                                                </ul>
                                            
                                      
                                    </div>
                               
                        </div>
                        
                    </div>
                    
                                
                   <div class="wbox cat">
                        <div class="tit">
                                    <a href="MayQuay.jsp" title="Chuyên mục 'Máy quay phim'">Máy quay</a>
                            
                        </div>
                        <div class="ctm">
                           
                                    <div class="title_article">
                                        <a href="/google-tung-doc-chieu-phong-chong-ddos-105403">Sony HDR-AS30V - Camera hành động tích hợp GPS
</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/google-tung-doc-chieu-phong-chong-ddos-105403"><img src="Image/Sony-HDR-AS30V-1.jpg" height="155" align="left" border="0" hspace="3" vspace="3"></a>
Về ngoại hình, Sony HDR-AS30V không mấy khác biệt so với camera hành động HDR-AS15 mà hãng từng giới thiệu. Tuy nhiên, điểm đáng chú ý của sản phẩm mới chính là thiết kế thân máy nhẹ hơn đến 35% và nhỏ hơn đến 25% nên tiện dụng hơn nhiều.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/nhom-tin-tac-trung-quoc-danh-cap-bi-mat-cong-ty-my-105390"> Máy quay phim dùng ống kính mắt cá của Canon
 </a> </li>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/trojan-moi-kho-phat-hien-tan-cong-lo-hong-ie-105360"> JVC Adixxion GA-XA2 - Máy quay thể thao tốc độ cao
 </a> </li>
                                            
                                                </ul>
                                            
                                      
                                    </div>
                               
                        </div>
                        
                    </div>
                                              
                    <div class="wbox cat">
                        <div class="tit">
                            
                                    <a href="DiDong.jsp" title="Chuyên mục 'Di động'">Di động</a>
                            
                        </div>
                        <div class="ctm">
                           
                                    <div class="title_article">
                                        <a href="/2-ly-do-nen-mua-ngay-ipad-mini-retina-105445">Top 5 smartphone có camera trước tốt nhất hiện nay
</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/2-ly-do-nen-mua-ngay-ipad-mini-retina-105445"><img src="Image/smartphone-2.jpg" height="160" align="left" border="0" hspace="3" vspace="3"></a>
Không chỉ có camera sau, camera trước trên smartphone cũng là một tính năng được khá nhiều người dùng quan tâm, nhất là những người dùng có thói quen “tự sướng”.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/hp-chromebook-11-bi-thu-hoi-hang-loat-105435"> Windows Phone 8 Lumia 929 trình làng ngày 22/11?
 </a> </li>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/acer-gioi-thieu-chromebook-sieu-re-gia-tu-4-trieu-dong-105434"> LG màn hình cong bất ngờ xuất hiện tại Việt Nam
 </a> </li>
                                            
                                                </ul>
                                            
                                      
                                    </div>
                               
                        </div>
                        
                    </div>
                    
                     <div class="wbox cat">
                        <div class="tit">
                            
                                    <a href="NgheNhac.jsp" title="Chuyên mục 'Máy nghe nhạc'">Máy nghe nhạc</a>
                            
                        </div>
                        <div class="ctm">
                            
                                    <div class="title_article">
                                        <a href="/mot-nha-may-cua-foxconn-dung-san-xuat-iphone-5c-105462">Sony ra máy nghe nhạc Walkman 128 Gb chạy Android
</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/mot-nha-may-cua-foxconn-dung-san-xuat-iphone-5c-105462"><img src="Image/Walkman-1.jpg" height="174" align="left" border="0" hspace="3" vspace="3"></a>
Mới đây, nhà sản xuất Nhật Bản đã cho ra mắt hai chiếc máy nghe nhạc mới thuộc dòng Walkman. Hai sản phẩm mới này là ZX1 và F880, cả hai cùng gây ấn tượng với dung lượng bộ nhớ cao và chạy trên nền tảng Android.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/nguoi-dung-twitter-it-gap-stress-105454"> Sony Walkman "3 trong 1" với kiểu dáng tai nghe
 </a> </li>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/google-khuyen-khong-deo-kinh-thong-minh-khi-lai-xe-105447"> Walkman W270 - Máy nghe nhạc dưới nước của Sony
 </a> </li>
                                            
                                                </ul>
                                            
                                      
                                    </div>
                               
                        </div>
                        
                    </div>
                                 
                                
                    <div class="wbox cat">
                        <div class="tit">
                            
                                    <a href="TBGame.jsp" title="Chuyên mục 'Thiết bị game'">Thiết bị game</a>
                            
                        </div>
                        <div class="ctm">
                           
                                    <div class="title_article">
                                        <a href="/he-dieu-hanh-windows-sinh-nhat-tron-30-nam-tuoi-105335">SkyDrive sẽ "cập bến" Xbox One
</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/he-dieu-hanh-windows-sinh-nhat-tron-30-nam-tuoi-105335"><img src="Image/Xbox-One-1.jpg" height="150" align="left" border="0" hspace="3" vspace="3"></a>
Microsoft ngày 12.11 đưa ra thông báo họ sẽ đem ứng dụng lưu trữ đám mây SkyDrive vào trong mẫu máy chơi game Xbox One mới nhất của mình.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/xoa-bo-du-lieu-dong-bo-tren-may-tu-windows-8-1-105119"> Ổ cứng của PS4 và Xbox One chứa được hơn 10 game
 </a> </li>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/huong-dan-nang-cap-len-windows-8-1-bang-hinh-anh-105098"> NVIDIA Shield cập nhật phần mềm lên Android 4.3
 </a> </li>
                                            
                                                </ul>
                                            
                                      
                                    </div>
                               
                        </div>
                        
                    </div>
                    
                                          
                    <div class="wbox cat">
                        <div class="tit">
                            
                                    <a href="ThietBiKhac.jsp" title="Chuyên mục 'Thiết bị khác'">Thiết bị khác</a>
                                
                        </div>
                        <div class="ctm">
                            
                                    <div class="title_article">
                                        <a href="/thietbiso/smartphone-dau-tien-cua-jolla-se-len-ke-ngay-27-11-105427">Apple iWatch có hai cỡ màn hình cho nam và nữ
</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/thietbiso/smartphone-dau-tien-cua-jolla-se-len-ke-ngay-27-11-105427"><img src="Image/iwatch.jpg" height="155" align="left" border="0" hspace="3" vspace="3"></a>
Đồng hồ thông minh của Apple được cho là sẽ sử dụng màn hình OLED với hai kích cỡ khác nhau là 1,7 inch và 1,3 inch.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/thietbiso/amd-cong-bo-card-do-hoa-cho-sieu-may-tinh-105426"> Chưa ra mắt, iWatch đã bị... nhái
 </a> </li>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/thietbiso/pin-nexus-5-cho-thoi-gian-su-dung-thua-xa-lg-g2-105425"> Găng tay điện thoại Hi Fun Bluetooth cho mùa Đông
 </a> </li>
                                            
                                                </ul>
                                            
                                      
                                    </div>
                                
                        </div>
                        
                    </div>
                    
                                      
                    <div class="wbox cat">
                        <div class="tit">
                            
                                    <a href="PhuKien.jsp" title="Chuyên mục 'Phụ kiện'">Phụ kiện</a>
                            
                        </div>
                        <div class="ctm">
                            
                                    <div class="title_article">
                                        <a href="/">Xuất hiện nút home kim loại cho iPhone 5
 </a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/"><img src="Image/iPhone-3.jpg" height="154" align="left" border="0" hspace="3" vspace="3"></a>
Chỉ một tuần sau khi Apple giới thiệu chiếc iPhone 5s, thị trường phụ kiện điện thoại đã xuất hiện vỏ thay với màu sắc giống tới 100% dành cho iPhone 5. 
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/"> HTC công bố loa "khủng" cho HTC One
  </a> </li>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/"> Google ra mắt đế sạc không dây Qi cho Nexus 5/7
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
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Công cụ điều khiển Word, Excel qua Windows Phone
</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Apple cung cấp iOS 7.1 beta 1 với nhiều cải tiến
</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Tiếp tục rò rỉ cấu hình Vivo Xplay 3S
 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Top 5 smartphone có camera trước tốt nhất hiện nay
 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Genius HS-M200 - tai nghe đàm thoại giá rẻ
</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Xuất hiện nút home kim loại cho iPhone 5
 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Windows Phone 8 Lumia 929 trình làng ngày 22/11?
 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Bán được hơn 1 triệu máy PS4 chỉ trong vòng 24 giờ
</a>
                                     </div>
                                      
                                    
                                     <span id="xemtin"><a href="/"><strong>Xem các tin khác </strong></a></span>
                                    
                                               
                                    </div>
                               
                        </div>
                        <div class="space"> </div>
                       
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

