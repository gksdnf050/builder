<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
    	<!-- This is Header. icluding css, js, something like that  -->
        <%@ include file="/WEB-INF/views/people/_mixins/header.jsp" %>
    </head>
    <body id="page-top">
        <!-- Page Wrapper -->
        <div id="wrapper">
        	
        	<!--  This is Sidebar. -->
        	<%@ include file="/WEB-INF/views/people/_mixins/sidebar.jsp" %>
            
            <!--  This is Contents. -->
            
            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">
                <!-- Main Content -->
                <div id="content">
                    <!-- Topbar -->
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                        <!-- Sidebar Toggle (Topbar) -->
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>

                        <!-- Topbar Search -->
                        <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                            <div class="input-group">
                                <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
                                <div class="input-group-append">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fas fa-search fa-sm"></i>
                                    </button>
                                </div>
                            </div>
                        </form>

                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav ml-auto">
                            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                            <li class="nav-item dropdown no-arrow d-sm-none">
                                <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-search fa-fw"></i>
                                </a>
                                <!-- Dropdown - Messages -->
                                <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                                    <form class="form-inline mr-auto w-100 navbar-search">
                                        <div class="input-group">
                                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" />
                                            <div class="input-group-append">
                                                <button class="btn btn-primary" type="button">
                                                    <i class="fas fa-search fa-sm"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </li>

                            <!-- Nav Item - Alerts -->
                            <li class="nav-item dropdown no-arrow mx-1">
                                <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-bell fa-fw"></i>
                                    <!-- Counter - Alerts -->
                                    <span class="badge badge-danger badge-counter">3+</span>
                                </a>
                                <!-- Dropdown - Alerts -->
                                <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                                    <h6 class="dropdown-header">
                                        Alerts Center
                                    </h6>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="mr-3">
                                            <div class="icon-circle bg-primary">
                                                <i class="fas fa-file-alt text-white"></i>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="small text-gray-500">December 12, 2019</div>
                                            <span class="font-weight-bold">A new monthly report is ready to download!</span>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="mr-3">
                                            <div class="icon-circle bg-success">
                                                <i class="fas fa-donate text-white"></i>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="small text-gray-500">December 7, 2019</div>
                                            $290.29 has been deposited into your account!
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="mr-3">
                                            <div class="icon-circle bg-warning">
                                                <i class="fas fa-exclamation-triangle text-white"></i>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="small text-gray-500">December 2, 2019</div>
                                            Spending Alert: We've noticed unusually high spending for your account.
                                        </div>
                                    </a>
                                    <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                                </div>
                            </li>

                            <!-- Nav Item - Messages -->
                            <li class="nav-item dropdown no-arrow mx-1">
                                <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-envelope fa-fw"></i>
                                    <!-- Counter - Messages -->
                                    <span class="badge badge-danger badge-counter">7</span>
                                </a>
                                <!-- Dropdown - Messages -->
                                <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                                    <h6 class="dropdown-header">
                                        Message Center
                                    </h6>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image mr-3">
                                            <img class="rounded-circle" src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="" />
                                            <div class="status-indicator bg-success"></div>
                                        </div>
                                        <div class="font-weight-bold">
                                            <div class="text-truncate">Hi there! I am wondering if you can help me with a problem I've been having.</div>
                                            <div class="small text-gray-500">Emily Fowler · 58m</div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image mr-3">
                                            <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="" />
                                            <div class="status-indicator"></div>
                                        </div>
                                        <div>
                                            <div class="text-truncate">I have the photos that you ordered last month, how would you like them sent to you?</div>
                                            <div class="small text-gray-500">Jae Chun · 1d</div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image mr-3">
                                            <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="" />
                                            <div class="status-indicator bg-warning"></div>
                                        </div>
                                        <div>
                                            <div class="text-truncate">Last month's report looks great, I am very happy with the progress so far, keep up the good work!</div>
                                            <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image mr-3">
                                            <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="" />
                                            <div class="status-indicator bg-success"></div>
                                        </div>
                                        <div>
                                            <div class="text-truncate">Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they aren't good...</div>
                                            <div class="small text-gray-500">Chicken the Dog · 2w</div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                                </div>
                            </li>

                            <div class="topbar-divider d-none d-sm-block"></div>

                            <!-- Nav Item - User Information -->
                            <li class="nav-item dropdown no-arrow">
                                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="mr-2 d-none d-lg-inline text-gray-600 small">Hello, <font class="text-primary">채수현</font></span>
                                    <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60" />
                                </a>
                                <!-- Dropdown - User Information -->
                                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                    <a class="dropdown-item" href="#">
                                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Profile
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Settings
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Activity Log
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Logout
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </nav>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid">
                        <!-- Page Heading -->
                        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                            <h1 class="h3 mb-0 text-gray-800 font-weight-bold">알바대타! <font class="font-italic font-weight-light text-primary text-sm text-blue-">BETA</font></h1>
                            <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
                        </div>

                        <!-- Content Row -->
                        <div class="row">
                            <!-- Earnings (Monthly) Card Example -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <div class="card border-left-primary shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-s font-weight-bold text-primary text-uppercase mb-1">오늘 매칭된 금액</div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800">₩ 400,000</div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Earnings (Monthly) Card Example -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <div class="card border-left-success shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-s font-weight-bold text-success text-uppercase mb-1">이번달 매칭된 금액</div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800">₩ 400,000,000</div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Earnings (Monthly) Card Example -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <div class="card border-left-info shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-s font-weight-bold text-info text-uppercase mb-1">대기중인 사장님</div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800">400명</div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Pending Requests Card Example -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <div class="card border-left-warning shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-s font-weight-bold text-warning text-uppercase mb-1">대기중인 대타생</div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800">400명</div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-comments fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Content Row -->
                        <div class="row">
                          <div class="col-lg-3 mb-4">
                            <!-- Illustrations -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">오늘의 프리미엄 알바</h6>
                                </div>
                                <div class="card-body">
                                    <div class="text-center">
                                        <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 75rem; height: 12rem;" src="../../resources/img/undraw_posting_photo.svg" alt="" />
                                    </div>
                                    <p>진짜 카만히 앉아만 있어도 되는 개꿀따리 알바!</p>
                                    <a target="_blank" rel="nofollow" href="https://undraw.co/">해당 공고 자세히보기 &rarr;</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 mb-4">
                          <!-- Illustrations -->
                          <div class="card shadow mb-4">
                              <div class="card-header py-3">
                                  <h6 class="m-0 font-weight-bold text-primary">내일의 프리미엄 알바</h6>
                              </div>
                              <div class="card-body">
                                  <div class="text-center">
                                      <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 75rem; height: 12rem;" src="../../resources/img/undraw_posting_photo.svg" alt="" />
                                  </div>
                                  <p><font class="text-danger">[급구]</font>카페 설겆이 어벤져스 멤버 구함!</a></p>
                                  <a target="_blank" rel="nofollow" href="https://undraw.co/">해당 공고 자세히보기 &rarr;</a>
                              </div>
                          </div>
                      </div>
                            <div class="col-lg-6 mb-4">
                                <!-- Project Card Example -->
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-primary">오늘은 어떤 알바들이 있을까요?</h6>
                                    </div>
                                    <div class="card-body">
                                        <h4 class="small font-weight-bold">
                                            카페<a href="#" class="text-primary px-2">바로가기</a> <span class="float-right">200건 / 20%</font></span>
                                        </h4>
                                        <div class="progress mb-4">
                                            <div class="progress-bar bg-danger" role="progressbar" style="width: 20%;" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                        <h4 class="small font-weight-bold">서빙<a href="#" class="text-primary px-2">바로가기</a>  <span class="float-right">400건 / 40%</span></h4>
                                        <div class="progress mb-4">
                                            <div class="progress-bar bg-warning" role="progressbar" style="width: 40%;" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                        <h4 class="small font-weight-bold">PC방<a href="#" class="text-primary px-2">바로가기</a>  <span class="float-right">600건 / 60%</span></h4>
                                        <div class="progress mb-4">
                                            <div class="progress-bar" role="progressbar" style="width: 60%;" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                        <h4 class="small font-weight-bold">노래방<a href="#" class="text-primary px-2">바로가기</a> <span class="float-right">800건 / 80%</span></h4>
                                        <div class="progress mb-4">
                                            <div class="progress-bar bg-info" role="progressbar" style="width: 80%;" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                        <h4 class="small font-weight-bold">다른 알바는 어떤것이 있을까요? <a href="#" class="text-primary px-2">전체보기</a><span class="float-right text-primary">지금 바로 찾아보세요!</span></h4>
                                        <div class="progress">
                                            <div class="progress-bar bg-success" role="progressbar" style="width: 100%;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>



        <!-- Begin Page Content -->
        <div class="row">
          <div class="col-lg-12 mb-4">
          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800"><b>프리미엄 알바</b></h1>
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">프리미엄 알바는 당장 내일 일손이 필요한 사장님께서 더 많은 페이를 걸고 급하게 대타생을 구하는 알바입니다.</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>회사</th>
                      <th>위치</th>
                      <th>역활</th>
                      <th>나이</th>
                      <th>성별</th>
                      <th>급여</th>
                      <th>날짜</th>
                      <th>조회</th>
                      <th>상태</th>
                    </tr>
                  </thead>
                  <tbody class="text-justify" style="line-height:1rem;">
                    
                    <tr>                      
                      <td>(주)삼이일채</td>
                      <td>서울특별시 서초구 서초대로 277 기영빌딩 지하1층</td>
                      <td>서빙</td>
                      <td>20~25</td>
                      <td>무관</td>
                      <td>일당 100,000원</td>
                      <td>05월 27일 (목) <font class="text-gray-500 text-right">4일후</font></td>
                      <td>1,000</td>                      
                      <td><a href="#">모집중</a></td>
                    </tr>
                    <tr>                      
                      <td>(주)삼이일채</td>
                      <td>서울특별시 서초구 서초대로 277 기영빌딩 지하1층</td>
                      <td>서빙</td>
                      <td>20~25</td>
                      <td>무관</td>
                      <td>일당 100,000원</td>
                      <td>05월 27일 (목) <font class="text-gray-500 text-right">4일후</font></td>
                      <td>1,000</td>                      
                      <td><a href="#">모집중</a></td>
                    </tr>
                    <tr>                      
                      <td>(주)삼이일채</td>
                      <td>서울특별시 서초구 서초대로 277 기영빌딩 지하1층</td>
                      <td>서빙</td>
                      <td>20~25</td>
                      <td>무관</td>
                      <td>일당 100,000원</td>
                      <td>05월 27일 (목) <font class="text-gray-500 text-right">4일후</font></td>
                      <td>1,000</td>                      
                      <td><a href="#">모집중</a></td>
                    </tr>
                    <tr>                      
                      <td>(주)삼이일채</td>
                      <td>서울특별시 서초구 서초대로 277 기영빌딩 지하1층</td>
                      <td>서빙</td>
                      <td>20~25</td>
                      <td>무관</td>
                      <td>일당 100,000원</td>
                      <td>05월 27일 (목) <font class="text-gray-500 text-right">4일후</font></td>
                      <td>1,000</td>                      
                      <td><a href="#">모집중</a></td>
                    </tr>
                    <tr>                      
                      <td>(주)삼이일채</td>
                      <td>서울특별시 서초구 서초대로 277 기영빌딩 지하1층</td>
                      <td>서빙</td>
                      <td>20~25</td>
                      <td>무관</td>
                      <td>일당 100,000원</td>
                      <td>05월 27일 (목) <font class="text-gray-500 text-right">4일후</font></td>
                      <td>1,000</td>                      
                      <td><a href="#">모집중</a></td>
                    </tr>
                    <tr>                      
                      <td>(주)삼이일채</td>
                      <td>서울특별시 서초구 서초대로 277 기영빌딩 지하1층</td>
                      <td>서빙</td>
                      <td>20~25</td>
                      <td>무관</td>
                      <td>일당 100,000원</td>
                      <td>05월 27일 (목) <font class="text-gray-500 text-right">4일후</font></td>
                      <td>1,000</td>                      
                      <td class="text-danger">모집완료</td>
                    </tr>
                    <tr>                      
                      <td>(주)삼이일채</td>
                      <td>서울특별시 서초구 서초대로 277 기영빌딩 지하1층</td>
                      <td>서빙</td>
                      <td>20~25</td>
                      <td>무관</td>
                      <td>일당 100,000원</td>
                      <td>05월 27일 (목) <font class="text-gray-500 text-right">4일후</font></td>
                      <td>1,000</td>                      
                      <td class="text-danger">모집완료</td>
                    </tr>
                    <tr>                      
                      <td>(주)삼이일채</td>
                      <td>서울특별시 서초구 서초대로 277 기영빌딩 지하1층</td>
                      <td>서빙</td>
                      <td>20~25</td>
                      <td>무관</td>
                      <td>일당 100,000원</td>
                      <td>05월 27일 (목) <font class="text-gray-500 text-right">4일후</font></td>
                      <td>1,000</td>                      
                      <td class="text-danger">모집완료</td>
                    </tr>
                    <tr>                      
                      <td>(주)삼이일채</td>
                      <td>서울특별시 서초구 서초대로 277 기영빌딩 지하1층</td>
                      <td>서빙</td>
                      <td>20~25</td>
                      <td>무관</td>
                      <td>일당 100,000원</td>
                      <td>05월 27일 (목) <font class="text-gray-500 text-right">4일후</font></td>
                      <td>1,000</td>                      
                      <td class="text-danger">모집완료</td>
                    </tr>
                    <tr>                      
                      <td>(주)삼이일채</td>
                      <td>서울특별시 서초구 서초대로 277 기영빌딩 지하1층</td>
                      <td>서빙</td>
                      <td>20~25</td>
                      <td>무관</td>
                      <td>일당 100,000원</td>
                      <td>05월 27일 (목) <font class="text-gray-500 text-right">4일후</font></td>
                      <td>1,000</td>                      
                      <td class="text-danger">모집완료</td>
                    </tr>
                    <tr>                      
                      <td>(주)삼이일채</td>
                      <td>서울특별시 서초구 서초대로 277 기영빌딩 지하1층</td>
                      <td>서빙</td>
                      <td>20~25</td>
                      <td>무관</td>
                      <td>일당 100,000원</td>
                      <td>05월 27일 (목) <font class="text-gray-500 text-right">4일후</font></td>
                      <td>1,000</td>                      
                      <td class="text-danger">모집완료</td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
          
          
          
          
          
          
        <!-- Begin Page Content -->
        <div class="row pt-4">
          <div class="col-lg-12 mb-5">
          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800"><b>프리미엄 대타생</b></h1>
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">프리미엄 대타생은 귀엽게 생긴애를 뽑았습니다.</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable1" width="100%" cellspacing="0">
                  <thead>
                    <tr class="text-center">
                      <th style="width:6.5rem;">프로필</th>
                      <th style="width:3rem;">이름</th>
                      <th style="width:3rem;">나이</th>
                      <th style="width:3rem;">성별</th>
                      <th>주요경력</th>
                      <th>자기소개</th>
                      <th style="width:3rem;">평가</th>
                      <th style="width:3rem;">보건증</th>
                      <th style="width:3rem;">연락</th>
                    </tr>
                  </thead>
                  <tbody class="text-justify text-center" style="line-height:7rem;">
                    <tr>                      
                      <td>      
                        <div>
                          <img class="img-fluid" style="width:6rem; " src="../../resources/img/profile_sample.png" alt="" />
                        </div>         
                      </td>
                      <td>채수현</td>
                      <td>만25살</td>
                      <td>남자</td>
                      <td class="text-truncate">카페 서빙, 전단지, 운전면허1종</td>
                      <td>시켜만 주시면 열심히 하겠습니다.</td>
                      <td><span class="badge badge-pill badge-success text-wrap text-justify text-white">90점</span></td>
                      <td class="text-center">❌</td>
                      <td c;ass="text-center"><a href="#">📞</a></td>                                       
                    </tr>
                    <tr>                      
                      <td>      
                        <div>
                          <img class="img-fluid" style="width:6rem; " src="../../resources/img/profile_sample.png" alt="" />
                        </div>         
                      </td>
                      <td>채수현</td>
                      <td>만25살</td>
                      <td>남자</td>
                      <td class="text-truncate">카페 서빙, 전단지, 운전면허1종</td>
                      <td class="word-wrap text">시켜만 주시면 열심히 하겠습니다.</td>
                      <td><span class="badge badge-pill badge-success text-wrap text-justify text-white">90점</span></td>
                      <td class="text-center">❌</td>
                      <td c;ass="text-center"><a href="#">📞</a></td>                                           
                    </tr>
                    <tr>                      
                      <td>      
                        <div>
                          <img class="img-fluid" style="width:6rem; " src="../../resources/img/profile_sample.png" alt="" />
                        </div>         
                      </td>
                      <td>채수현</td>
                      <td>만25살</td>
                      <td>남자</td>
                      <td class="text-truncate">카페 서빙, 전단지, 운전면허1종</td>
                      <td>시켜만 주시면 열심히 하겠습니다.</td>
                      <td><span class="badge badge-pill badge-primary text-wrap text-justify text-white">80점</span></td>
                      <td class="text-center">❌</td>
                      <td c;ass="text-center"><a href="#">📞</a></td>                                           
                    </tr>
                    <tr>                      
                      <td>      
                        <div>
                          <img class="img-fluid" style="width:6rem; " src="../../resources/img/profile_sample.png" alt="" />
                        </div>         
                      </td>
                      <td>채수현</td>
                      <td>만25살</td>
                      <td>남자</td>
                      <td class="text-truncate">카페 서빙, 전단지, 운전면허1종</td>
                      <td>시켜만 주시면 열심히 하겠습니다.</td>
                      <td><span class="badge badge-pill badge-primary text-wrap text-justify text-white">80점</span></td>
                      <td class="text-center">✔️</td>                   
                      <td c;ass="text-center"><a href="#">📞</a></td>                              
                    </tr>
                    <tr>                      
                      <td>      
                        <div>
                          <img class="img-fluid" style="width:6rem; " src="../../resources/img/profile_sample.png" alt="" />
                        </div>         
                      </td>
                      <td>채수현</td>
                      <td>만25살</td>
                      <td>남자</td>
                      <td class="text-truncate">카페 서빙, 전단지, 운전면허1종</td>
                      <td>시켜만 주시면 열심히 하겠습니다.</td>
                      <td><span class="badge badge-pill badge-danger text-wrap text-justify text-white">10점</span></td>
                      <td class="text-center">✔️</td>      
                      <td c;ass="text-center"><a href="#">📞</a></td>                                           
                    </tr>
                    <tr>                      
                      <td>      
                        <div>
                          <img class="img-fluid" style="width:6rem; " src="../../resources/img/profile_sample.png" alt="" />
                        </div>         
                      </td>
                      <td>채수현</td>
                      <td>만25살</td>
                      <td>남자</td>
                      <td class="text-truncate">카페 서빙, 전단지, 운전면허1종</td>
                      <td>시켜만 주시면 열심히 하겠습니다.</td>
                      <td><span class="badge badge-pill badge-danger text-wrap text-justify text-white">10점</span></td>
                      <td class="text-center">✔️</td>          
                      <td c;ass="text-center"><a href="#">📞</a></td>                                       
                    </tr>
                    
                    
                  </tbody>
                </table>
              </div>
            </div>
          </div>
          
          
          
  <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
          <div class="container my-auto">
              <div class="copyright text-center my-auto">
                  <span>Copyright &copy; 알바대타 2020</span>
              </div>
          </div>
      </footer>
      <!-- End of Footer -->
    </div>
    <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>


<%--준태형 작
<html>
<head>
<title>${sitename}</title>
<script src="/resources/js/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="/resources/bs/bootstrap.min.css">
<link rel="stylesheet" href="/resources/bs/bootstrap-theme.min.css">
<script src="/resources/bs/bootstrap.min.js"></script>

<style>
 #menu{height:50px; background: #fcc; }
 .one{width: 600px; height: 100%; margin:0 auto;}
 .one > li{float: left; width: 20%; line-height: 50px; text-align:center; position:relative;}
 .one > li:hover .two{left: 0;}
 .one > li a{display:block;}
 .one > li a:hover {bakground: #B21016; color: #fff; font-weight: bold;}
 .two{position:absolute; top:50px; left: -9999px; background: #ccc; width:120%;}
 .two > li{position: relative;}
 .two > li:hover .three{left: 100%;}

 .three{position:absolute; top: 0; background: #6BD089; left:-9999px; width:200%;}
 .three > li a:hover{backgorund: #085820; color: #fff;}
</style>
</head>
<body>
<h1>${sitename}</h1>
	<h1>메인화면</h1>
	<%@ include file="/WEB-INF/views/people/peoplenavbar/peoplenav.jsp" %>

</body>
</html>
 --%>