<%
	request.setCharacterEncoding("utf8");
	response.setCharacterEncoding("utf8");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng ký</title>

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
					<li class="item menu"><a href="trangchu.jsp"><span>Trang chủ</span> </a>
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
						<div class="ctm">

							<form method="post" action="dangki" onsubmit="javascript:return WebForm_OnSubmit();" id="frm">
								<div class="aspNetHidden"></div>
								


								<%
									//TODO 
									String errorUsernameNull = (String) request.getAttribute("errorUsernameNull");
									String errorPasswordNull = (String) request.getAttribute("errorPasswordNull");
									String errorConfirmPasswordNull = (String) request.getAttribute("errorConfirmPasswordNull");
									String errorEmailNull = (String) request.getAttribute("errorEmailNull");
									String errorFullNameNull = (String) request.getAttribute("errorFullNameNull");

									if (errorUsernameNull == null) errorUsernameNull = "";
									if (errorPasswordNull == null) errorPasswordNull = "";
									if (errorConfirmPasswordNull == null) errorConfirmPasswordNull = "";
									if (errorEmailNull == null) errorEmailNull = "";
									if (errorFullNameNull == null) errorFullNameNull = "";

									String errorPasswordNotMatched = (String) request.getAttribute("errorPasswordNotMatched");
									String errorInvalidEmail = (String) request.getAttribute("errorInvalidEmail");
									String errorCityNotYetChoosen = (String) request.getAttribute("errorCityNotYetChoosen");
									String errorAcceptNotYetChoosen = (String) request.getAttribute("errorAcceptNotYetChoosen");
									String errorYearNotYetChoosen = (String) request.getAttribute("errorYearNotYetChoosen");
									String errorUsernameExisted = (String) request.getAttribute("errorUsernameExisted");
									
									if (errorUsernameExisted == null) errorUsernameExisted = "";
									if (errorUsernameExisted != null) errorUsernameNull = "";
									if (errorPasswordNotMatched == null) errorPasswordNotMatched = "";
									if (errorInvalidEmail == null) errorInvalidEmail = "";
									if (errorCityNotYetChoosen == null) errorCityNotYetChoosen = "";
									if (errorAcceptNotYetChoosen == null) errorAcceptNotYetChoosen = "";
									if (errorYearNotYetChoosen == null) errorYearNotYetChoosen = "";

									if (errorPasswordNotMatched != null) errorConfirmPasswordNull = "";
									if (errorConfirmPasswordNull != null) errorPasswordNotMatched = "";

									String username = (String) request.getAttribute("username");
									String fullName = (String) request.getAttribute("fullName");
									String sex = (String) request.getAttribute("sex");
									String email = (String) request.getAttribute("email");
									String isReceiveNewEmail = (String) request.getAttribute("isReceiveNewEmail");
									String isShowEmail = (String) request.getAttribute("isShowEmail");

									String checkedMale = "";
									String checkedFemale = "";
									String checkedReceiveNewEmail = "checked";
									String checkedShowEmail = "checked";

									if (username == null) username = "";
									if (fullName == null) fullName = "";
									if (email == null) email = "";

									if (sex != null) {
										if (sex.equals("male")) checkedMale = "checked";
										else if (sex.equals("female"))
											checkedFemale = "checked";

									} else
										checkedMale = "checked";

									if (isReceiveNewEmail == null || isReceiveNewEmail.equals("unchecked")) checkedReceiveNewEmail = "";
									if (isShowEmail == null || isShowEmail.equals("unchecked")) checkedShowEmail = "";
								%>





											<h1>Đăng ký thành viên</h1>
										

								<div id="Main_pnlRegister" onkeypress="javascript:return WebForm_FireDefaultButton(event, 'Main_btnRegister')">

									<table border="0" cellpadding="0" cellspacing="8">
										<tbody>

											<tr>
												<td colspan="2" align="left" class="cmt"><i>(vui lòng điền đầy đủ những thông tin dưới đây)</i>
													<div id="Main_vsRegister" style="display: none;"></div></td>
											</tr>
											<tr>
												<td width="160" height="20px"></td>
											</tr>
											<tr>
												<td nowrap="nowrap" class="infoLogin"><span>Tên đăng nhập:</span></td>
											  <td width="748" class="infoLogin"><input name="username" value="<%=username%>" type="text" id="Main_txtUserName" style="width: 245px;"> * <span id="Main_reqUserName" style="display: none;">*</span> <span id="Main_regUserName" style="display: none;">*</span> <%=errorUsernameNull%><%=errorUsernameExisted %></td>
											</tr>
											<tr>
												<td></td>
												<td>
													<div id="divChkResult" style="color: Red; font-style: italic"></div>
												</td>
											</tr>
											<tr>
												<td class="infoLogin" nowrap="nowrap"><span>Mật khẩu:</span></td>
												<td class="infoLogin"><input name="password" type="password" id="Main_txtPassword" style="width: 145px;"> 
												<span id="Main_reqPassword" style="display: none;">*</span> <span id="Main_cpareComfirmPassword" style="display: none;">*</span> *<%=errorPasswordNull%></td>
											</tr>
											<tr>
												<td class="infoLogin"><span>Gõ lại mật khẩu:</span></td>
												<td class="infoLogin"><input name="confirm_password" type="password" id="Main_txtConfirmPassword" style="width: 145px;">
												* <%=errorConfirmPasswordNull%><%=errorPasswordNotMatched%></td>
											</tr>
											<tr>
												<td height="33" class="infoLogin"><span>Họ và tên:</span></td>
												<td class="infoLogin">
													<table width="751" border="0" cellpadding="0" cellspacing="0" class="infoLogin">
														<tbody>
															<tr>
																<td width="323" class="infoLogin">
																	<p>
																		<input name="full_name" value="<%=fullName%>" type="text" id="Main_txtFirstName" style="width: 240px;"> 
																		<span id="Main_reqFirstName" style="display: none;">*&nbsp;</span>*<%=errorFullNameNull%><br>
																	</p>
																</td>
																<td width="79" class="infoLogin"><span id="Main_reqLastName" style="display: none;">*</span>Giới tính:<br></td>
																<td width="1" align="right" class="infoLogin"></td>
																<td width="348" class="infoLogin"><span id="Main_slcSex"><input id="Main_slcSex_0" type="radio" name="sex" value="male" <%=checkedMale%>><label for="Main_slcSex_0">Nam</label><input id="Main_slcSex_1" type="radio" name="sex" value="female" <%=checkedFemale%>><label for="Main_slcSex_1">Nữ</label></span></td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
											<tr>
												<td class="infoLogin" valign="top"><span>Email:</span></td>
												<td class="infoLogin" valign="top"><input name="email" type="text" value="<%=email%>" id="Main_txtEmail" style="width: 245px;"> 
												<span id="Main_reqEmail" style="display: none;">*</span> <span id="Main_regEmail" style="display: none;">*</span> *<br> <input id="Main_chkShowEmail" type="checkbox" name="is_show_email" <%=checkedShowEmail%>><label for="Main_chkShowEmail">Hiển thị cho mọi người cùng biết</label></td>
											</tr>
											<tr>
												<td class="infoLogin" valign="top"><span>Sinh năm:</span></td>
												<td class="infoLogin" valign="top"><select name="year" id="Main_slcBirthYear">
														<option value="nam">[Năm]</option>
														<option value="2007">2007</option>
														<option value="2006" style="background: #DDDDDD;">2006</option>
														<option value="2005">2005</option>
														<option value="2004" style="background: #DDDDDD;">2004</option>
														<option value="2003">2003</option>
														<option value="2002" style="background: #DDDDDD;">2002</option>
														<option value="2001">2001</option>
														<option value="2000" style="background: #DDDDDD;">2000</option>
														<option value="1999">1999</option>
														<option value="1998" style="background: #DDDDDD;">1998</option>
														<option value="1997">1997</option>
														<option value="1996" style="background: #DDDDDD;">1996</option>
														<option value="1995">1995</option>
														<option value="1994" style="background: #DDDDDD;">1994</option>
														<option value="1993">1993</option>
														<option value="1992" style="background: #DDDDDD;">1992</option>
														<option value="1991">1991</option>
														<option value="1990" style="background: #DDDDDD;">1990</option>
														<option value="1989">1989</option>
														<option value="1988" style="background: #DDDDDD;">1988</option>
														<option value="1987">1987</option>
														<option value="1986" style="background: #DDDDDD;">1986</option>
														<option value="1985">1985</option>
														<option value="1984" style="background: #DDDDDD;">1984</option>
														<option value="1983">1983</option>
														<option value="1982" style="background: #DDDDDD;">1982</option>
														<option value="1981">1981</option>
														<option value="1980" style="background: #DDDDDD;">1980</option>
														<option value="1979">1979</option>
														<option value="1978" style="background: #DDDDDD;">1978</option>
														<option value="1977">1977</option>
														<option value="1976" style="background: #DDDDDD;">1976</option>
														<option value="1975">1975</option>
														<option value="1974" style="background: #DDDDDD;">1974</option>
														<option value="1973">1973</option>
														<option value="1972" style="background: #DDDDDD;">1972</option>
														<option value="1971">1971</option>
														<option value="1970" style="background: #DDDDDD;">1970</option>
														<option value="1969">1969</option>
														<option value="1968" style="background: #DDDDDD;">1968</option>
														<option value="1967">1967</option>
														<option value="1966" style="background: #DDDDDD;">1966</option>
														<option value="1965">1965</option>
														<option value="1964" style="background: #DDDDDD;">1964</option>
														<option value="1963">1963</option>
														<option value="1962" style="background: #DDDDDD;">1962</option>
														<option value="1961">1961</option>
														<option value="1960" style="background: #DDDDDD;">1960</option>
														<option value="1959">1959</option>
														<option value="1958" style="background: #DDDDDD;">1958</option>
														<option value="1957">1957</option>
														<option value="1956" style="background: #DDDDDD;">1956</option>
														<option value="1955">1955</option>
														<option value="1954" style="background: #DDDDDD;">1954</option>
														<option value="1953">1953</option>
														<option value="1952" style="background: #DDDDDD;">1952</option>
														<option value="1951">1951</option>
														<option value="1950" style="background: #DDDDDD;">1950</option>
														<option value="1949">1949</option>
														<option value="1948" style="background: #DDDDDD;">1948</option>
														<option value="1947">1947</option>
														<option value="1946" style="background: #DDDDDD;">1946</option>
														<option value="1945">1945</option>
														<option value="1944" style="background: #DDDDDD;">1944</option>
														<option value="1943">1943</option>
														<option value="1942" style="background: #DDDDDD;">1942</option>
														<option value="1941">1941</option>
														<option value="1940" style="background: #DDDDDD;">1940</option>
														<option value="1939">1939</option>
														<option value="1938" style="background: #DDDDDD;">1938</option>
														<option value="1937">1937</option>
														<option value="1936" style="background: #DDDDDD;">1936</option>
														<option value="1935">1935</option>
														<option value="1934" style="background: #DDDDDD;">1934</option>
														<option value="1933">1933</option>
														<option value="1932" style="background: #DDDDDD;">1932</option>
														<option value="1931">1931</option>
														<option value="1930" style="background: #DDDDDD;">1930</option>
														<option value="1929">1929</option>
														<option value="1928" style="background: #DDDDDD;">1928</option>
														<option value="1927">1927</option>
														<option value="1926" style="background: #DDDDDD;">1926</option>
														<option value="1925">1925</option>
														<option value="1924" style="background: #DDDDDD;">1924</option>
														<option value="1923">1923</option>
														<option value="1922" style="background: #DDDDDD;">1922</option>
														<option value="1921">1921</option>
														<option value="1920" style="background: #DDDDDD;">1920</option>
														<option value="1919">1919</option>
														<option value="1918" style="background: #DDDDDD;">1918</option>
														<option value="1917">1917</option>
														<option value="1916" style="background: #DDDDDD;">1916</option>
														<option value="1915">1915</option>
														<option value="1914" style="background: #DDDDDD;">1914</option>
														<option value="1913">1913</option>
														<option value="1912" style="background: #DDDDDD;">1912</option>
														<option value="1911">1911</option>
														<option value="1910" style="background: #DDDDDD;">1910</option>
														<option value="1909">1909</option>
														<option value="1908" style="background: #DDDDDD;">1908</option>
														<option value="1907">1907</option>
														<option value="1906" style="background: #DDDDDD;">1906</option>
														<option value="1905">1905</option>
														<option value="1904" style="background: #DDDDDD;">1904</option>
														<option value="1903">1903</option>
														<option value="1902" style="background: #DDDDDD;">1902</option>
														<option value="1901">1901</option>

												</select> 
												*<%=errorYearNotYetChoosen%> <span id="Main_reqBirthYear" style="display: none;">*</span></td>
											</tr>
											<tr>
												<td class="infoLogin" valign="top"><span>Tỉnh thành:</span></td>
												<td class="infoLogin" valign="top"><select name="city" id="Main_slcProvince">
														<option value="chontinhthanh">[Chọn Tỉnh Thành]</option>
														<option value="hanoi" selected="selected">Hà Nội</option>
														<option value="hochiminh">TP. Hồ Chí Minh</option>
														<option value="angian">An Giang</option>
														<option value="vungtau">Bà Rịa - Vũng Tàu</option>
														<option value="bacgiang">Bắc Giang</option>
														<option value="backan">Bắc Kạn</option>
														<option value="baclieu">Bạc Liêu</option>
														<option value="bacninh">Bắc Ninh</option>
														<option value="bentre">Bến Tre</option>
														<option value="binhdinh">Bình Định</option>
														<option value="binhduong">Bình Dương</option>
														<option value="binhphuoc">Bình Phước</option>
														<option value="binhthuan">Bình Thuận</option>
														<option value="camau">Cà Mau</option>
														<option value="cantho">Cần Thơ</option>
														<option value="caobang">Cao Bằng</option>
														<option value="danang">Đà Nẵng</option>
														<option value="daknak">Đắk Lắk</option>
														<option value="daknong">Đắk Nông</option>
														<option value="dienbien">Điện Biên</option>
														<option value="dongnai">Đồng Nai</option>
														<option value="dongthap">Đồng Tháp</option>
														<option value="gialai">Gia Lai</option>
														<option value="hagiang">Hà Giang</option>
														<option value="hanam">Hà Nam</option>
														<option value="hatay">Hà Tây</option>
														<option value="hatinh">Hà Tĩnh</option>
														<option value="haiduong">Hải Dương</option>
														<option value="haiphong">Hải Phòng</option>
														<option value="haugiang">Hậu Giang</option>
														<option value="hoabinh">Hòa Bình</option>
														<option value="hungyen">Hưng Yên</option>
														<option value="khanhhoa">Khánh Hòa</option>
														<option value="kiengiang">Kiên Giang</option>
														<option value="kontum">Kon Tum</option>
														<option value="laichau">Lai Châu</option>
														<option value="lamdong">Lâm Đồng</option>
														<option value="langson">Lạng Sơn</option>
														<option value="laocai">Lào Cai</option>
														<option value="longan">Long An</option>
														<option value="namdinh">Nam Định</option>
														<option value="nghean">Nghệ An</option>
														<option value="ninhbinh">Ninh Bình</option>
														<option value="ninhthuan">Ninh Thuận</option>
														<option value="phutho">Phú Thọ</option>
														<option value="phuyen">Phú Yên</option>
														<option value="quangbinh">Quảng Bình</option>
														<option value="quangnam">Quảng Nam</option>
														<option value="quangngai">Quảng Ngãi</option>
														<option value="quangninh">Quảng Ninh</option>
														<option value="quangtri">Quảng Trị</option>
														<option value="soctrang">Sóc Trăng</option>
														<option value="sonla">Sơn La</option>
														<option value="tayninh">Tây Ninh</option>
														<option value="thaibinh">Thái Bình</option>
														<option value="thainguyen">Thái Nguyên</option>
														<option value="thanhhoa">Thanh Hóa</option>
														<option value="thuathienhue">Thừa Thiên Huế</option>
														<option value="tiengiang">Tiền Giang</option>
														<option value="travinh">Trà Vinh</option>
														<option value="tuyenquang">Tuyên Quang</option>
														<option value="vinhlong">Vĩnh Long</option>
														<option value="vinhphuc">Vĩnh Phúc</option>
														<option value="yenbai">Yên Bái</option>
														<option value="khongbiet">Khác...</option>
												</select> 
												*<span id="Main_reqPovince" style="display: none;">*</span><%=errorCityNotYetChoosen%></td>
											</tr>
											<tr>
												<td></td>
												<td class="infoLogin"><input id="Main_chkReceiverLetter" type="checkbox" name="is_receive_new_email" <%=checkedReceiveNewEmail%>><label for="Main_chkReceiverLetter">Nhận email khi có tin mới</label></td>
											</tr>
											<tr>
												<td colspan="2" style="height: 10px"></td>
											</tr>
											<tr>
												<td valign="top" class="infoLogin">Thỏa thuận:</td>
												<td class="infoLogin"><span class="cmt">Đọc kỹ bản thỏa thuận &amp; điều kiện sử dụng dưới đây</span> <br /> <textarea cols="67" rows="15">Chào mừng bạn trở thành thành viên NTNGROUP! Để có thể sử dụng các dịch vụ nâng cao của chúng tôi , bạn phải đồng ý với các Điều khoản sử dụng được liệt kê dưới đây. Vì các Điều khoản sử dụng này có thể được sửa đổi tùy vào từng thời điểm nên chúng tôi khuyên bạn nên thường xuyên xem lại điều khoản để có thể cập nhật bất kỳ thay đổi nào. Nếu có thay đổi hay chỉnh sửa nào về Điều khoản sử dụng, chúng tôi sẽ đưa lên website. Chú ý: sự thay đổi sẽ có hiệu lực bắt đầu từ ngày đưa lên web. Hãy nhớ rằng các Điều khoản sử dụng này chỉ áp dụng trên website này, không có bất kỳ tác dụng nào tới nội dung của các bên thứ ba.

