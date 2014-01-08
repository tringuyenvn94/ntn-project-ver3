<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Tin 2</title>

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
		
				<a href="trangchu.jsp"><img src="Image/icon_home.jpg" width="18" height="22" align="absmiddle" border="0"></a> »&nbsp;<a href="">Tên menu cha</a>&nbsp;»&nbsp;<a href="">Tên menu con</a>
			
	</div>
	<div class="ctm">
		
				<h1 class="title_article">
					
						Tiêu đề bài viết</h1>
				<div class="infoUpdate">
					<table border="0" cellpadding="0" cellspacing="0" width="676">
						<tbody><tr>
							<td width="415">
								Cập nhật lúc
								"giờ" ngày <a title="Các tin trong ngày 02/12/2013" href="/daily/02122013/index.aspx"><font color="#008800">"ngày"</font></a>
							 </td>
							 
								
								 
						</tr>
					</tbody></table>
				</div>
				<div class="infoDetail">
				
					<table border="0" cellpadding="0" cellspacing="0" width="100%">
						<tbody><tr>
							<td>
							<div id="baiviet">
								<p style="text-align: justify;"><strong>Mở đầu bài viết</strong></p>



<p style="text-align: center;"><img title="" src="" alt="HP Pavilion 14 &amp; 15 và những nâng cấp đáng giá" height="325" width="450"><br><span style="color: #3366ff;">Tiêu đề ảnh</span></p>


<p style="text-align: justify;">nội dung </p>

<p style="text-align: center;"><img title="" src="" alt="" height="343" width="450"><br><span style="color: #3366ff;">Tiêu đề ảnh</span></p>
<p style="text-align: justify;">noi dung</p>

<p style="text-align: center;"><img title="" src="" alt="" height="352" width="463"><br><span style="color: #3366ff;">Tiêu đề ảnh</span></p>
<p style="text-align: justify;">Noi dung</p>
<p style="text-align: right;"><em><strong>Tác giả</strong></em></p>
								
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
    <div class="infoA">
        
                <ul>
            
                <li><a href=""> nd</a> </li>
            
                <li><a href=""> nd</a> </li>
            
                <li><a href=""> Lenovo ra mắt ThinkPad W540 màn hình 15,5 inch</a> </li>
            
                <li><a href=""> Xem mặt đối thủ mới của MacBook Pro Retina</a> </li>
            
                <li><a href=""> Chromebook dùng chip Haswell ra mắt vài tháng tới</a> </li>
            
                <li><a href=""> HP giới thiệu loạt máy trạm siêu mỏng dòng Zbook</a> </li>
            
                <li><a href=""> HP Chromebook 14 nhiều màu sắc, giá từ 299 USD</a> </li>
            
                <li><a href=""> Máy tính 2 màn hình tất cả trong một</a> </li>
            
                <li><a href=""> Dell công bố bộ đôi máy trạm cấu hình "khủng"</a> </li>
            
                <li><a href=""> Điểm mặt laptop giảm giá tiền triệu</a> </li>
            
                <li><a href=""> Những máy tính nổi bật nhất tại IFA 2013</a> </li>
            
                <li><a href=""> Asus công bố bộ đôi Zenbook UX301 và UX302</a> </li>
            
                <li><a href=""> Toshiba giới thiệu laptop lai Satellite Click</a> </li>
            
                <li><a href=""> Toshiba ra mắt Satellite NB15t màn hình cảm ứng</a> </li>
            
                <li><a href=""> Lenovo công bố Yoga 2 với màn hình "siêu khủng"</a> </li>
            
                <li><a href=""> Thế hệ Vaio Fit mới tối ưu khả năng cảm ứng</a> </li>
            
                <li><a href=""> Asus hé lộ mẫu ultrabook cao cấp Zenbook UX301</a> </li>
            
                <li><a href=""> Lenovo ra mắt Thinkpad X240 với pin hơn 10 tiếng</a> </li>
            
                <li><a href=""> Lenovo ra ultrabook có 2 pin, dùng được 17 tiếng</a> </li>
            
                <li><a href=""> 5 "bom xịt" laptop trong năm 2013</a> </li>
            
                <li><a href=""> Asus giới thiệu ultrabook cảm ứng giá từ 700 USD</a> </li>
            
                <li><a href=""> MacBook Pro dùng chip Intel sẽ ra mắt tháng sau</a> </li>
            
                <li><a href=""> Lenovo Flex 14 - Ultrabook màn hình xoay 300 độ</a> </li>
            
                <li><a href=""> Top laptop phục vụ thiết kế đồ họa hiện nay</a> </li>
            
                <li><a href=""> Apple tập trung đẩy mạnh doanh số máy Mac</a> </li>
            
                <li><a href=""> Asus có thể ra laptop cảm ứng với pin 5 tiếng</a> </li>
            
                <li><a href=""> Acer công bố giá bán Aspire S7 dùng chip Haswell</a> </li>
            
                <li><a href=""> Top những laptop phục vụ "nghe nhìn" đáng mua nhất</a> </li>
            
                <li><a href=""> Ultrabook đắt nhất của Acer nâng cấp chip Haswell</a> </li>
            
                <li><a href=""> Asus rời "sân chơi" Windows RT</a> </li>
            
                </ul> <span id="allnews"><a href="/">Xem tất cả </a></span>
    </div>


            </div>
            </div>
        </div>


