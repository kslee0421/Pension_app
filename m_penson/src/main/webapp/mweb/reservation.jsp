<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src= "./js/reservation.js"></script>
<section class="subpage">
    <div class="member_agree">
    <p>펜션 예약하기</p>
    <ol class="reser_ol">
    <li>
    <span class="reser_part1">펜션명</span>
    <span class="reser_part2" id="room_name"></span>
    </li>
    <li>
    <span class="reser_part1">객실선택</span>
    <span class="reser_part2">
    <select class="reser_select">
    <option value="">객실선택</option>
    <option>로즈힙 101호</option>
    <option>튤립 102호</option>
    <option>레몬 201호</option>
    <option>만다리 202호</option>
    <option>피치 301호</option>
    <option>올리비아 302호</option>
    </select>
    </span>
    </li>
    <li>
    <span class="reser_part1">일자선택</span>
    <span class="reser_part2">
    <input type="datetime-local" class="reser_input">
    </span>
    </li>
    <li>
    <span class="reser_part1">객실구조</span>
    <span class="reser_part2">
    방2, 주방1, 화장실1, 거실1
    </span>
    </li>
    <li>
    <span class="reser_part1">입실인원</span>
    <span class="reser_part2">
    기준 3인 / 최대 4인
    </span>
    </li>
    <li>
    <span class="reser_part1">추가인원</span>
    <span class="reser_part2">
    기준인원 초과시 추가요금이 발생합니다.
    </span>
    </li>
    <li>
    <span class="reser_part1">구매금액</span>
    <span class="reser_part2" id="room_money">
    </span>
    </li>
    </ol>
    <p>예약자정보 입력</p>
    <ol class="reser_ol">
    </li>
    <li>
    <span class="reser_part1">예약자명</span>
    <span class="reser_part2">
    <input type="text" class="reser_input" maxlength="30">
    </span>
    </li>
    <li>
    <span class="reser_part1">휴대폰</span>
    <span class="reser_part2">
    <input type="number" class="reser_input" maxlength="11">
    </span>
    </li>
    <li>
    <span class="reser_part1">입실인원</span>
    <span class="reser_part2">
    <select class="reser_select">
    <option value="">입실 인원선택</option>
    <option>1인</option>
    <option>2인</option>
    <option>3인</option>
    <option>4인</option>
    <option>5인</option>
    </select>
    </span>
    </li>
    <li>
    <span class="reser_part1">이메일</span>
    <span class="reser_part2">
    <input type="email" class="reser_input" maxlength="50">
    </span>
    </li>
    </ol>
    <div class="member_agreebtn" onclick="">예약하기</div>
    </div>
</section>



