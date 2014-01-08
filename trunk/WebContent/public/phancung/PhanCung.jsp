<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Phần cứng</title>

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
           
                    <div class="topnew">
                        
                                    <div class="title_topnew">
                                        <a href="cach sua loi lag chuot tren windows 8.1"><span> iPad Mini Retina rất khó sửa chữa
 </span></a></div>
                                    <div>
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tbody><tr>
                                                <td class="img_top">
                                                    <a href="/cach-sua-loi-lag-chuot-tren-windows-8-1-105457"><img src="Image/ipad-mini1.jpg" height="222" align="left" border="0" hspace="3" vspace="3"></a>
                                                </td>
                                                <td class="ctt_top" valign="top">Khám phá linh kiện bên trong iPad Mini Retina, các kỹ thuật viên trang iFixit nhận thấy Apple đã nâng cấp dung lượng pin lớn hơn bên cạnh việc sử dụng màn hình độ phân giải cao, nhưng máy cũng được đánh giá rất khó sửa chữa.

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
                                                <img src="Image/iPad-mini-2.jpg" border="0">
                                            </a>
                                        </div>
                                        <div class="title_boxsub">
                                            <a href="/bi-quyet-bo-tui-truoc-khi-chon-mua-laptop-105450">
                                              Ngày mai iPad mini Retina 4G có mặt tại Việt Nam
</a>
                                        </div>
                                    </span>
                                </td>
                            
                                <td>
                                    <span>
                                        <div class="boxsub">
                                            <a href="/thietbiso/lg-man-hinh-cong-bat-ngo-xuat-hien-tai-viet-nam-105439">
                                                <img src="Image/LG-G-Pad1.jpg" border="0">
                                            </a>
                                        </div>
                                        <div class="title_boxsub">
                                            <a href="/thietbiso/lg-man-hinh-cong-bat-ngo-xuat-hien-tai-viet-nam-105439">
                                                LG G Pad 8.3 bán tại Việt Nam cuối tháng này
</a>
                                        </div>
                                    </span>
                                </td>
                            
                                <td>
                                    <span>
                                        <div class="boxsub">
                                            <a href="4-cach-de-chong-lai-he-thong-binh-luan-moi-cua-youtube-105438">
                                                <img src="Image/iPad-mini-2(1).jpg" border="0">
                                            </a>
                                        </div>
                                        <div class="title_boxsub">
                                            <a href="/4-cach-de-chong-lai-he-thong-binh-luan-moi-cua-youtube-105438">
iPad Mini màn hình Retina bắt đầu bán
</a>
                                        </div>
                                    </span>
                                </td>
                            
                                </tr> </tbody></table>
                            
                    </div>
                    
                       
                    <div class="wbox cat">
                        <div class="tit">
                            
                                    <a href="desktop.jsp" title="Chuyên mục 'Desktop'">Desktop</a>
                            
                        </div>
                        <div class="ctm">
                           
                                    <div class="title_article">
                                        <a href="/ai-se-giet-chet-tien-ao-bitcoin-105455">Giá Mac Pro 2013 có thể lên tới 14.000 USD</a>
                                     </div>   
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/ai-se-giet-chet-tien-ao-bitcoin-105455"><img src="Image/Mac-Pro-2013.jpg" align="left" border="0" hspace="3" vspace="3"></a>
Mac Pro 2013 có giá khởi điểm 3000 USD nhưng nếu lựa chọn cấu hình cao nhất, người dùng sẽ phải trả một cái giá lên tới 14.000 USD.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                    <div class="title_article">
                                        <a href="/ai-se-giet-chet-tien-ao-bitcoin-105455">Siêu máy tính có khả năng dự báo thời tiết
</a>
                                     </div>   
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/ai-se-giet-chet-tien-ao-bitcoin-105455"><img src="Image/Sieu-may-tinh.jpg" align="left" border="0" hspace="3" vspace="3"></a>
Có khả năng dự báo về cường độ và đường đi của cơn bão bốn ngày trước khi nó hình thành, đó chính là sức mạnh vượt trội của siêu máy tính trị giá 30 triệu bảng - "bảo bối" của Cơ quan Khí tượng Thủy văn Anh (Met), vừa mới được lộ diện.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                    <div class="title_article">
                                        <a href="/ai-se-giet-chet-tien-ao-bitcoin-105455">MSI ra bộ đôi All In One cấu hình cao