1. ĐĂNG KÝ VÀ TRỞ THÀNH THÀNH VIÊN TRÊN WEBSITE

A. Truy cập vào website và trở thành Thành viên. Hiện Website đang trong quá trình hoạt động miễn phí đối với cả thành viên lẫn không thành viên. Tài khoản và mật khẩu khi đăng ký thành viên sẽ có giá trị để bạn có thể tham gia Trao đổi và Hỏi đáp trực tuyến cùng một số dịch vụ khác trên website NTNGROUP, những thông tin đăng ký trên website sẽ không được sử dụng cho hoạt động thương mại của Website.

B. Thông tin của bạn. Khi bạn đăng ký website, chúng tôi sẽ cần một số thông tin cá nhân như tên tuổi, năm sinh, email và địa chỉ tỉnh thành nơi bạn đang sống. Bạn phải đồng ý rằng mọi thông tin bạn cung cấp cho chúng tôi được đưa lên website là đầy đủ, chính xác và luôn được cập nhật. Nếu gặp lỗi trong quá trình cập nhật thông tin hoặc nếu một phần (hay) toàn bộ thông tin của bạn (những thông tin hiển thị) là không đúng sự thật hoặc chưa đầy đủ, chúng tôi có thể treo hoặc chấm dứt số hội viên của bạn, từ chối bất kỳ hoặc toàn bộ hoạt động của bạn ở thời điển hiện tại cũng như tương lai trên Website.hì rất có thể các email đó sẽ chặn thư thông báo từ NTNGROUP và các dịch vụ của chúng tôi khó có thể cung cấp tới bạn.

