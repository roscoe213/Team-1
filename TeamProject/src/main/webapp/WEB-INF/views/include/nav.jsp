<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
				<!-- Nav -->
						<nav id="nav" >
							<ul>
								<li><a href="/">홈</a></li>
								<li>
									<a href="/attraction/Attraction_Map">관광지</a>
									<ul>
										<li>
											<a href="#">제주시 &hellip;</a>
											<ul>
												<li><a href="/attraction/Jeju_Attraction?num1=10">제주시</a></li>
												<li><a href="/attraction/Gujwa_Attraction?num1=7">구좌읍</a></li>
												<li><a href="/attraction/Jocheon_Attraction?num1=11">조천읍</a></li>
												<li><a href="/attraction/Aewol_Attraction?num1=1">애월읍</a></li>
												<li><a href="/attraction/Hanlim_Attraction?num1=9">한림읍</a></li>
												<li><a href="/attraction/Hankyung_Attraction?num1=8">한경면</a></li>
												<li><a href="/attraction/Biyang_Attraction?num1=3">비양도</a></li>
												<li><a href="/attraction/Udo_Attraction?num1=18">우도</a></li>
												<li><a href="/attraction/Chagwi_Attraction?num1=4">차귀도</a></li>
											</ul>
										</li>
										<li>
											<a href="#">서귀포시 &hellip;</a>
											<ul>
												<li><a href="/attraction/Seogwipo_Attraction?num1=16">서귀포시</a></li>
												<li><a href="/attraction/Namwon_Attraction?num1=14">남원읍</a></li>
												<li><a href="/attraction/Seongsan_Attraction?num1=17">성산읍</a></li>
												<li><a href="/attraction/Pyoseon_Attraction?num1=15">표선면</a></li>
												<li><a href="/attraction/Jungmun_Attraction?num1=12">중문</a></li>
												<li><a href="/attraction/Andeok_Attraction?num1=2">안덕면</a></li>
												<li><a href="/attraction/Daejung_Attraction?num1=5">대정읍</a></li>
												<li><a href="/attraction/Gapa_Attraction?num1=6">가파도</a></li>
												<li><a href="/attraction/Mara_Attraction?num1=13">마라도</a></li>
											</ul>
										</li>
									</ul>
								</li>		
								<li><a href="/food/Food_Map">맛집</a>
								<ul>
										<li>
											<a href="#">제주시 &hellip;</a>
											<ul>
												<li><a href="/food/Jeju_Food?num1=10">제주시</a></li>
												<li><a href="/food/Gujwa_Food?num1=7">구좌읍</a></li>
												<li><a href="/food/Jocheon_Food?num1=11">조천읍</a></li>
												<li><a href="/food/Aewol_Food?num1=1">애월읍</a></li>
												<li><a href="/food/Hanlim_Food?num1=9">한림읍</a></li>
												<li><a href="/food/Hankyung_Food?num1=8">한경면</a></li>
												<li><a href="/food/Biyang_Food?num1=3">비양도</a></li>
												<li><a href="/food/Udo_Food?num1=18">우도</a></li>
												<li><a href="/food/Chagwi_Food?num1=4">차귀도</a></li>
											</ul>
										</li>
										<li>
											<a href="#">서귀포시 &hellip;</a>
											<ul>
												<li><a href="/food/Seogwipo_Food?num1=16">서귀포시</a></li>
												<li><a href="/food/Namwon_Food?num1=14">남원읍</a></li>
												<li><a href="/food/Seongsan_Food?num1=17">성산읍</a></li>
												<li><a href="/food/Pyoseon_Food?num1=15">표선면</a></li>
												<li><a href="/food/Jungmun_Food?num1=12">중문</a></li>
												<li><a href="/food/Andeok_Food?num1=2">안덕면</a></li>
												<li><a href="/food/Daejung_Food?num1=5">대정읍</a></li>
												<li><a href="/food/Gapa_Food?num1=6">가파도</a></li>
												<li><a href="/food/Mara_Food?num1=13">마라도</a></li>
											</ul>
										</li>
									</ul>
								</li>
								<li><a href="/board/list">게시판</a></li>
								
								<c:choose>
									<c:when test="${sessionScope.user_email == null }">
										<li><a href="/member/join_loginPage">로그인</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="/member/myPage">${sessionScope.user_name } 님</a>
											<ul>												
												<li><a href="/member/logout">로그아웃</a></li>
												<li><a href="/member/myPage">마이페이지</a>
											</ul>
										</li>
									</c:otherwise>	
								</c:choose>
							</ul>
						</nav>

				</div>