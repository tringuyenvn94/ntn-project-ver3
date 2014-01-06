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
            
            <div id="content_main"></div>            
        	    	
            

        
        
        
        
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