<div class="ctRight_detail">

<div class="new_article">
    <div class="title_art">
        Bài viết mới nhất</div>
    <div class="hr">
         </div>
    <div class="infoA">
        
                <ul>
            
                <li><a href="">Amazon giao hàng bằng máy bay điều khiển từ xa</a> </li>
            
                <li><a href=""> Cách phát hiện kẻ lén lút vào Facebook của bạn</a> </li>
            
                <li><a href=""> Apple thống trị thị trường smartphone tại Nhật</a> </li>
            
                <li><a href=""> Quyến rũ với phiên bản màu đỏ đun của HTC One Max</a> </li>
            
                <li><a href=""> Chính thức ra mt Galaxy Note 3 màu cam và vàng</a> </li>
            
                <li><a href=""> Làm sao tránh các cài đặt không mong muốn</a> </li>
            
                <li><a href=""> Website an sinh của chính phủ Obama không an toàn</a> </li>
            
                <li><a href=""> Toàn cảnh Internet Việt Nam hiện như thế nào?</a> </li>
            
                <li><a href=""> Gợi ý 5 phần mềm diệt virus tốt nhất cho Windows 8</a> </li>
            
                <li><a href=""> Người dùng Internet Explorer 11 tăng nhanh</a> </li>
            
                <li><a href=""> Apple chi 578 triệu USD cho màn hình sapphire</a> </li>
            
                <li><a href=""> Đến lượt Amazon cũng tung clip chê iPad Air</a> </li>
            
                <li><a href=""> Ứng dụng của FIFA “cập bến” iOS và Android</a> </li>
            
                <li><a href=""> Chán “ném đá” Apple, Microsoft lại “dìm hàng” Sams</a> </li>
            
                <li><a href=""> Galaxy S5 sản xuất tại Việt Nam từ tháng 1/2014?</a> </li>
            
                <li><a href=""> Vỏ chống thấm nước cho iPhone 5s và Galaxy S4</a> </li>
            
                <li><a href=""> “Khủng long” LG G2 sắp lên đời Android 4.4 KitKat</a> </li>
            
                <li><a href=""> Smartphone 2 sim giá rẻ mới của Samsung</a> </li>
            
                <li><a href=""> Việt Nam là thị trường quyết định tương lai Nokia</a> </li>
            
                <li><a href=""> 5 tiện ích giúp bạn sử dụng PowerPoint hiệu quả</a> </li>
            
                <li><a href=""> 3 mẹo đơn giản để bảo vệ smartphone Android</a> </li>
            
                <li><a href=""> Apple thoát kiện theo dõi, bán thông tin phi pháp</a> </li>
            
                <li><a href=""> Tăng không gian lưu trữ cho Windows 8 bằng ổ SD</a> </li>
            
                <li><a href=""> Chính phủ Mỹ bị phạt 50 triệu USD vì phần mềm lậu</a> </li>
            
                <li><a href=""> Facebook triển khai chiến dịch Internet miễn phí</a> </li>
            
                <li><a href=""> Mở hộp iPad Air chính hãng tại Việt Nam </a> </li>
            
                <li><a href=""> TQ nghiên cứu phát hiện ảnh đã chỉnh sửa </a> </li>
            
                <li><a href=""> Stephen Elop không còn “cửa” làm CEO Microsoft</a> </li>
            
                <li><a href=""> Google xóa bỏ phần mềm đối thủ CyanogenMod</a> </li>
            
                </ul>
                <span id="allnews"><a href="/">Xem tất cả</a></span>
                
        
    </div>
   
