<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Tư vấn</title>

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
                    
            <li id="item_4" class="item menu"><a href="PhanCung.jsp"><span>
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
                <a href="TrangChu.jsp"><img src="Image/icon_home.jpg" width="18" height="24" align="absmiddle" border="0"></a> »&nbsp;<a href="PhanCung.jsp">Phần cứng</a>&nbsp;»&nbsp;<a href="TuVan.jsp">Tư vấn</a>
        
    </div>
       
          <div class="title_article">
                    <a href="/apple-tang-the-qua-nhan-ngay-black-friday-105640"><span>
</span></a>
                </div>
                <div>
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tbody><tr>
                            <td class="img_top2">
                                <a href="/apple-tang-the-qua-nhan-ngay-black-friday-105640"><img src="" width="247" height="265" hspace="3" vspace="3" align="left" border="0"></a>
                            </td>
                            <td class="content_top" valign="top" align="left">
                          </td>
                        </tr>
                    </tbody></table>
                </div>
                		
                        
                    	<div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                   
                        <div class="subcontent2">
                            <a href="/chinh-phu-my-bi-phat-50-trieu-usd-vi-cai-phan-mem-lau-105658">
                                <img src="" height="179" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/chinh-phu-my-bi-phat-50-trieu-usd-vi-cai-phan-mem-lau-105658">

</a></p>
                            <p class="detail_ctt">
            </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/trung-quoc-nghien-cuu-cong-nghe-phat-hien-anh-da-chinh-sua-105655">
                                <img src="" height="171" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/trung-quoc-nghien-cuu-cong-nghe-phat-hien-anh-da-chinh-sua-105655">

 </a></p>
                            <p class="detail_ctt">
                          </p>
            </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/my-se-cham-dut-dich-vu-dien-thoai-co-dinh-105648">
                                <img src="" height="164" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/my-se-cham-dut-dich-vu-dien-thoai-co-dinh-105648">

</a></p>
                            <p class="detail_ctt">
                          </p>
            </div>
                    
                       <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/microsoft-giam-gia-hang-loat-san-pham-trong-dip-ngay-thu-6-den-toi-105638">
                                <img src="" height="150" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/microsoft-giam-gia-hang-loat-san-pham-trong-dip-ngay-thu-6-den-toi-105638">

</a></p>
                            <p class="detail_ctt">
                          </p>
            </div>
                    
                       <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/chau-au-doa-huy-giao-keo-voi-my-vi-nsa-105632">
                                <img src="" height="146" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/chau-au-doa-huy-giao-keo-voi-my-vi-nsa-105632">

 </a></p>
                            <p class="detail_ctt">
                          </p>
            </div>
                    
                       <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/qualcomm-dang-bi-dieu-tra-chong-doc-quyen-tai-qualcomm-105602">
                                <img src="" height="146" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/qualcomm-dang-bi-dieu-tra-chong-doc-quyen-tai-qualcomm-105602">

</a></p>
                            <p class="detail_ctt"> 
                          </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/gia-ipad-co-the-giam-trong-ngay-black-friday-nam-nay-105597">
                                <img src="" height="134" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/gia-ipad-co-the-giam-trong-ngay-black-friday-nam-nay-105597"> 

 </a></p>
                            <p class="detail_ctt">
                         </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2"><a href="/internet-khien-nganh-truyen-hinh-my-hap-hoi-105584"><a href="/internet-khien-nganh-truyen-hinh-my-hap-hoi-105584"><img src="" height="144" hspace="5" vspace="3" align="left" border="0" /></a>
                          <p class="title_ctt">
                              <a href="/internet-khien-nganh-truyen-hinh-my-hap-hoi-105584">

 </a></p>
                            <p class="detail_ctt">
                          </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/trung-quoc-chinh-thuc-cung-cap-4g-tu-18-12-105578">
                                <img src="" height="147" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/trung-quoc-chinh-thuc-cung-cap-4g-tu-18-12-105578">

 </a></p>
                            <p class="detail_ctt">
                          </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/2-3-so-vu-ro-ri-thong-tin-xay-ra-tren-may-chu-105558">
                                <img src="" height="142" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                                <a href="/2-3-so-vu-ro-ri-thong-tin-xay-ra-tren-may-chu-105558">

 </a></p>
                            <p class="detail_ctt">
                          </p>
                        </div>
                    
                        <div class="lines">
                            <img src="Image/netdut.jpg">
                        </div>
                        <div class="subcontent2">
                            <a href="/gioi-chuc-duc-cam-dung-iphone-sau-be-boi-nghe-len-dien-thoai-105537">
                                <img src="" width="287" height="160" hspace="5" vspace="3" align="left" border="0">
                            </a>
                            <p class="title_ctt">
                          <a href="/gioi-chuc-duc-cam-dung-iphone-sau-be-boi-nghe-len-dien-thoai-105537">

 </a></p>
                            <p class="detail_ctt">
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
 </a> </li>
                    
                      <li> <a href="/giam-doc-windows-phone-khang-dinh-se-duoi-kip-doi-thu-105513">
 </a> </li>
                    
                      <li> <a href="/google-maps-phai-go-bo-hinh-anh-thi-the-mot-cau-be-105493">
</a> </li>
                    
                      <li> <a href="/chuyen-gia-it-cua-nato-lanh-an-7-nam-tu-vi-trom-du-lieu-mat-105487">
 </a> </li>
                    
                      <li> <a href="/apple-thu-lai-iphone-ipad-bi-tham-nuoc-105477">
 </a> </li>
                    
                      <li> <a href="/ai-se-giet-chet-tien-ao-bitcoin-105455">
 </a> </li>
                    
                      <li> <a href="/anonymous-tan-cong-nhieu-co-quan-chinh-phu-my-105448"> 
</a> </li>
                    
                      <li> <a href="/chau-au-chinh-thuc-cho-dung-thiet-bi-dien-tu-tren-may-bay-105443">
 </a> </li>
                    
                      <li> <a href="/apple-dong-cua-itunes-connect-tu-21-12-den-27-12-105442">
 </a> </li>
                    
                      <li> <a href="/nhat-ban-ho-tro-asean-tang-cuong-an-ninh-mang-105436">
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
                                            <a href="/"><img src="" width="175" height="161" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/8-cong-dung-khong-ngo-cua-task-manager-105027">
                                                </a>
                                            </div>
                                        </div>
                                        

                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/huong-dan-nang-cap-len-windows-8-1-bang-hinh-anh-105098"><img src="" width="142" height="159" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/huong-dan-nang-cap-len-windows-8-1-bang-hinh-anh-105098">
                                                </a>
                                            </div>
                                        </div>
  
                                       	<div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/xoa-bo-du-lieu-dong-bo-tren-may-tu-windows-8-1-105119"><img src="" width="142" height="147" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem"></div>
                                        </div>
                                                        
                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/kich-hoat-bo-go-tieng-viet-tren-ubuntu-13-10-105044"><img src="" width="142" height="160" hspace="3" vspace="3" align="left" border="0"></a>
                                               
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/kich-hoat-bo-go-tieng-viet-tren-ubuntu-13-10-105044">
                                                </a>
                                            </div>
                                        </div>
       
                                        
                   
                                        <div class="box1">
                                            <div class="img_tieudiem">
                                            <a href="/"><img src="" width="142" height="162" hspace="3" vspace="3" align="left" border="0"></a>    
                                            </div>
                                            <div class="title_tieudiem">
                                                <a href="/">
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

