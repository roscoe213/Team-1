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
												<li><a href="/attraction/Jeju_Attraction">제주시</a></li>
												<li><a href="/attraction/Gujwa_Attraction">구좌읍</a></li>
												<li><a href="/attraction/Jocheon_Attraction">조천읍</a></li>
												<li><a href="/attraction/Aewol_Attraction">애월읍</a></li>
												<li><a href="/attraction/Hanlim_Attraction">한림읍</a></li>
												<li><a href="/attraction/Hankyung_Attraction">한경면</a></li>
												<li><a href="/attraction/Biyang_Attraction">비양도</a></li>
												<li><a href="/attraction/Udo_Attraction">우도</a></li>
												<li><a href="/attraction/Chagwi_Attraction">차귀도</a></li>
											</ul>
										</li>
										<li>
											<a href="#">서귀포시 &hellip;</a>
											<ul>
												<li><a href="/attraction/Seogwipo_Attraction">서귀포시</a></li>
												<li><a href="/attraction/Namwon_Attraction">남원읍</a></li>
												<li><a href="/attraction/Seongsan_Attraction">성산읍</a></li>
												<li><a href="/attraction/Pyoseon_Attraction">표선면</a></li>
												<li><a href="/attraction/Jungmun_Attraction">중문</a></li>
												<li><a href="/attraction/Andeok_Attraction">안덕면</a></li>
												<li><a href="/attraction/Daejung_Attraction">대정읍</a></li>
												<li><a href="/attraction/Gapa_Attraction">가파도</a></li>
												<li><a href="/attraction/Mara_Attraction">마라도</a></li>
											</ul>
										</li>
									</ul>
								</li>		
								<li><a href="/food/Food_Map">맛집</a>
								<ul>
										<li>
											<a href="#">제주시 &hellip;</a>
											<ul>
												<li><a href="/food/Jeju_Food">제주시</a></li>
												<li><a href="/food/Gujwa_Food">구좌읍</a></li>
												<li><a href="/food/Jocheon_Food">조천읍</a></li>
												<li><a href="/food/Aewol_Food">애월읍</a></li>
												<li><a href="/food/Hanlim_Food">한림읍</a></li>
												<li><a href="/food/Hankyung_Food">한경면</a></li>
												<li><a href="/food/Biyang_Food">비양도</a></li>
												<li><a href="/food/Udo_Food">우도</a></li>
												<li><a href="/food/Chagwi_Food">차귀도</a></li>
											</ul>
										</li>
										<li>
											<a href="#">서귀포시 &hellip;</a>
											<ul>
												<li><a href="/food/Seogwipo_Food">서귀포시</a></li>
												<li><a href="/food/Namwon_Food">남원읍</a></li>
												<li><a href="/food/Seongsan_Food">성산읍</a></li>
												<li><a href="/food/Pyoseon_Food">표선면</a></li>
												<li><a href="/food/Jungmun_Food">중문</a></li>
												<li><a href="/food/Andeok_Food">안덕면</a></li>
												<li><a href="/food/Daejung_Food">대정읍</a></li>
												<li><a href="/food/Gapa_Food">가파도</a></li>
												<li><a href="/food/Mara_Food">마라도</a></li>
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