<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Tin Tức</title>

<link rel="stylesheet" type="text/css" href="CSS/styleMenu.css"/>
<link rel="stylesheet" type="text/css" href="CSS/styleLayout.css"/>

</head>

<body>

	<div class="container">
    
		<div class="header">
			<div class="headermain">
			  <div id="menu_top">
                    <a href="trangchu.jsp">Trang chủ&nbsp;</a> | &nbsp;
                    <a href="tintuccongnghe.jsp">Tin tức&nbsp;</a> |&nbsp;
                    <a href="GioiThieu.jsp">Giới thiệu&nbsp;</a> |&nbsp;
                    <a href="game.jsp">Game &nbsp;</a> |&nbsp;
                    <a href="lienhe.jsp">Liên hệ&nbsp;</a> |&nbsp;
                    <a href="https://www.facebook.com/ntncoporation?ref=hl">
                    <img src="Image/facebook.jpg" width="18" height="18" /></a>
				</div>
				<div class="logo"><a href="trangchu.jsp"><img src="Image/Logo.png" width="185" height="107" /></a></div>
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
            <li class="item"><a href="trangchu.jsp"><span>Trang chủ</span> </a>
            	 <ul class="submenu_1"></ul>
     
                 
            </li>
            
            <li id="item_2" class="item menu"><a href="tintuccongnghe.jsp"><span>
            Tin tức công nghệ
            </span></a>
            
            <ul class="submenu_2">
            
            <li>
            
            <a href="tintrongnuoc.jsp">
            Trong nước</a></li>
            
            <li>
            
            <a href="tinquocte.jsp">
            Quốc tế</a></li>
            
            <li>
            
            <a href="tinkhac.jsp">
            Tin khác</a></li>
            
            </ul>
            </li>
            
            
            
            <li id="item_3" class="item"><a href="BaoMat.jsp"><span>
            Bảo mật
            </span></a>
            
            <ul class="submenu_3">
            
            <li>
            
            <a href="tinbaomat.jsp">
            Tin bảo mật</a></li>
            
            <li>
            
            <a href="giaiphapbaomat.jsp">
            Giải pháp bảo mật</a></li>
            
            <li>
            
            <a href="virus.jsp">
            Virus</a></li>
            
            <li>
            
            <a href="hacker.jsp">
            Hacker</a></li>
            
            </ul>
            </li>
                    
            <li id="item_4" class="item"><a href="phancung.jsp"><span>
            Phần cứng
            </span></a>
            
            <ul class="submenu_4">
            
            <li>
            
            <a href="desktop.jsp">
            Desktop</a></li>
            
            <li>
            
            <a href="laptop.jsp">
            Laptop</a></li>
                        
            <li>
            
            <a href="thietbilinhkien.jsp">
            Thiết bị - Linh kiện</a></li>
            
            <li>
            
            <a href="tuvan.jsp">
            Tư vấn</a></li>
            
            </ul>
            </li>
            
            <li id="item_5" class="item"><a href="phanmem.jsp"><span>
            Phần mềm
            </span></a>
            
            <ul class="submenu_5">
            
            <li>
            
            <a href="tinphanmem.jsp">
            Tin tức</a></li>
            
            <li>
            
            <a href="danhgia.jsp">
            Đánh giá</a></li>
            
            <li>
            
            <a href="mienphigiamgia.jsp">
            Miễn phí - Giảm giá</a></li>
            
            </ul>
            </li>
            
            <li id="item_6" class="item"><a href="hedieuhanh.jsp"><span>
            Hệ điều hành
            </span></a>
            
            <ul class="submenu_6">
            
            <li>
            
            <a href="windows.jsp">
            Windows</a></li>
            
            <li>
            
            <a href="unix-linux.jsp">
            Unix-Linux</a></li>
            
            <li>
            
            <a href="mac.jsp">
            Mac</a></li>
            
            </ul>
            </li>
            
            <li id="item_7" class="item"><a href="thietbiso.jsp"><span>
            Thiết bị số
            </span></a>
            <ul class="submenu_7">
            
            <li>
            
            <a href="mayanh.jsp">
            Máy ảnh</a></li>
            
            <li>
            
            <a href="mayquay.jsp">
            Máy quay</a></li>
            
            <li>
            
            <a href="didong.jsp">
            Di động</a></li>
             <li>            
            <a href="maynghenhac.jsp">
            Máy nghe nhạc</a></li>
            
             <li>           
            <a href="thietbigame.jsp">
            Thiết bị game</a></li>
            
             <li>            
            <a href="thietbikhac.jsp">
            Thiết bị khác</a></li>            
            
             <li>            
            <a href="phukien.jsp">
            Phụ kiện</a></li>
            
            </ul>
            </li>
            <li id="item_8" class="item"><a href="game.jsp"><span>
            Game
            </span></a>
             <ul class="submenu_8"></ul>
            
            </li>
            
            <li id="item_9" class="item"><a href="thuthuattientich.jsp"><span>
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
                                        <a href="cach sua loi lag chuot tren windows 8.1"><span> Ai sẽ giết chết "tiền ảo" Bitcoin? </span></a></div>
                                    <div>
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tbody><tr>
                                                <td class="img_top">
                                                    <a href="/cach-sua-loi-lag-chuot-tren-windows-8-1-105457"><img src="Image/Bitcoin-1.jpg" height="265" align="left" border="0" hspace="3" vspace="3"></a>
                                                </td>
                                                <td class="ctt_top" valign="top">
                                                    Đúng 2 năm về trước, Wired cho đăng tải một bài báo có tên "Sự trỗi dậy và sụp đổ của Bitcoin". Trong khi Wired đã đúng về sự trỗi dậy của Bitcoin, ngày sụp đổ của đồng tiền ảo này liệu có còn quá xa?&nbsp;
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
                                                <img src="Image/internet5.jpg" border="0">
                                            </a>
                                        </div>
                                        <div class="title_boxsub">
                                            <a href="/bi-quyet-bo-tui-truoc-khi-chon-mua-laptop-105450">
                                                Báo cáo tổng kết xu hướng Internet toàn cầu 2013</a>
                                        </div>
                                    </span>
                                </td>
                            
                                <td>
                                    <span>
                                        <div class="boxsub">
                                            <a href="/thietbiso/lg-man-hinh-cong-bat-ngo-xuat-hien-tai-viet-nam-105439">
                                                <img src="Image/doanh-nghiep-1.jpg" border="0">
                                            </a>
                                        </div>
                                        <div class="title_boxsub">
                                            <a href="/thietbiso/lg-man-hinh-cong-bat-ngo-xuat-hien-tai-viet-nam-105439">
                                                Cắt cáp, “khoảng tối” doanh nghiệp công nghệ Việt</a>
                                        </div>
                                    </span>
                                </td>
                            
                                <td>
                                    <span>
                                        <div class="boxsub">
                                            <a href="4-cach-de-chong-lai-he-thong-binh-luan-moi-cua-youtube-105438">
                                                <img src="Image/iPhone2.jpg" border="0">
                                            </a>
                                        </div>
                                        <div class="title_boxsub">
                                            <a href="/4-cach-de-chong-lai-he-thong-binh-luan-moi-cua-youtube-105438">
                                                Viettel sẽ bán dòng máy iPhone từ ngày 15/11/2013</a>
                                        </div>
                                    </span>
                                </td>
                            
                                </tr> </tbody></table>
                            
                    </div>
                    
                       
                    <div class="wbox cat">
                        <div class="tit">
                            
                                    <a href="TrongNuoc.jsp" title="Chuyên mục 'Tin trong nước'">Trong nước</a>
                            
                        </div>
                        <div class="ctm">
                           
                                    <div class="title_article">
                                        <a href="/ai-se-giet-chet-tien-ao-bitcoin-105455">Đà Nẵng: Quản lý đô thị qua… Facebook</a>
                                     </div>   
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/ai-se-giet-chet-tien-ao-bitcoin-105455"><img src="Image/facebook-1.jpg" align="left" border="0" hspace="3" vspace="3"></a>
                                                      Hàng ngàn phản ánh của người dân đã được Phòng Quản lý đô thị TP Đà Nẵng tiếp nhận, xử lý thông qua mạng xã hội phổ biến nhất hiện nay.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                    <div class="title_article">
                                        <a href="/ai-se-giet-chet-tien-ao-bitcoin-105455">Doanh nghiệp thí điểm nộp thuế điện tử từ 1/2014</a>
                                     </div>   
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/ai-se-giet-chet-tien-ao-bitcoin-105455"><img src="Image/doanh-nghiep.jpg" align="left" border="0" hspace="3" vspace="3"></a>
Giai đoạn thí điểm của dự án nộp thuế điện tử sẽ được triển khai từ tháng 1/2014, với sự tham gia của tối thiểu 1.000 doanh nghiệp tại 3 địa phương đang thực hiện khai thuế qua mạng gồm Hà Nội, Bắc Ninh và Vĩnh Phúc.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                    <div class="title_article">
                                        <a href="/ai-se-giet-chet-tien-ao-bitcoin-105455">Tăng cước 3G là hợp lý, đúng lộ trình</a>
                                     </div>   
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/ai-se-giet-chet-tien-ao-bitcoin-105455"><img src="Image/cuoc-3g2.jpg" align="left" border="0" hspace="3" vspace="3"></a>
Theo số liệu của Cục Viễn thông (Bộ TT&TT), trong lần điều chỉnh tăng giá cước 3G vừa qua, có 45% thuê bao 3G giữ nguyên giá, 13% thuê bao được giảm giá gói cước, và 42% thuê bao bị tăng giá cước.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                    <div class="tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/anonymous-tan-cong-nhieu-co-quan-chinh-phu-my-105448">VN yêu cầu Australia, Mỹ giải thích vụ “nghe lén" </a> </li>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/da-nang-quan-ly-do-thi-qua-facebook-105446">Batdongsan.com.vn cấp dữ liệu cho nhà môi giới </a> </li>
                                            
                                                </ul>
                                            
                                      
                                    </div>
                               
                        </div>
                        
                    </div>
                    
                                
                   <div class="wbox cat">
                        <div class="tit">
                                    <a href="QuocTe.jsp" title="Chuyên mục 'Tin quốc tế'">Quốc tế</a>
                            
                        </div>
                        <div class="ctm">
                           
                                    <div class="title_article">
                                        <a href="/google-tung-doc-chieu-phong-chong-ddos-105403">Anonymous tấn công nhiều cơ quan chính phủ Mỹ</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/google-tung-doc-chieu-phong-chong-ddos-105403"><img src="Image/anonymous-1.jpg" align="left" border="0" hspace="3" vspace="3"></a>
