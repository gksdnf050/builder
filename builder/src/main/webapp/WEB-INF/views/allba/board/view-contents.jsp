<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 등록시간 ${view.regdate}<br />
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