</div>


<div class="tieudiem">
    <div class="tit">
        
                <a>
                    Tiêu điểm
                </a>
          
    </div>
    <div class="ctm">
        
                <div class="focus">
                    
                            <div>
                                <a href=""><img src="Image/icon.jpg" align="absmiddle">
                                    Modem D-Link, Tenda của Trung Quốc cài sẵn mã độc
                                </a>
                            </div>

                        
                            <div>
                                <a  href=""><img src="Image/icon.jpg" align="absmiddle">
                                    Làm thế nào để khôi phục ID tài khoản iTunes?
                                </a>
                            </div>

                        
                            <div>
                                <a href=""><img src="Image/icon.jpg" align="absmiddle">
                                    Khắc phục lỗi 100% Disk trên Windows 8/8.1
                                </a>
                            </div>

                        
                            <div>
                                <a href=""><img src="Image/icon.jpg" align="absmiddle">
                                    Mẹo tận dụng sức mạnh tối đa của card đồ hoạ
                                </a>
                            </div>

                        
                            <div>
                                <a href=""><img src="Image/icon.jpg" align="absmiddle">
                                    Hệ điều hành Windows sinh nhật tròn 30 năm tuổi
                                </a>
                            </div>

                        
                            <div>
                                <a href=""><img src="Image/icon.jpg" align="absmiddle">
                                    Google tung "độc chiêu" phòng chống DDoS
                                </a>
                            </div>

                        
                            <div>
                                <a href=""><img src="Image/icon.jpg" align="absmiddle">
                                    Cách nhanh nhất để chia sẻ kết nối Wifi
                                </a>
                            </div>

                        
                            <div>
                                <a href=""><img src="Image/icon.jpg" align="absmiddle">
                                    Mẹo sử dụng iDevice không cần iTunes
                                </a>
                            </div>

                        
                            <div>
                                <a href=""><img src="Image/icon.jpg" align="absmiddle">
                                    Sử dụng Email theo tên miền với Windows Live
                                </a>
                            </div>

                        
                            <div>
                                <a href=""><img src="Image/icon.jpg" align="absmiddle">
                                    Cách phòng tránh các tác hại khi sử dụng laptop</a></div>
                                    <div>
                                <a href=""><img src="Image/icon.jpg" align="absmiddle">
                                    Cách phòng tránh các tác hại khi sử dụng laptop</a></div>
                                    <div>
                                <a href=""><img src="Image/icon.jpg" align="absmiddle">
                                    Cách phòng tránh các tác hại khi sử dụng laptop</a></div>

                        
                            <div>
                                <a href=""><img src="Image/icon.jpg" align="absmiddle">
                                    Quản lý toàn diện iCloud từ máy tính
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

