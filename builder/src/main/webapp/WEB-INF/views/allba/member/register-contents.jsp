<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="container m-b-5" style="flex: 1 0 auto;">
    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Card Body -->
            <div class="p-5">
                <div class="text-center">
                    <h1 class="font-weight-bold mb-5 text-gray-800 text-xl">회원가입</h1>
                </div>

                <form class="user mb-3" method="post" enctype="multipart/form-data">
                    <div class="row form-group mb-3">
                        <div class="col-sm-2 py-4 text-right p-2">
                            <span class="text-md text-primary">아이디</span>
                        </div>
                        <div class="col-sm-10 py-2 form-group">
                            <input name="userid" id="userid" class="form-control form-control-user" placeholder="아이디를 입력해주세요." />
                        </div>

                        <div class="col-sm-2 py-4 text-right p-2">
                            <span class="text-md text-primary">비밀번호</span>
                        </div>
                        <div class="col-sm-10 py-2 form-group">
                            <input name="userpass" type="password" id="userpass" class="form-control form-control-user" placeholder="비밀번호를 입력해주세요." />
                        </div>
                        <div class="col-sm-2 py-4 text-right p-2">
                            <span class="text-md text-primary">비밀번호 확인</span>
                        </div>
                        <div class="col-sm-10 py-2 form-group">
                            <input class="form-control form-control-user" placeholder="비밀번호를 한번더 입력해주세요." />
                        </div>
                    </div>
                    <div class="row form-group mb-5">
                        <div class="col-sm-3">&nbsp;</div>
                        <div class="col-sm-6">
                            <button type="submit" id="submit" class="btn btn-primary btn-user btn-block">회원가입</button>
                        </div>
                        <div class="col-sm-3">&nbsp;</div>
                    </div>
                </form>
                <hr />
                <div class="text-center">
                    <font class="small">비밀번호를 까먹으셨나요?</font>
                    <a class="small" href="forgot-password.html">비밀번호 찾기</a>
                </div>
                <div class="text-center">
                    <font class="small">아이디가 있으신가요?</font>
                    <a class="small" href="login.html">로그인</a>
                </div>
            </div>
        </div>
    </div>
</div>
