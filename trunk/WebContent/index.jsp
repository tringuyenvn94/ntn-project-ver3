<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Trang Chủ</title>

<link rel="stylesheet" type="text/css" href="CSS/styleMenu.css"/>
<link rel="stylesheet" type="text/css" href="CSS/styleLayout.css"/>

</head>

<body>

	<div class="container">
    
		<div class="header">
			<div class="headermain">
			  <div id="menu_top">
                    <a href="TrangChu.html">Trang chủ&nbsp;</a> | &nbsp;
                    <a href="TinTucCN.html">Tin tức&nbsp;</a> |&nbsp;
                    <a href="GioiThieu.html">Giới thiệu&nbsp;</a> |&nbsp;
                    <a href="LienHe.html">Liên hệ &nbsp;</a> |&nbsp;
                    <a href="HoiDap.html">Hỏi đáp&nbsp;</a> |&nbsp;
                    <a href="https://www.facebook.com/ntncoporation?ref=hl">
                    <img src="Image/facebook.jpg" width="18" height="18" /></a>
				</div>
				<div class="logo"><a href="TrangChu.html"><img src="Image/Logo.png" width="185" height="107" /></a></div>
			  <div class="login">
                    <form action="index" method="post" name="form_login" id="form_login" onsubmit="checklogin">
                    	<label>Đăng nhập </label>
                    		<div class="login_input">
                   			 	<input name="username" id="username" type="text" class="login_username" value="Tên đăng nhập" onfocus="if(this.value == 'Tên đăng nhập') this.value='';" onblur="if(this.value == '') this.value='Tên đăng nhập';">
                    
                    			<input type="password" name="passwd" id="passwd" class="login_password" value="Mật khẩu" onfocus="if(this.value == 'Mật khẩu') this.value='';" onblur="if(this.value == '') this.value='Mật khẩu';">
           			  </div>
                    		<div class="login_button">
                                <a href="register.html">Đăng kí |</a>
                                <a href="reset.html">Quên mật khẩu</a>
                                <input type="submit" name="Submit" class="button" value="Đăng nhập">
                            </div>
                    </form>

			  </div>
		  </div>
		</div>
		
        <div id="menumain">

            <ul id="topmenu">
            <li class="item menu"><a href="TrangChu.html"><span>Trang chủ</span> </a>
            	 <ul class="submenu_1"></ul>
     
                 
            </li>
            
            <li id="item_2" class="item"><a href="TinTucCN.html"><span>
            Tin tức công nghệ
            </span></a>
            
            <ul class="submenu_2">
            
            <li>
            
            <a href="TinTrongNuoc.html">
            Trong nước</a></li>
            
            <li>
            
            <a href="TinQuocTe.html">
            Quốc tế</a></li>
            
            <li>
            
            <a href="TinKhac.html">
            Tin khác</a></li>
            
            </ul>
            </li>
            
            
            
            <li id="item_3" class="item"><a href="BaoMat.html"><span>
            Bảo mật
            </span></a>
            
            <ul class="submenu_3">
            
            <li>
            
            <a href="TinBaoMat.html">
            Tin bảo mật</a></li>
            
            <li>
            
            <a href="ThuThuat.html">
            Giải pháp bảo mật</a></li>
            
            <li>
            
            <a href="Vius.html">
            Virus</a></li>
            
            <li>
            
            <a href="Hacker.html">
            Hacker</a></li>
            
            </ul>
            </li>
                    
            <li id="item_4" class="item"><a href="PhanCung.html"><span>
            Phần cứng
            </span></a>
            
            <ul class="submenu_4">
            
            <li>
            
            <a href="Desktop.html">
            Desktop</a></li>
            
            <li>
            
            <a href="Laptop.html">
            Laptop</a></li>
                        
            <li>
            
            <a href="ThietBi_LinhKien.html">
            Thiết bị - Linh kiện</a></li>
            
            <li>
            
            <a href="TuVan.html">
            Tư vấn</a></li>
            
            </ul>
            </li>
            
            <li id="item_5" class="item"><a href="PhanMem.html"><span>
            Phần mềm
            </span></a>
            
            <ul class="submenu_5">
            
            <li>
            
            <a href="TinTucLK.html">
            Tin tức</a></li>
            
            <li>
            
            <a href="DanhGia.html">
            Đánh giá</a></li>
            
            <li>
            
            <a href="KhuyenMai.html">
            Miễn phí - Giảm giá</a></li>
            
            </ul>
            </li>
            
            <li id="item_6" class="item"><a href="HeDieuHanh.html"><span>
            Hệ điều hành
            </span></a>
            
            <ul class="submenu_6">
            
            <li>
            
            <a href="Windows.html">
            Windows</a></li>
            
            <li>
            
            <a href="Unix-Linux.html">
            Unix-Linux</a></li>
            
            <li>
            
            <a href="Mac.html">
            Mac</a></li>
            
            </ul>
            </li>
            
            <li id="item_7" class="item"><a href="ThietBiSo.html"><span>
            Thiết bị số
            </span></a>
            <ul class="submenu_7">
            
            <li>
            
            <a href="MayAnh.html">
            Máy ảnh</a></li>
            
            <li>
            
            <a href="MayQuay.html">
            Máy quay</a></li>
            
            <li>
            
            <a href="DiDong.html">
            Di động</a></li>
             <li>            
            <a href="MayNgheNhac.html">
            Máy nghe nhạc</a></li>
            
             <li>           
            <a href="ThietBiGame.html">
            Thiết bị game</a></li>
            
             <li>            
            <a href="ThietBiKhac.html">
            Thiết bị khác</a></li>            
            
             <li>            
            <a href="PhuKien.html">
            Phụ kiện</a></li>
            
            </ul>
            </li>
            <li id="item_8" class="item"><a href="Game.html"><span>
            Game
            </span></a>
             <ul class="submenu_8"></ul>
            
            </li>
            
            <li id="item_9" class="item"><a href="ThuThuat-TienIch.html"><span>
            Thủ thuật-Tiện ích
            </span></a>
            <ul class="submenu_9"></ul>
            </li>
            
            <li id="item_10" class="item"><a href="HoiDap.html"><span>
            Hỏi - đáp
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
                                <input type="text" name="query" id="txtQuery" style="width: 150px; height: 18px;">
                            </td>
                            <td>
                                <input id="button" type="button" style="width: 50px" value="Tìm">
                            </td>
                        </tr>
                    </table>
                    
            </div>
            
            <div id="content_main">
            	
                <div class="content_left">
           
                    <div class="TopNew">
                        <div class="tl">
                            <div class="tr">
                                <div class="tc">
                                </div>
                            </div>
                        </div>
                        <div class="ml">
                            <div class="mr">
                                <div class="mc">
                                    <div class="title_TopNew">
                                        <a id="Main_tvw_hylTitle" href="http://www.quantrimang.com.vn/cach-sua-loi-lag-chuot-tren-windows-8-1-105457"><span id="Main_tvw_lblTitle">Cách sửa lỗi lag chuột trên Windows 8.1 </span></a></div>
                                    <div>
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tbody><tr>
                                                <td class="imgTop">
                                                    <a id="Main_tvw_hylImg" href="http://www.quantrimang.com.vn/cach-sua-loi-lag-chuot-tren-windows-8-1-105457"><img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/windows-9.jpg" align="left" border="0" hspace="3" vspace="3"></a>
                                                </td>
                                                <td class="ctTop" valign="top">
                                                    Lỗi lag chuột khi chơi game trên các máy tính chạy Windows 8.1 đã gây ra không ít khó chịu cho game thủ.&nbsp;Một trong những điểm mới trên Windows 8.1 là hệ điều hành này hỗ trợ tốt hơn cho các màn hình có DPI cao.&nbsp;
                                                </td>
                                            </tr>
                                        </tbody></table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="bl">
                            <div class="br">
                                <div class="bc">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div style="clear: both">
                    </div>
                    <div class="subcontent">
                        
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tbody><tr>
                            
                                <td>
                                    <span>
                                        <div class="boxsub">
                                            <a href="http://www.quantrimang.com.vn/bi-quyet-bo-tui-truoc-khi-chon-mua-laptop-105450">
                                                <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/laptop-1.jpg" border="0">
                                            </a>
                                        </div>
                                        <div class="Title_boxsub">
                                            <a href="http://www.quantrimang.com.vn/bi-quyet-bo-tui-truoc-khi-chon-mua-laptop-105450">
                                                BÍ quyết 'bỏ túi' trước khi chọn mua laptop</a>
                                        </div>
                                    </span>
                                </td>
                            
                                <td>
                                    <span>
                                        <div class="boxsub">
                                            <a href="http://www.quantrimang.com.vn/thietbiso/lg-man-hinh-cong-bat-ngo-xuat-hien-tai-viet-nam-105439">
                                                <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/LG-G-Flex15.jpg" border="0">
                                            </a>
                                        </div>
                                        <div class="Title_boxsub">
                                            <a href="http://www.quantrimang.com.vn/thietbiso/lg-man-hinh-cong-bat-ngo-xuat-hien-tai-viet-nam-105439">
                                                LG màn hình cong bất ngờ xuất hiện tại Việt Nam</a>
                                        </div>
                                    </span>
                                </td>
                            
                                <td>
                                    <span>
                                        <div class="boxsub">
                                            <a href="http://www.quantrimang.com.vn/4-cach-de-chong-lai-he-thong-binh-luan-moi-cua-youtube-105438">
                                                <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/youtube-1.jpg" border="0">
                                            </a>
                                        </div>
                                        <div class="Title_boxsub">
                                            <a href="http://www.quantrimang.com.vn/4-cach-de-chong-lai-he-thong-binh-luan-moi-cua-youtube-105438">
                                                Chống lại hệ thống bình luận mới của YouTube</a>
                                        </div>
                                    </span>
                                </td>
                            
                                </tr> </tbody></table>
                            
                    </div>
                    
                               <div style="margin:5px 0px;text-align: center;" id="adz305"></div>
                        <script type="text/javascript">
                            __add_banner({type:'zone',id:'305',output:'adz305'});
                        </script>
                    <div class="wbox Cat">
                        <div class="tl">
                            <div class="tr">
                                <div class="tc">
                                    <a href="http://www.quantrimang.com.vn/tintuc" title="Xem các bài viết trong chuyên mục 'Tin tức'">Tin tức</a></div>
                            </div>
                        </div>
                        <div class="ml">
                            <div class="mr">
                                <div class="mc">
                                    <div class="Title_article">
                                        <a id="Main_ac0_hylName" href="http://www.quantrimang.com.vn/ai-se-giet-chet-tien-ao-bitcoin-105455">Ai sẽ giết chết "tiền ảo" Bitcoin?</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="imgModule" valign="top">
                                                    <a id="Main_ac0_hylCImg" href="http://www.quantrimang.com.vn/ai-se-giet-chet-tien-ao-bitcoin-105455"><img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/Bitcoin-1.jpg" align="left" border="0" hspace="3" vspace="3"></a>
                                                       Đúng 2 năm về trước, Wired cho đăng tải một bài báo có tên "Sự trỗi dậy và sụp đổ của Bitcoin". Trong khi Wired đã đúng về sự trỗi dậy của Bitcoin, ngày sụp đổ của đồng tiền ảo này liệu có còn quá xa?
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="Tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/icon.jpg" align="absmiddle">&nbsp;<a href="http://www.quantrimang.com.vn/anonymous-tan-cong-nhieu-co-quan-chinh-phu-my-105448">Anonymous tấn công nhiều cơ quan chính phủ Mỹ </a> </li>
                                            
                                                <li>
                                                    <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/icon.jpg" align="absmiddle">&nbsp;<a href="http://www.quantrimang.com.vn/da-nang-quan-ly-do-thi-qua-facebook-105446">Đà Nẵng: Quản lý đô thị qua… Facebook </a> </li>
                                            
                                                </ul>
                                            
                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="bl">
                            <div class="br">
                                <div class="bc">
                                </div>
                            </div>
                        </div>
                    </div>
                    
                                
                    <div class="wbox Cat">
                        <div class="tl">
                            <div class="tr">
                                <div class="tc">
                                    <a href="http://www.quantrimang.com.vn/kienthuc" title="Xem các bài viết trong chuyên mục 'Kiến thức'">Kiến thức</a></div>
                            </div>
                        </div>
                        <div class="ml">
                            <div class="mr">
                                <div class="mc">
                                    <div class="Title_article">
                                        <a id="Main_ac1_hylName" href="http://www.quantrimang.com.vn/so-phan-nhung-chiec-iphone-bi-cuop-105456">Số phận những chiếc iPhone bị cướp</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="imgModule" valign="top">
                                                    <a id="Main_ac1_hylCImg" href="http://www.quantrimang.com.vn/so-phan-nhung-chiec-iphone-bi-cuop-105456"><img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/iPhone-1.jpg" align="left" border="0" hspace="3" vspace="3"></a>
                                                       Tại TP.HCM và Hà Nội, cũng như các thành phố lớn khác, tình trạng cướp giật, trộm cắp những chiếc điện thoại đắt tiền, mà điển hình là iPhone, không còn là chuyện hiếm. Sử dụng điện thoại khi đi xe máy, để điện thoại trong ví, trong túi, hay thậm trí ngồi vỉa hè uống café cũng bị cướp giật trắng trợn.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="Tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/icon.jpg" align="absmiddle">&nbsp;<a href="http://www.quantrimang.com.vn/huong-dan-ban-loai-bo-cac-thu-muc-anh-trong-trong-may-android-105453">Loại bỏ các thư mục ảnh trống trong máy Android <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/icon_new1.jpg" border="0"></a> </li>
                                            
                                                <li>
                                                    <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/icon.jpg" align="absmiddle">&nbsp;<a href="http://www.quantrimang.com.vn/cach-sac-pin-cho-smartphone-tablet-nhanh-hon-50-105452">Cách sạc pin cho smartphone, tablet nhanh hơn 50% </a> </li>
                                            
                                                </ul>
                                            
                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="bl">
                            <div class="br">
                                <div class="bc">
                                </div>
                            </div>
                        </div>
                    </div>
                                 
                                
                    <div class="wbox Cat">
                        <div class="tl">
                            <div class="tr">
                                <div class="tc">
                                    <a href="http://www.quantrimang.com.vn/hethong" title="Xem các bài viết trong chuyên mục 'Hệ thống'">Hệ thống</a></div>
                            </div>
                        </div>
                        <div class="ml">
                            <div class="mr">
                                <div class="mc">
                                    <div class="Title_article">
                                        <a id="Main_ac2_hylName" href="http://www.quantrimang.com.vn/tu-xay-dung-he-thong-nas-phan-3-cau-hinh-95038">Tự xây dựng hệ thống NAS, phần 3: Cấu hình</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="imgModule" valign="top">
                                                    <a id="Main_ac2_hylCImg" href="http://www.quantrimang.com.vn/tu-xay-dung-he-thong-nas-phan-3-cau-hinh-95038"><img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/Cau-hinh-4.jpg" align="left" border="0" hspace="3" vspace="3"></a>
                                                       Sau khi đã hoàn thành việc cài đặt OS trên NAS box và cấu hình xong IP theo nhu cầu, thường thì chúng ta sẽ không cần sờ đến chiếc máy này nữa trừ khi có các thay đổi về mặt phần cứng (thêm ổ cứng mới, sửa chữa hỏng hóc, hard reset...).
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="Tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/icon.jpg" align="absmiddle">&nbsp;<a href="http://www.quantrimang.com.vn/tu-xay-dung-he-thong-nas-don-gian-phan-2-cai-dat-95037">Tự xây dựng hệ thống NAS đơn giản: Phần 2: Cài đặt </a> </li>
                                            
                                                <li>
                                                    <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/icon.jpg" align="absmiddle">&nbsp;<a href="http://www.quantrimang.com.vn/tu-xay-dung-he-thong-nas-don-gian-phuc-vu-nhu-cau-luu-tru-95029">Tự xây dựng hệ thống NAS phục vụ nhu cầu lưu trữ </a> </li>
                                            
                                                </ul>
                                            
                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="bl">
                            <div class="br">
                                <div class="bc">
                                </div>
                            </div>
                        </div>
                    </div>
                    
                                
                    <div class="wbox Cat">
                        <div class="tl">
                            <div class="tr">
                                <div class="tc">
                                    <a href="http://www.quantrimang.com.vn/baomat" title="Xem các bài viết trong chuyên mục 'Bảo mật'">Bảo mật</a></div>
                            </div>
                        </div>
                        <div class="ml">
                            <div class="mr">
                                <div class="mc">
                                    <div class="Title_article">
                                        <a id="Main_ac3_hylName" href="http://www.quantrimang.com.vn/google-tung-doc-chieu-phong-chong-ddos-105403">Google tung "độc chiêu" phòng chống DDoS</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="imgModule" valign="top">
                                                    <a id="Main_ac3_hylCImg" href="http://www.quantrimang.com.vn/google-tung-doc-chieu-phong-chong-ddos-105403"><img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/google-2.jpg" align="left" border="0" hspace="3" vspace="3"></a>
                                                       Cho dù có cùng tên gọi với máy chơi game cầm tay của NVIDIA, Project Shield của Google là một dự án hoàn toàn độc lập sẽ giúp ích rất nhiều cho các trang web nhỏ.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="Tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/icon.jpg" align="absmiddle">&nbsp;<a href="http://www.quantrimang.com.vn/nhom-tin-tac-trung-quoc-danh-cap-bi-mat-cong-ty-my-105390">Tin tặc Trung Quốc đánh cắp bí mật công ty Mỹ? </a> </li>
                                            
                                                <li>
                                                    <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/icon.jpg" align="absmiddle">&nbsp;<a href="http://www.quantrimang.com.vn/trojan-moi-kho-phat-hien-tan-cong-lo-hong-ie-105360">Trojan mới khó phát hiện tấn công lỗ hổng IE </a> </li>
                                            
                                                </ul>
                                            
                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="bl">
                            <div class="br">
                                <div class="bc">
                                </div>
                            </div>
                        </div>
                    </div>
                    
                                
                    <div class="wbox Cat">
                        <div class="tl">
                            <div class="tr">
                                <div class="tc">
                                    <a href="http://www.quantrimang.com.vn/phancung" title="Xem các bài viết trong chuyên mục 'Phần cứng'">Phần cứng</a></div>
                            </div>
                        </div>
                        <div class="ml">
                            <div class="mr">
                                <div class="mc">
                                    <div class="Title_article">
                                        <a id="Main_ac4_hylName" href="http://www.quantrimang.com.vn/2-ly-do-nen-mua-ngay-ipad-mini-retina-105445">2 lý do nên mua ngay iPad Mini Retina</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="imgModule" valign="top">
                                                    <a id="Main_ac4_hylCImg" href="http://www.quantrimang.com.vn/2-ly-do-nen-mua-ngay-ipad-mini-retina-105445"><img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/iPad-1.jpg" align="left" border="0" hspace="3" vspace="3"></a>
                                                       Theo CNET, iPad Mini Retina tốt hơn iPod, iPhone và bỏ xa iPad thế hệ thứ ba và thứ tư. Sản phẩm đã khắc phục được nhược điểm của thế hệ iPad Mini đầu tiên và hứa hẹn đem lại trải nghiệm tuyệt vời nhất cho người dùng.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="Tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/icon.jpg" align="absmiddle">&nbsp;<a href="http://www.quantrimang.com.vn/hp-chromebook-11-bi-thu-hoi-hang-loat-105435">HP Chromebook 11 bị thu hồi hàng loạt </a> </li>
                                            
                                                <li>
                                                    <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/icon.jpg" align="absmiddle">&nbsp;<a href="http://www.quantrimang.com.vn/acer-gioi-thieu-chromebook-sieu-re-gia-tu-4-trieu-dong-105434">Acer giới thiệu chromebook "siêu rẻ" </a> </li>
                                            
                                                </ul>
                                            
                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="bl">
                            <div class="br">
                                <div class="bc">
                                </div>
                            </div>
                        </div>
                    </div>
                                 
                                
                    <div class="wbox Cat">
                        <div class="tl">
                            <div class="tr">
                                <div class="tc">
                                    <a href="http://www.quantrimang.com.vn/hedieuhanh" title="Xem các bài viết trong chuyên mục 'Hệ điều hành'">Hệ điều hành</a></div>
                            </div>
                        </div>
                        <div class="ml">
                            <div class="mr">
                                <div class="mc">
                                    <div class="Title_article">
                                        <a id="Main_ac5_hylName" href="http://www.quantrimang.com.vn/he-dieu-hanh-windows-sinh-nhat-tron-30-nam-tuoi-105335">Hệ điều hành Windows sinh nhật tròn 30 năm tuổi</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="imgModule" valign="top">
                                                    <a id="Main_ac5_hylCImg" href="http://www.quantrimang.com.vn/he-dieu-hanh-windows-sinh-nhat-tron-30-nam-tuoi-105335"><img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/windows-1.jpg" align="left" border="0" hspace="3" vspace="3"></a>
                                                       Cách đây tròn 30 năm, nhà sáng lập Microsoft là Bill Gates lần đầu tiên giới thiệu Windows, mở đường cho 3 thập kỉ thành công của hệ điều hành này.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="Tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/icon.jpg" align="absmiddle">&nbsp;<a href="http://www.quantrimang.com.vn/xoa-bo-du-lieu-dong-bo-tren-may-tu-windows-8-1-105119">Xóa bỏ dữ liệu đồng bộ trên mây từ Windows 8.1 </a> </li>
                                            
                                                <li>
                                                    <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/icon.jpg" align="absmiddle">&nbsp;<a href="http://www.quantrimang.com.vn/huong-dan-nang-cap-len-windows-8-1-bang-hinh-anh-105098">Hướng dẫn nâng cấp lên Windows 8.1 bằng hình ảnh </a> </li>
                                            
                                                </ul>
                                            
                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="bl">
                            <div class="br">
                                <div class="bc">
                                </div>
                            </div>
                        </div>
                    </div>
                    
                                          
                    <div class="wbox Cat">
                        <div class="tl">
                            <div class="tr">
                                <div class="tc">
                                    <a href="http://www.quantrimang.com.vn/thietbiso" title="Xem các bài viết trong chuyên mục 'Thiết bị số'">Thiết bị số</a></div>
                            </div>
                        </div>
                        <div class="ml">
                            <div class="mr">
                                <div class="mc">
                                    <div class="Title_article">
                                        <a id="Main_ac6_hylName" href="http://www.quantrimang.com.vn/thietbiso/smartphone-dau-tien-cua-jolla-se-len-ke-ngay-27-11-105427">Smartphone đầu tiên của Jolla sẽ lên kệ ngày 27/11</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="imgModule" valign="top">
                                                    <a id="Main_ac6_hylCImg" href="http://www.quantrimang.com.vn/thietbiso/smartphone-dau-tien-cua-jolla-se-len-ke-ngay-27-11-105427"><img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/smartphone-1.jpg" align="left" border="0" hspace="3" vspace="3"></a>
                                                       Được công bố vào tháng 5/2013 nhưng đến giờ thì chiếc smartphone Jolla đầu tiên vẫn chưa có mặt trên thị trường. Tuy nhiên, có thông tin cho rằng chiếc smartphone đầu tiên chạy hệ điều hành Sailfish OS sẽ chính thức lên kệ tại Helsinki, Phần Lan vào ngày 27/11.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="Tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/icon.jpg" align="absmiddle">&nbsp;<a href="http://www.quantrimang.com.vn/thietbiso/amd-cong-bo-card-do-hoa-cho-sieu-may-tinh-105426">AMD công bố card đồ họa cho siêu máy tính </a> </li>
                                            
                                                <li>
                                                    <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/icon.jpg" align="absmiddle">&nbsp;<a href="http://www.quantrimang.com.vn/thietbiso/pin-nexus-5-cho-thoi-gian-su-dung-thua-xa-lg-g2-105425">Pin Nexus 5 cho thời gian sử dụng thua xa LG G2 </a> </li>
                                            
                                                </ul>
                                            
                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="bl">
                            <div class="br">
                                <div class="bc">
                                </div>
                            </div>
                        </div>
                    </div>
                    
                                      
                    <div class="wbox Cat">
                        <div class="tl">
                            <div class="tr">
                                <div class="tc">
                                    <a href="http://www.quantrimang.com.vn/doanhnghiep" title="Xem các bài viết trong chuyên mục 'Doanh nghiệp 2.0'">Doanh nghiệp 2.0</a></div>
                            </div>
                        </div>
                        <div class="ml">
                            <div class="mr">
                                <div class="mc">
                                    <div class="Title_article">
                                        <a id="Main_ac7_hylName" href="http://www.quantrimang.com.vn/apple-mua-lai-cong-ty-cong-nghe-3d-primesense-105440">Apple mua lại công ty công nghệ 3D PrimeSense</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="imgModule" valign="top">
                                                    <a id="Main_ac7_hylCImg" href="http://www.quantrimang.com.vn/apple-mua-lai-cong-ty-cong-nghe-3d-primesense-105440"><img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/AppleTV.jpg" align="left" border="0" hspace="3" vspace="3"></a>
                                                       Theo thông tin từ trang công nghệ&nbsp;Softpedia, Apple vừa xác nhận rằng hãng đã mua lại PrimeSense - một công ty sản xuất chip Israel nhằm tập trung vào việc nghiên cứu và ứng dụng công nghệ hình ảnh 3D.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="Tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/icon.jpg" align="absmiddle">&nbsp;<a href="http://www.quantrimang.com.vn/google-ra-gia-4-ty-usd-de-mua-snapchat-105430">Google ra giá 4 tỷ USD để mua Snapchat </a> </li>
                                            
                                                <li>
                                                    <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/icon.jpg" align="absmiddle">&nbsp;<a href="http://www.quantrimang.com.vn/snapchat-che-3-ty-usd-cua-facebook-105417">Snapchat "chê" 3 tỷ USD của Facebook </a> </li>
                                            
                                                </ul>
                                            
                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="bl">
                            <div class="br">
                                <div class="bc">
                                </div>
                            </div>
                        </div>
                    </div>
                    
                                    
                    <div class="wbox Cat">
                        <div class="tl">
                            <div class="tr">
                                <div class="tc">
                                    <a href="http://www.quantrimang.com.vn/phan-mem" title="Xem các bài viết trong chuyên mục 'Phần mềm'">Phần mềm</a></div>
                            </div>
                        </div>
                        <div class="ml">
                            <div class="mr">
                                <div class="mc">
                                    <div class="Title_article">
                                        <a id="Main_ac9_hylName" href="http://www.quantrimang.com.vn/mot-nha-may-cua-foxconn-dung-san-xuat-iphone-5c-105462">Một nhà máy của Foxconn dừng sản xuất iPhone 5c</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="imgModule" valign="top">
                                                    <a id="Main_ac9_hylCImg" href="http://www.quantrimang.com.vn/mot-nha-may-cua-foxconn-dung-san-xuat-iphone-5c-105462"><img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/iPhone-2.jpg" align="left" border="0" hspace="3" vspace="3"></a>
                                                       Kể từ khi ra mắt chiếc điện thoại giá rẻ của Apple - iPhone 5c chỉ đem lại một tình hình kinh doanh ảm đạm. Và cho đến ngày hôm qua một nhà máy của Foxconn tại Trịnh Châu, Trung Quốc sẽ tạm dừng sản xuất sản phẩm này.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="Tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/icon.jpg" align="absmiddle">&nbsp;<a href="http://www.quantrimang.com.vn/nguoi-dung-twitter-it-gap-stress-105454">Người dùng Twitter: Ít gặp stress <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/icon_new1.jpg" border="0"></a> </li>
                                            
                                                <li>
                                                    <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/icon.jpg" align="absmiddle">&nbsp;<a href="http://www.quantrimang.com.vn/google-khuyen-khong-deo-kinh-thong-minh-khi-lai-xe-105447">Google khuyên không đeo kính thông minh khi lái xe </a> </li>
                                            
                                                </ul>
                                            
                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="bl">
                            <div class="br">
                                <div class="bc">
                                </div>
                            </div>
                        </div>
                    </div>
                                    
                                    
                    <div class="wbox Cat">
                        <div class="tl">
                            <div class="tr">
                                <div class="tc">
                                    <a href="http://www.quantrimang.com.vn/labs" title="Xem các bài viết trong chuyên mục 'Video'">Video</a></div>
                            </div>
                        </div>
                        <div class="ml">
                            <div class="mr">
                                <div class="mc">
                                    <div class="Title_article">
                                        <a id="Main_ac8_hylName" href="http://www.quantrimang.com.vn/equiz-bai-kiem-tra-trac-nghiem-ve-java-swing-p2-84417">eQuiz - Bài kiểm tra trắc nghiệm về Java Swing P2</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="imgModule" valign="top">
                                                    <a id="Main_ac8_hylCImg" href="http://www.quantrimang.com.vn/equiz-bai-kiem-tra-trac-nghiem-ve-java-swing-p2-84417"><img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/javaswing02--01.jpg" align="left" border="0" hspace="3" vspace="3"></a>
                                                       Trong bài trước, chúng tôi đã giới thiệu với các bạn phần 1 bài kiểm tra  trắc nghiệm về kiến thức Java Swing cơ bản. Và dưới đây là phần 2 trong  loạt bài quiz với 14 câu hỏi, trong đó có một số câu hỏi với nhiều phương án trả lời khác nhau...
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="Tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/icon.jpg" align="absmiddle">&nbsp;<a href="http://www.quantrimang.com.vn/equiz-bai-kiem-tra-trac-nghiem-ve-java-swing-practice-84379">eQuiz - Bài kiểm tra trắc nghiệm về Java Swing </a> </li>
                                            
                                                <li>
                                                    <img src="./B%E1%BA%A3o%20m%E1%BA%ADt,%20th%E1%BB%A7%20thu%E1%BA%ADt,%20m%E1%BA%A1ng%20m%C3%A1y%20t%C3%ADnh,%20h%E1%BB%87%20%C4%91i%E1%BB%81u%20h%C3%A0nh,%20tin%20h%E1%BB%8Dc%20v%C4%83n%20ph%C3%B2ng%20-%20Quan%20tri%20mang%20%20Kien%20thuc%20quan%20tri%20mang,bao%20mat,thu%20thuat,mang%20LAN,mang%20WAN,he%20dieu%20hanh-%20QuanTriMang.com_files/icon.jpg" align="absmiddle">&nbsp;<a href="http://www.quantrimang.com.vn/elab-huong-dan-gan-tai-khoan-facebook-chat-vao-ichat-trong-mac-os-x-84176">Gán tài khoản Facebook Chat vào iChat trong Mac OS </a> </li>
                                            
                                                </ul>
                                            
                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="bl">
                            <div class="br">
                                <div class="bc">
                                </div>
                            </div>
                        </div>
                    </div>
                                    
                    
                                
                            </div>
                         
                                  
                            
                    
                                </div>            
        	    	
            

        
        
        
        
        </div>
		
        
        
        
        <div class="footer">
        
        </div>
        
  		<div id="ads_left" style="position:fixed; top:5px; height:600px; width:160px; margin-left:-165px">
        	<div style="position:absolute"><a href="http://www.tapchicntt.com" target="_blank">
            	<img src="Image/quangcao2.gif" width="160" height="600" border="0"></a>
        	</div>
        </div>
        
		<div id="ads_right" style="position:fixed; top:5px; height:600px; width:160px; margin-left:1006px">
        	<div style="position:absolute"><a href="http://www.bkc.vn" target="_blank">
            	<img src="Image/quangcao3.jpg" width="160" height="600" border="0"></a>
       	 	</div>
        	
 		</div>

	</div>

</body>
</html>