</a>
                                     </div>   
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/ai-se-giet-chet-tien-ao-bitcoin-105455"><img src="Image/MSI-1.jpg" align="left" border="0" hspace="3" vspace="3"></a>
Hãng công nghệ MSI vừa ra mắt bộ đôi máy tính All In One (AIO) là AE221 và AE270. Máy tính All In One hiện nay đang trở thành xu thế mua sắm mới nhờ thiết kế đẹp và gọn nhẹ hơn các dòng máy tính để bàn truyền thống.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                    <div class="tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/anonymous-tan-cong-nhieu-co-quan-chinh-phu-my-105448"> Apple Mac Pro giá 63 triệu đồng, bán ra tháng 12
 </a> </li>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/da-nang-quan-ly-do-thi-qua-facebook-105446"> "Máu điện tử" cho siêu máy tính
 </a> </li>
                                            
                                                </ul>
                                            
                                      
                                    </div>
                               
                        </div>
                        
                    </div>
                    
                                
                   <div class="wbox cat">
                        <div class="tit">
                                    <a href="Laptop.jsp" title="Chuyên mục 'Laptop'">laptop</a>
                            
                        </div>
                        <div class="ctm">
                           
                                    <div class="title_article">
                                        <a href="/google-tung-doc-chieu-phong-chong-ddos-105403">HP Chromebook 11 bị thu hồi hàng loạt
</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/google-tung-doc-chieu-phong-chong-ddos-105403"><img src="Image/HP-1.jpg" align="left" border="0" hspace="3" vspace="3"></a>
Quyết định ngưng bán Chromebook thế hệ mới của HP và Google đã được triển khai sau khi khách hàng than phiền về cục sạc máy tính.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="title_article">
                                        <a href="/google-tung-doc-chieu-phong-chong-ddos-105403">Acer giới thiệu chromebook "siêu rẻ"
</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/google-tung-doc-chieu-phong-chong-ddos-105403"><img src="Image/acer-1.jpg" align="left" border="0" hspace="3" vspace="3"></a>
Theo thông tin từ trang công nghệ Softpedia, Acer vừa giới thiệu mẫu chromebook mới mang tên C720 - 2848 ra thị trường. C720 - 2848 được trang bị màn hình ComfyView 11 inch và sử dụng bộ vi xử lý Intel Haswell thế hệ thứ bốn.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="title_article">
                                        <a href="/google-tung-doc-chieu-phong-chong-ddos-105403">Cách phòng tránh các tác hại khi sử dụng laptop
</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/google-tung-doc-chieu-phong-chong-ddos-105403"><img src="Image/laptop-2.jpg" align="left" border="0" hspace="3" vspace="3"></a>
Việc dành thời gian học tập, làm việc, giải trí bên laptop ngày càng được số đông chúng ta lạm dụng bất kể thời gian ngày đêm để dẫn đến những tác hại nghiêm trọng ảnh hưởng đến sức khỏe mà chúng ta ít ai quan tâm đến.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/nhom-tin-tac-trung-quoc-danh-cap-bi-mat-cong-ty-my-105390"> HP ra mắt máy tính để bàn chạy Android
 </a> </li>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/trojan-moi-kho-phat-hien-tan-cong-lo-hong-ie-105360"> Làm thế nào để thay thế ổ cứng cho Laptop?

 </a> </li>
                                            
                                                </ul>
                                    </div>                             
                        </div>
                        
                    </div>
               
                    <div class="wbox cat">
                        <div class="tit">
                            
                                    <a href="thietbilinhkien.jsp" title="Chuyên mục 'Thiết bị-Linh Kiện'">Thiết bị-Linh Kiện</a>
                            
                        </div>
                        <div class="ctm">
                            
                                    <div class="title_article">
                                        <a href="/">Mediatek đem công nghệ cao giá rẻ đến Việt Nam
</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/"><img src="Image/Mediatek-1.jpg" align="left" border="0" hspace="3" vspace="3"></a>
Hiện nay, người tiêu dùng Việt Nam đang được tiếp cận với những chiếc smartphone ngày càng mạnh mẽ nhưng với giá thành rẻ hơn. MediaTek là một trong những doanh nghiệp góp phần tạo ra sự khác biệt này trong lĩnh vực điện thoại di động.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                     <div class="title_article">
                                        <a href="/">Samsung sẽ tự sản xuất cảm biến di động