Ngoài những điều đã đề cập trên, bạn còn phải chịu trách nhiệm bảo đảm rằng địa chỉ email đã đăng ký trên website và sử dụng trong suốt quá trình thành viên là địa chỉ email hợp lệ; và các dịch vụ, phần mềm hay hệ thống sử dụng để truy cập email của bạn sẽ không ngăn chặn hay lọc email thông báo từ NTNGROUP. Chúng tôi lưu ý rằng bạn nên sử dụng địa chỉ email cá nhân thay vì email công việc khi đăng ký thành viên. Nếu bạn sử dụng email công việc hay email hệ thống để đăng ký thì rất có thể các email đó sẽ chặn thư thông báo của NTNGROUP và các dịch vụ của chúng tôi khó có thể cung cấp tới bạn.

Nếu có các yêu cầu từ chính phủ, tòa án hay lệnh của thẩm phán, để bảo vệ hệ thống hay để chắc chắn về tính chính trực và hoạt động của hệ thống công ty, chúng tôi có thể truy cập và đưa ra bất kỳ thông tin thích hợp có thể cần dùng đến trong Thông tin của bạn, bao gồm địa chỉ IP, lưu lượng thông tin, history thường dùng và những nội dung mà bạn đã đưa lên website. 

C, Mật khẩu. Trong suốt quá trình đăng ký, chúng tôi sẽ cung cấp cho bạn một mã số đăng ký duy nhất và sẽ phải yêu cầu bạn tạo một mật khẩu. Tất cả các thông tin về mã số đăng ký và mật khẩu là rất quan trọng, bạn phải lưu trữ nó một cách an toàn. Hãy thông báo cho chúng tôi ngay lập tức nếu bạn cho rằng đang có ai đó sử dụng đăng ký và mật khẩu của bạn mà không có sự cho phép.

