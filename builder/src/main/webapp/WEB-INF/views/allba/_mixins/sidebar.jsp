<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- This is Sidebar which is located at left side -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
    <!-- Sidebar - Logo with sitename -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/${c}/${sitename}">
        <div class="sidebar-brand-icon rotate-n-15">
            <!--Logo-->
            <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3 text-lg">${sitename}<!-- <sup></sup> --></div>
    </a>
    <!-- Divider -->
    <hr class="sidebar-divider my-0" />
    <!-- Nav Item - Mainpage -->
    <li class="nav-item active p-y-3 text-center">
        <a class="nav-link py-3" href="/${c}/${sitename}">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>메인페이지</span>
        </a>
    </li>
    <!-- Divider -->
    <hr class="sidebar-divider" />

    <!-- Board -->
    <div class="sidebar-heading">
        <a href="/${c}/${sitename}/board" class="text-white">채용정보</a>
    </div>
    <!-- Nav Item - Pages Collapse Menu -->
    <!--    <li class="nav-item">
        <a class="nav-link collapsed" href="/allba/${sitename}/board">
            <i class="fas fa-fw fa-align-justify"></i>
            <span>전체보기</span>
        </a>
    </li> -->

    <!-- Nav Item - Pages Collapse Menu -->

    <li class="nav-item">
        <c:forEach var="category" items="${category}">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#${category.categoryname}" aria-expanded="true" aria-controls="${category.categoryname}">
                <i class="fas fa-fw fa-cog"></i>
                <span>${category.categoryname}</span>
            </a>

            <div id="${category.categoryname}" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header"></h6>
                    <c:forEach var="detail" items="${detail}">
                        <c:if test="${detail.parent  eq category.categoryname}">
                            <a class="collapse-item" href="/${c}/${sitename}/board?category=${category.categoryname}&value=${detail.categoryname}">${detail.categoryname}</a>
                        </c:if>
                    </c:forEach>
                </div>
            </div>
        </c:forEach>
    </li>

    <li class="nav-item">
        <div class="nav-link collapsed">
            <a href="/${c}/${sitename}/board/write" class="w-100 text-white d-none d-sm-inline-block btn btn-sm btn-success shadow-sm">
                <span class="text-center">아르바이트 공고 작성</span>
            </a>
        </div>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider" />

    <!-- Board -->
    <div class="sidebar-heading">
        <a href="/${c}/${sitename}/board" class="text-white">기타메뉴</a>
    </div>
    <!-- Nav Item - Charts -->
    <li class="nav-item">
        <a class="nav-link" href="/${c}/${sitename}/event">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>이벤트</span>
        </a>
    </li>

    <!-- Nav Item - Tables -->
    <li class="nav-item">
        <a class="nav-link" href="/${c}/${sitename}/qna">
            <i class="fas fa-fw fa-table"></i>
            <span>Q&A</span>
        </a>
    </li>

    <!-- Nav Item - Utilities Collapse Menu -->
    <!--    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
            <i class="fas fa-fw fa-wrench"></i>
            <span>직종별</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">직종별로 확인해보세요!</h6>
                <a class="collapse-item" href="/allba/${sitename}/board?category=occupation&value=매장관리">매장관리</a>
                <a class="collapse-item" href="/allba/${sitename}/board?category=occupation&value=서빙주방">서빙주방</a>
                <a class="collapse-item" href="/allba/${sitename}/board?category=occupation&value=서비스/미디어">서비스/미디어</a>
                <a class="collapse-item" href="/allba/${sitename}/board?category=occupation&value=고객상담/영업/리서치">고객상담/영업/리서치</a>
                <a class="collapse-item" href="/allba/${sitename}/board?category=occupation&value=강사교육">강사교육</a>
                <a class="collapse-item" href="/allba/${sitename}/board?category=occupation&value=생산/기능/운전/배달">생산/기능/운전/배달</a>
                <a class="collapse-item" href="/allba/${sitename}/board?category=occupation&value=사무회계">사무회계</a>
                <a class="collapse-item" href="/allba/${sitename}/board?category=occupation&value=it디자인">it디자인</a>
            </div>
        </div>
    </li>
    -->
    <!-- Divider -->
    <!--     <hr class="sidebar-divider" /> -->

    <!-- Heading -->
    <!--   <div class="sidebar-heading text-white">
        고객지원
    </div>  -->

    <!-- Nav Item - Charts -->
    <!--      <li class="nav-item">
        <a class="nav-link" href="charts.html">
            <i class="fas fa-fw fa-chart-area"></i>
            <span>이벤트</span>
        </a>
    </li> -->

    <!-- Nav Item - Tables -->
    <!--    <li class="nav-item">
        <a class="nav-link" href="tables.html">
            <i class="fas fa-fw fa-table"></i>
            <span>Q&A게시판</span>
        </a>
    </li> -->

    <!-- Divider -->
    <hr class="sidebar-divider" />

    <c:choose>
        <c:when test="${allbamember.getManagement() eq 'true'}">
            <!-- Heading -->
            <div class="sidebar-heading text-white">
                관리자페이지
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>홈페이지관리</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <!--    <h6 class="collapse-header">Login Screens:</h6>
                        <a class="collapse-item" href="login.html">Login</a>
                        <a class="collapse-item" href="register.html">Register</a>
                        <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
                        <div class="collapse-divider"></div>
                        <h6 class="collapse-header">Other Pages:</h6>
                        <a class="collapse-item" href="404.html">404 Page</a>
                        <a class="collapse-item" href="blank.html">Blank Page</a> -->
                        <a class="collapse-item" href="/${c}/${sitename}/manage/registercategory">카테고리 등록</a>
                        <a class="collapse-item" href="/${c}/${sitename}/manage/registerfield">필드 등록</a>
                        <a class="collapse-item" href="/${c}/${sitename}/manage/changefield">순서 변경</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block" />
        </c:when>
        <c:otherwise> </c:otherwise>
    </c:choose>

    <!-- Sidebar Toggler (Sidebar) -
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>
            -->
</ul>
<!-- End of Sidebar -->
