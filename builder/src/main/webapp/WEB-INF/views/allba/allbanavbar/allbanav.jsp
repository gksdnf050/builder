<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Insert title here</title>
    </head>
    <body>
        <div id="home">
            <p><a href="/allba/${sitename}">${sitename}</a></p>
        </div>

        <div id="search">
            <form action="/allba/${sitename}/board/search" method="get"><input type="text" name="keyword" placeholder="검색" /><button type="submit">검색</button></form>
        </div>

        <div id="login">
            <c:if test="${allbamember != null}">
                <p><a href="/allba/${sitename}/logout">로그아웃</a></p>
                <p><a href="/allba/${sitename}/bookmark">즐겨찾기목록</a></p>
                <p><a href="/allba/${sitename}/modify">회원정보수정</a></p>
                <p><a href="/allba/${sitename}/notebox">쪽지함</a></p>
            </c:if>

            <c:if test="${allbamember != null && allbamember.getManagement() eq 'true'}">
                <p><a href="">관리자화면</a></p>
            </c:if>

            <c:if test="${allbamember == null}">
                <p><a href="/allba/${sitename}/login">로그인</a></p>
            </c:if>

            <p><a href="/allba/${sitename}/register"> 회원가입 </a></p>
        </div>

        <div id="menu">
            <ul class="one">
                <li><a href="/allba/${sitename}/board"> 게시판 </a></li>
                <li>
                    <a href=""> 카테고리 </a>
                    <ul class="two">
                        <li>
                            <a href=""> 경력별 </a>
                            <ul class="three">
                                <li><a href="/allba/${sitename}/board?category=career&value=무관">무관</a></li>
                                <li><a href="/allba/${sitename}/board?category=career&value=신입">신입</a></li>
                                <li><a href="/allba/${sitename}/board?category=career&value=경력">경력</a></li>
                            </ul>
                        </li>

                        <li>
                            <a href="">직종별</a>
                            <ul class="three">
                                <li><a href="/allba/${sitename}/board?category=occupation&value=매장관리">매장관리</a></li>
                                <li><a href="/allba/${sitename}/board?category=occupation&value=서빙주방">서빙주방</a></li>
                                <li><a href="/allba/${sitename}/board?category=occupation&value=서비스/미디어">서비스/미디어</a></li>
                                <li><a href="/allba/${sitename}/board?category=occupation&value=고객상담/영업/리서치">고객상담/영업/리서치</a></li>
                                <li><a href="/allba/${sitename}/board?category=occupation&value=강사교육">강사교육</a></li>
                                <li><a href="/allba/${sitename}/board?category=occupation&value=생산/기능/운전/배달">생산/기능/운전/배달</a></li>
                                <li><a href="/allba/${sitename}/board?category=occupation&value=사무회계">사무회계</a></li>
                                <li><a href="/allba/${sitename}/board?category=occupation&value=it디자인">it디자인</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="">위치별</a>
                            <ul class="three">
                                <li><a href="/allba/${sitename}/board?category=location&value=서울">서울</a></li>
                                <li><a href="/allba/${sitename}/board?category=location&value=부산">부산</a></li>
                                <li><a href="/allba/${sitename}/board?category=location&value=인천">인천</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li><a href=""> 이벤트 </a></li>
                <li><a href=""> 후기및평점 </a></li>
                <li><a href=""> 고객지원 </a></li>
            </ul>
        </div>
    </body>
</html>