D, Các thông báo. Thỉnh thoảng chúng tôi sẽ gửi các thông báo cho bạn. Lưu ý có thể có một số hệ thống email dùng công nghệ lọc hoặc ngăn chặn việc bạn nhận thư. NTNGROUP sẽ không chịu trách nhiệm về việc bạn có thực sự nhận được thư thông báo hay không trong những trường hợp này. 

2. CÁC QUYỀN RIÊNG TƯ CỦA NTNGROUP

Website và các thông tin được Biên tập viên của QuanTriMang dịch, đều thuộc sở hữu của NTNGROUP. Khi bạn muốn sao chép nội dung bài viết do đội ngũ Biên tập viên NTNGROUP dịch, bạn cần ghi rõ nguồn lấy từ NTNGROUP.

3. KẾT NỐI VÀO/RA TỪ WEBSITE

Trên website chúng tôi có thể có nhiều link tới website của các công ty hay đối tác khác, nhưng NTNGROUP không là chủ quản của các website đó. NTNGROUP sẽ không chịu trách nhiệm hay quyền hạn đối với bất kỳ nội dung, quảng cáo, sản phẩm hay dịch vụ trên các website này. NTNGROUP cũng không chịu trách nhiện hay quyền hạn gì dù trực tiếp hay gián tiếp cho bất kỳ rủi ro hay nguyên nhân mất mát nào khi bạn sử dụng hay tin tưởng vào nội dung, quảng cáo, sản phẩm và dịch vụ của các website đó.