`
</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/"><img src="Image/samsung.jpg" align="left" border="0" hspace="3" vspace="3"></a>
Samsung vừa xác nhận kế hoạch sản xuất 180 triệu cảm biến 16 megapixel cho thiết bị di động trong năm sau. Vậy là nhiều khả năng hãng công nghệ Hàn Quốc sẽ không sử dụng cảm biến của Sony để trang bị lên các sản phẩm cao cấp của hãng nữa.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                     <div class="title_article">
                                        <a href="/">Chuẩn cáp mới có tốc độ lên đến 10 Gbps

</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/"><img src="Image/Cap.jpg" align="left" border="0" hspace="3" vspace="3"></a>
Kết nối cáp 16 Mbps của người dùng trông sẽ hết sức nhỏ bé khi so sánh với thế hệ cáp mới cung cấp tốc độ đến 10 Gbps trong tương lai.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                    
                                    <div class="tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/"> AMD sẽ chiếm 40% thị phần GPU trong 6 tháng tới

 </a> </li>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/"> Buffalo ra dòng ổ cứng ngoài đủ màu sắc

 </a> </li>
                                            
                                                </ul>
                                            
                                      
                                    </div>
                               
                        </div>
                        
                    </div>
					
                    <div class="wbox cat">
                        <div class="tit">
                            
                                    <a href="tuvan.jsp" title="Chuyên mục 'Tư vấn'">Tư vấn</a>
                            
                        </div>
                        <div class="ctm">
                            
                                    <div class="title_article">
                                        <a href="/">Để tránh đau cổ tay khi làm việc lâu với máy tính

</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/"><img src="Image/Co-tay.jpg" align="left" border="0" hspace="3" vspace="3"></a>
Chứng đau cổ tay, gây ra từ việc lặp đi lặp lại các động tác đánh máy hay dùng chuột, có lẽ là một trong những ảnh hưởng thường gặp nhất ở những người thường xuyên làm việc trên máy vi tính. Nếu biết kết hợp giữa những thói quen tốt và các sản phẩm hỗ trợ, bạn có thể hoàn toàn loại bỏ những cơn đau khó chịu nữa.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                     <div class="title_article">
                                        <a href="/">5 mẹo nhỏ tiết kiệm đáng kể thời lượng pin iPad


</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/"><img src="Image/pin-iPad.jpg" align="left" border="0" hspace="3" vspace="3"></a>
So với các dòng máy tính bảng hiện nay, iPad có thời lượng pin tới 10 giờ đồng hồ sử dụng. Thậm chí, với siêu phẩm New iPad vừa được ra mắt tuần trước, dung lượng pin còn gấp đôi so với thế hệ cũ. Dù vậy, với nhiều người dùng, nỗ lực này vẫn chưa thể nhu cầu của họ...
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                     <div class="title_article">
                                        <a href="/">8 điều tối kỵ khi "vệ sinh" cho máy tính

</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/"><img src="Image/ve-sinh-may-tinh.jpg" align="left" border="0" hspace="3" vspace="3"></a>
Với nhiều người dùng, việc vệ sinh máy tính - sản phẩm vốn đã trở thành “bất li thân” là niềm vui nho nhỏ, giúp bạn thư giãn. Tuy nhiên, làm sạch cho cho máy tính cũng cần phải biết cách.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                    
                                    <div class="tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Bí kíp tránh đau tay khi sử dụng chuột máy tính


 </a> </li>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Những băn khoăn khi muốn TV mỏng


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
                            
                                   <a href="tinmoinhat.jsp">  Tin mới nhất </a>
                            
                        </div>
                        <div class="ctm">
                            
                                    <div class="title_new">
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">2 lý do nên mua ngay iPad Mini Retina
</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">HP Chromebook 11 bị thu hồi hàng loạt

</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Acer giới thiệu chromebook "siêu rẻ"

 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">iPad Mini Retina rất khó sửa chữa

 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Ngày mai iPad mini Retina 4G có mặt tại Việt Nam
</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">iPad mini 2 rất khó sửa chữa
 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Năm sau doanh số iPad Mini Retina sẽ tăng gấp 2
 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">LG G Pad 8.3 bán tại Việt Nam cuối tháng này

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

