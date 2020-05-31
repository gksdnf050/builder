<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="container">
    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Card Body -->
            <div class="p-5">
                <div class="text-center">
                    <h1 class="font-weight-bold mb-5 text-gray-800 text-xl">아르바이트 모집 공고를 작성해보세요!</h1>
                </div>

                <form class="user">
                    <div class="row form-group mb-3">
                        <div class="col-sm-1 text-right p-2">
                            <span class="text-md text-primary">제목</span>
                        </div>
                        <div class="col-sm-8 form-group">
                            <input name="title" type="email" class="form-control form-control-user" id="exampleInputEmail" placeholder="제목을 입력해주세요." />
                        </div>
                        <div class="col-sm-1 text-right p-2">
                            <span class="text-md text-primary">시급</span>
                        </div>
                        <div class="col-sm-2 form-group">
                            <input name="money" type="text" class="form-control form-control-user" id="exampleInputEmail" placeholder="시급을 입력하세요." />
                        </div>
                    </div>

                    <div class="row form-group mb-3">
                        <div class="col-sm-1 text-right p-2">
                            <span class="text-md text-primary">경력</span>
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <select name="career" id="" class="custom-select">
                                    <option value="무관">무관</option>
                                    <option value="신입">신입</option>
                                    <option value="경력">경력</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-1 text-right p-2">
                            <span class="text-md text-primary">성별</span>
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <select name="gender" id="" class="custom-select">
                                    <option value="남자">남자</option>
                                    <option value="여자">여자</option>
                                    <option value="all">all</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-1 text-right p-2">
                            <span class="text-md text-primary">모집 직종</span>
                        </div>
                        <div class="col-sm-2">
                            <div class="">
                                <select name="occupation" id="" class="custom-select">
                                    <option value="매장관리">매장관리</option>
                                    <option value="서빙주방">서빙주방</option>
                                    <option value="서비스/미디어">서비스/미디어</option>
                                    <option value="고객상담/영업/리서치">고객상담/영업/리서치</option>
                                    <option value="강사교육">강사교육</option>
                                    <option value="생산/기능/운전/배달">생산/기능/운전/배달</option>
                                    <option value="사무회계">사무회계</option>
                                    <option value="it디자인">it디자인</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-1 text-right p-2">
                            <span class="text-md text-primary">근무 기간</span>
                        </div>
                        <div class="col-sm-2">
                            <div class="">
                                <select name="location" id="" class="custom-select">
                                    <option value="서울">서울</option>
                                    <option value="부산">부산</option>
                                    <option value="인천">인천</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="row my-auto form-group">
                        <div class="col-sm-1 text-right p-2">
                            <span class="text-md text-primary">지역</span>
                        </div>
                        <div class="col-sm-2">
                            <div class="">
                                <select name="date" id="" class="custom-select">
                                    <option value="1일">1일</option>
                                    <option value="1주일이내">1주일이내</option>
                                    <option value="1주일~1개월">1주일~1개월</option>
                                    <option value="1개월~3개월">1개월~3개월</option>
                                    <option value="3개월~6개월">3개월~6개월</option>
                                    <option value="6개월~1년">6개월~1년</option>
                                    <option value="1년이상">1년이상</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-1 text-right p-2">
                            <span class="text-md text-primary">주소</span>
                        </div>
                        <div class="col-sm-8 form-group">
                            <input type="email" class="form-control form-control-user" id="exampleInputEmail" placeholder="상세 주소를 입력해주세요." />
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="col-sm-6 mb-3 mb-sm-0">
                            <input type="text" class="form-control form-control-user" id="exampleFirstName" placeholder="First Name" />
                        </div>
                        <div class="col-sm-6">
                            <input type="text" class="form-control form-control-user" id="exampleLastName" placeholder="Last Name" />
                        </div>
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control form-control-user" id="exampleInputEmail" placeholder="Email Address" />
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-6 mb-3 mb-sm-0">
                            <input type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password" />
                        </div>
                        <div class="col-sm-6">
                            <input type="password" class="form-control form-control-user" id="exampleRepeatPassword" placeholder="Repeat Password" />
                        </div>
                    </div>
                    <a href="login.html" class="btn btn-primary btn-user btn-block">
                        Register Account
                    </a>
                    <hr />
                    <a href="index.html" class="btn btn-google btn-user btn-block"> <i class="fab fa-google fa-fw"></i> Register with Google </a>
                    <a href="index.html" class="btn btn-facebook btn-user btn-block"> <i class="fab fa-facebook-f fa-fw"></i> Register with Facebook </a>
                </form>
                <hr />
                <div class="text-center">
                    <a class="small" href="forgot-password.html">Forgot Password?</a>
                </div>
                <div class="text-center">
                    <a class="small" href="login.html">Already have an account? Login!</a>
                </div>
            </div>
        </div>
    </div>
</div>
