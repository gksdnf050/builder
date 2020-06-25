<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 mb-4">
                <!-- Illustrations -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">오늘의 프리미엄 알바</h6>
                    </div>
                    <div class="card-body">
                        <div class="text-center">
                            <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 75rem; height: 35rem;" src="${view.image}" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<br />
${view.title}<br />
지원자격<br />
경력 ${view.career}<br />
성별 ${view.gender}<br />

모집내용<br />
모집직종 ${view.occupation}<br />

근무조건<br />
근무기간 ${view.date}<br />
근무지역 ${view.location}<br />
근무주소 ${view.address}<br />
시급 ${view.money}<br />

<label>내용</label><br />
${view.content}<br />
<img src="${view.image}" /><br />

마감일 ${view.deadline}<br />

<a href="/allba/${sitename}/notebox/apply?boardid=${view.getBoardid()}&touserid=${view.getUserid()}">지원하기</a> <br />
<c:if test="${view.getUserid() eq allbamember.getUserid()}"> <a href="/allba/${sitename}/board/modify?boardid=${view.getBoardid()}">수정</a> <a href="/allba/${sitename}/board/delete?boardid=${view.getBoardid()}">삭제</a> </c:if>