Báo cáo từ Cơ quan Điều tra Liên bang Mỹ (FBI) cho biết tin tặc có liên hệ với nhóm Anonymous đã truy cập vào hệ thống máy tính của các cơ quan chính phủ Mỹ và lấy đi nhiều thông tin mật.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="title_article">
                                        <a href="/google-tung-doc-chieu-phong-chong-ddos-105403">Châu Âu cho dùng thiết bị điện tử trên máy bay</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/google-tung-doc-chieu-phong-chong-ddos-105403"><img src="Image/smartphone-plane.jpg" align="left" border="0" hspace="3" vspace="3"></a>
Châu Âu đã chính thức cho phép dùng thiết bị điện tử cá nhân trên máy bay. Có khả năng bắt đầu từ cuối tháng 11/2013, các hãng hàng không châu Âu sẽ bắt đầu áp dụng quy định mới này.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="title_article">
                                        <a href="/google-tung-doc-chieu-phong-chong-ddos-105403">Apple đóng cửa iTunes Connect từ 21/12 đến 27/12</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/google-tung-doc-chieu-phong-chong-ddos-105403"><img src="Image/iTunesConnect.jpg" align="left" border="0" hspace="3" vspace="3"></a>
Trong thời gian tạm đóng cửa iTunes Connect  (21/12 - 27/12), lập trình viên không thể đệ trình cập nhật hoặc thay đổi giá ứng dụng.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    <div class="tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/nhom-tin-tac-trung-quoc-danh-cap-bi-mat-cong-ty-my-105390">Nhật Bản hỗ trợ ASEAN tăng cường an ninh mạng </a> </li>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/trojan-moi-kho-phat-hien-tan-cong-lo-hong-ie-105360">Google vẫn là “Vua” tìm kiếm tại thị trường Mỹ </a> </li>
                                            
                                                </ul>
                                    </div>                             
                        </div>
                        
                    </div>
               
                    <div class="wbox cat">
                        <div class="tit">
                            
                                    <a href="tinkhac.jsp" title="Chuyên mục 'Tin khác'">Tin khác</a>
                            
                        </div>
                        <div class="ctm">
                            
                                    <div class="title_article">
                                        <a href="/">Khuyến mại tưng bừng mừng sinh nhật VDC</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/"><img src="Image/vdc.jpg" align="left" border="0" hspace="3" vspace="3"></a>