4. KẾT THÚC/HỦY BỎ

Bạn có thể hủy bỏ việc đăng ký của mình bất kỳ lúc nào bằng cách liên hệ với người quản trị (email: support@NTNGROUP). Chúng tôi sẽ cố gắng xử lý các yêu cầu hủy bỏ trong vòng 72 tiếng sau khi nhận được bản yêu cầu. Nếu bạn nhận được một bức thư nào từ dịch vụ của chúng tôi, bất kỳ tiêu đề gì như hủy bỏ hay kết thúc có nghĩa là việc hủy bỏ đã hoàn tất. Đôi khi có một số thành viên không đồng ý với điều khoản và điều kiện gia tăng; chúng tôi xác định được việc đó và sẽ quyết định tạm ngừng tài khoản của thành viên đó. Trong khi đang ở giai đoạn tạm ngưng hay hủy bỏ, chúng tôi có thể ngay lập tức vô hiệu hóa và xóa tư cách thành viên cùng toàn bộ thông tin có liên quan của thành viên đó.

5. TÍNH RIÊNG TƯ

NTNGROUP đưa ra phương pháp mạnh nhất để bảo vệ tính riêng tư của người dùng trên website và cung cấp tới bạn với bản thông báo về việc tập hợp và sử dụng dữ liệu trong đó có cả dữ liệu thông tin nhận dạng trên website.