“Khuyến mại tưng bừng Mừng sinh nhật VDC” – Cơ hội nhận nhiều quà tặng hấp dẫn: Tivi LED 55’’, Điện thoại Iphone 5S/Iphone 5, Điện thoại Galaxy S4/S3 và nhiều thẻ mua hàng BigC.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                     <div class="title_article">
                                        <a href="/">Kingston ra mắt thành công 11 cửa hàng tin cậy</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/"><img src="Image/Kingston-2.jpg" align="left" border="0" hspace="3" vspace="3"></a>
Hãng bộ nhớ của Mỹ Kingston Technology ra mắt hệ thống 11 "Cửa hàng tin cậy” tại Hà Nội và TP Hồ Chí Minh. Đây là những cửa hàng bán lẻ đầu tiên được Kingston chứng nhận giúp người tiêu dùng an tâm khi mua sắm các sản phẩm.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                     <div class="title_article">
                                        <a href="/">iPMAC chính thức giảng dạy khóa học MCSA 2012</a></div>
                                    <div>
                                       <table border="0" cellpadding="0" cellspacing="0">
                                            <tbody><tr>
                                                <td class="image" valign="top">
                                                    <a href="/"><img src="Image/MCSA-2012-1.jpg" align="left" border="0" hspace="3" vspace="3"></a>
Từ tháng 06/2013, iPMAC chính thức đưa vào giảng dạy khóa học MCSA 2012 dựa trên nền tảng hệ điều hành máy chủ Windows Server 2012, hệ điều hành mới nhất của Microsoft cho đến thời điểm hiện nay.
                                                </td>
                                         
                                            </tr>
                                        </tbody></table>
                                    </div>
                                    
                                    
                                    <div class="tin_lienquan">
                                        
                                                <ul>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">9 sự kiện iPMAC tiêu biểu </a> </li>
                                            
                                                <li>
                                                    <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Kỷ niệm 9 năm ngày thành lập Học viện CNTT iPMAC </a> </li>
                                            
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
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Ai sẽ giết chết "tiền ảo" Bitcoin?</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Anonymous tấn công nhiều cơ quan chính phủ Mỹ</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Đà Nẵng: Quản lý đô thị qua… Facebook </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Châu Âu cho dùng thiết bị điện tử trên máy bay </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Google vẫn là “Vua” tìm kiếm tại thị trường Mỹ</a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Apple đóng cửa iTunes Connect từ 21/12 đến 27/12 </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Nhật Bản hỗ trợ ASEAN tăng cường an ninh mạng </a>
                                     </div>
                                      
                                    
                                     <div>
                                          <img src="Image/icon.jpg" align="absmiddle">&nbsp;<a href="/">Doanh nghiệp thí điểm nộp thuế điện tử từ 1/2014</a>
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
                        <a href="trangchu.jsp">Trang chủ</a> | <a href="GioiThieu.jsp">Giới thiệu </a> | <a href="thietbiso.jsp">Thiết bị số </a> | 
                        <a href="game.jsp">Game</a> |
                        <a href="http://tapchicntt.com" target="_blank">Tapchicntt.com</a> | 
                        <a href="http://bkc.vn" target="_blank">bkc.vn</a> | <a href="http://Stivi.vn" target="_blank">Stivi.vn</a> | 
                        <a href="HoiDap.jsp">Hỏi đáp</a> |
                        <a href="lienhe.jsp">Liên hệ</a> | 
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
                        	<div class="logo_footer"><a href="trangchu.jsp"><img src="Image/Logo.png" width="60" height="51"/></a></div>
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