6. TỪ CHỐI HAY ĐỒNG Ý

Bạn phải hiểu và đống ý rằng:

WEBSITE VÀ CÁC DỊCH VỤ CUNG CẤP THÔNG QUA WEBSITE DỰA TRÊN MỘT SỐ NGUYÊN TẮC CƠ BẢN. NTNGROUP TỪ CHỐI MỌI ĐÁNH GIÁ CÓ TÍNH LUẬT PHÁP/CHÍNH TRỊ VÀ BẠN CŨNG VẬY. TOÀN BỘ TÀI LIỆU TRÊN WEBSITE KHÔNG ĐƯỢC PHÉP CÓ LIÊN QUAN, BÀN LUẬN, NHẬN XÉT CHỈ TRÍCH PHÁP LUẬT, KHÔNG ĐƯỢC CÓ NỘI DUNG CHỈ TRÍCH, PHỈ BÁNG CÁC THÀNH VIÊN HAY BẤT KỲ NGƯỜI NÀO KHÁC. NỘI DUNG HOÀN TOÀN KHÔNG ĐƯỢC PHÉP LIÊN QUAN TỚI NHỮNG THÔNG TIN CHỈ TRÍCH, CHỐNG ĐỐI ĐẢNG CỘNG SẢN VÀ NHÀ NƯỚC XHCN. Những thông tin này sẽ bị xóa bỏ và quyền sử dụng website của thành viên tương ứng cũng sẽ bị treo, tạm ngưng hoặc xóa bỏ; NTNGROUP không chịu trách nhiệm về tính chính xác, độ an toàn, chắc chắn và tính phổ biến của bất kỳ loại sản phẩm, dịch vụ, thông tin hay tài liệu nào bạn có được trên website mà không do chúng tôi cung cấp, trong đó bao gồm các dịch vụ của bên thứ ba, tài liệu và thông tin của thành viên... Bạn phải tự chịu trách nhiệm về những rủi ro mất thông tin, chi phí sửa chữa phần cứng hay phần mềm khi không thực hiện theo đúng những nguyên tắc bảo mật trong việc sử dụng website.</textarea>
												</td>
											</tr>
											<tr>
												<td></td>
												<td class="infoLogin"><span style="font-weight: bold;"><input name="isAccept" type="checkbox" id="Main_chkArgreePolicy" value="accept">
												<label for="Main_chkArgreePolicy">Tôi đồng ý bản thỏa thuận khi tham gia làm thành viên *<br> <%=errorAcceptNotYetChoosen%>
													</label></span></td>
											</tr>
											<tr>
												<td class="infoLogin" align="center" colspan="2" style="padding-top: 8px"><input name="is_accept" type="submit" id="is_accept" value="Hoàn thành đăng kí">&nbsp; <input type="reset" value="Reset" style="width: 70px"></td>
											</tr>
										</tbody>
									</table>

								</div>
								<div align="center"></div>
							</form>
						</div>
						<div>
							<table border="0" cellpadding="0" cellspacing="0" width="100%">
								<tbody>
									<tr>
										<td width="100%" align="right"></td>
									</tr>

									<tr>
										<td>&nbsp;</td>
									</tr>

								</tbody>
							</table>
						</div>


					</div>
					<div class="space"></div>
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

