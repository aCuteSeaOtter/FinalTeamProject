$(function() {
    // ** $변수명 : jQuery 객체를 구분하기 위해 사용

    // 현재 날짜를 가져옴
    let currentDate = new Date();
    let viewYear    = currentDate.getFullYear();
    let viewMonth   = currentDate.getMonth() + 1;
	let viewDate    = currentDate.getDate();

    // 현재 연도와 월을 표시하는 요소를 선택하고 초기화
    let current_date = $(".current-date");
    current_date.html(`${viewYear}년 ${viewMonth}월`);

    // 날짜를 표시할 요소와 이전/다음 버튼 요소를 선택
    let daysTag = $(".days");
    let prevBtn = $("#prev");
    let nextBtn = $("#next");

    // 일정 시작일, 종료일
    let startDate = null;
    let endDate   = null;

    // 클릭한 날짜 저장
    let selYear  = []; // 클릭한 날짜의 연도를 저장
    let selMonth = []; // 클릭한 날짜의 월을 저장
    let selDate  = []; // 클릭한 날짜의 일을 저장
    let selDay   = []; // 클릭한 날짜의 요일을 저장

    // 선택한 범위에 포함된 날짜를 저장
    let selectedDates = [];

    // 시작일과 종료일의 jQuery 객체를 저장
    let startDay;
    let endDay;

    // 달력을 렌더링하는 함수
    let renderCalendar = () => {
        // 현재 연도와 월을 화면에 표시
        current_date.html(`${viewYear}년 ${viewMonth}월`);

        // 이번 달의 첫 번째 날의 요일을 가져옴
        let firstDayOfMonth = new Date(viewYear, viewMonth - 1, 1).getDay();

        // 이번 달의 마지막 날짜를 가져옴
        let lastDateOfMonth = new Date(viewYear, viewMonth, 0).getDate();

        // 이전 달의 마지막 날짜를 가져옴
        let lastDateOfLastMonth = new Date(viewYear, viewMonth - 1, 0).getDate();

        // 날짜를 생성하여 HTML로 설정
        let liTag = '';

        // 이전 달의 날짜를 추가 (이번 달의 첫 번째 날이 시작하기 전의 빈 칸을 채움)
        for (let i = firstDayOfMonth; i > 0; i--) {
            liTag += `<li class="inactiv">${lastDateOfLastMonth - i + 1}</li>`;
        }

        // 이번 달의 날짜를 추가, 선택한 날짜 추가
        for (let i = 1; i <= lastDateOfMonth; i++) {
            let currentDateObj = new Date(viewYear, viewMonth - 1, i, 12);
            let isToday        = (i === currentDate.getDate() && viewMonth === currentDate.getMonth() + 1 && viewYear === currentDate.getFullYear()) ? 'activ' : '';
            let isSelected     = (startDate && endDate && currentDateObj >= startDate && currentDateObj <= endDate) ? 'selected-range' : '';
            
            liTag += `<li class="${isToday} ${isSelected}">${i}</li>`;
        }

        // 최종적으로 날짜를 daysTag에 설정
        daysTag.html(liTag);

        // 이전 달, 다음 달 버튼의 클릭 이벤트 핸들러 설정
        prevBtn.off('click').on('click', function() {
            viewMonth -= 1; // 이전 달로 이동

            if (viewMonth < 1) {
                viewMonth = 12;
                viewYear  -= 1;
            }
            renderCalendar();
        });

        nextBtn.off('click').on('click', function() {
            viewMonth += 1; // 다음 달로 이동

            if (viewMonth > 12) {
                viewMonth = 1;
                viewYear  += 1;
            }
            renderCalendar();
        });

        // 각 날짜를 클릭했을 때의 처리
        daysTag.find("li").click(function () {
			// 클릭 시, 오늘 날짜 하이라이트 제거 			
			$(".activ").removeClass();
            if ($(this).hasClass('inactiv')) return; // 이전 달의 날짜를 클릭 시, 아무 동작도 하지 않음
        
            // 만약 startDate와 endDate가 이미 선택되어 있다면 초기화
            if (startDate !== null && endDate !== null) {
                startDate     = null;
                endDate       = null;
                selYear  = [];
                selMonth = [];
                selDate   = [];
                selectedDates = [];
                $("li").removeClass('selected selected-range');
            }
        
            $(this).addClass("selected selected-range");
        
            selYear.push(viewYear); // 현재 보이는 해를 저장
            selMonth.push(viewMonth); // 현재 보이는 달을 저장
            selDate.push(parseInt($(this).text())); // 클릭한 날짜의 텍스트 값을 정수로 가져옴
        
            // 선택한 날짜가 2개가 될 때까지 기다림
            if (selDate.length === 2) {
                let selectedDate = [];
                for (let i = 0; i < 2; i++) {
                    selectedDate[i] = new Date(selYear[i], selMonth[i] - 1, selDate[i], 12);
                }
        
                // 종료일이 시작일보다 뒤거나 같은 경우
                if (selectedDate[1] - selectedDate[0] >= 0) {
                    startDate = selectedDate[0];
                    endDate   = selectedDate[1];
                } else {
                    startDate = selectedDate[1];
                    endDate   = selectedDate[0];
                }

                startDay = $("li.selected-range").eq(0); // 선택된 범위의 첫 번째 날짜
                endDay = $("li.selected-range").last(); // 선택된 범위의 마지막 날짜
        
                // 시작일과 종료일 사이의 모든 날짜에 대해 'selected-range' 클래스를 추가
                if (startDate <= endDate) {
                    let start = new Date(startDate);
                    let end = new Date(endDate);
                    let current = new Date(start);
        
                    while (current <= end) {
                        let day = current.getDate();
                        let month = current.getMonth() + 1;
                        let year = current.getFullYear();
                        daysTag.find("li").each(function () {
                            if (parseInt($(this).text()) === day && !$(this).hasClass('inactiv')) {
                                if ((year === viewYear && month === viewMonth) || 
                                    (viewMonth === 12 && month === 1 && year === viewYear + 1)) {
                                    $(this).addClass('selected-range');
                                }
                            }
                        });
                        current.setDate(current.getDate() + 1);
                    }
                    
                    // 요일 저장 로직 추가
                    selDay = [];
                    let dayNames = ['일', '월', '화', '수', '목', '금', '토'];
                    for (let d = new Date(startDate); d <= endDate; d.setDate(d.getDate() + 1)) {
                        selDay.push(dayNames[d.getDay()]);
                    }
                }
        
                // 선택한 범위에 포함된 날짜를 가져옴
                for (let d = new Date(startDate); d <= endDate; d.setDate(d.getDate() + 1)) {
                    selectedDates.push(new Date(d));
                }
                
                // 콘솔에 시작일과 종료일 출력
                console.log(`시작일: ${startDate.toISOString().split('T')[0]}, 종료일: ${endDate.toISOString().split('T')[0]}`);
                console.log("선택된 날짜들:", selectedDates.map(date => date.toISOString().split('T')[0]));
            }
        });

        // 이번 달의 날짜 중 오늘 이전의 날짜에 inactiv 클래스 추가
        daysTag.find("li").each(function() {
            let day = parseInt($(this).text());
            if (isNaN(day)) return; // 숫자가 아닌 경우 (첫 번째 빈 칸 등) skip

            if (viewYear === currentDate.getFullYear() && viewMonth === currentDate.getMonth() + 1) {
                if (day < currentDate.getDate()) {
                    $(this).addClass('inactiv');
                }
            } else if (viewYear < currentDate.getFullYear() || (viewYear === currentDate.getFullYear() && viewMonth < currentDate.getMonth() + 1)) {
                // 이번 달 이전의 날짜는 모두 inactiv 클래스 추가
                $(this).addClass('inactiv');
            }
        });
    };

    let selDates; 
    // '선택하기'버튼 클릭 이벤트
    $(".selBtn").on("click", function() {

        if (selectedDates.length > 0) {
            // 선택한 날짜와 요일을 포맷팅하여 배열에 저장
            let formattedDates = selectedDates.map((date, index) => 
                `${date.toISOString().split('T')[0]} (${selDay[index]})`
            );
            // 선택한 날짜들을 텍스트로 설정
            $(".dates").val(formattedDates.join(', '));
            // 시작일과 종료일을 텍스트로 설정
            $(".start").val("시작일 : " + formattedDates[0]);
            $(".end").val("도착일 : " + formattedDates[formattedDates.length - 1]);
            
            console.log("선택된 날짜들과 요일:", formattedDates);
        } else {
            alert("날짜를 선택해주세요."); // 날짜가 선택되지 않은 경우 알림
        }
        
    });

    // '취소하기' 버튼 클릭 이벤트
    $(".delBtn").click(function() {
        startDate     = null;
        endDate       = null;
        selYear  	  = [];
        selMonth 	  = [];
        selDate   	  = [];
        selDay		  = [];
        selectedDates = [];
        $("li").removeClass('selected selected-range');
		
		// 현재 날짜로 달력을 초기화
        viewYear = currentDate.getFullYear();
        viewMonth = currentDate.getMonth() + 1;
        
        // 달력 다시 렌더링
        renderCalendar();
		
	    
	    
	    // 현재 연도와 월이 오늘과 같은 경우에만 추가
	    if (viewYear === viewYear && viewMonth === viewMonth) {
	        daysTag.find("li").each(function() {
	            if (parseInt($(this).text()) === viewDate && !$(this).hasClass('inactiv')) {
	                $(this).addClass('activ');
	            }
	        });
	    }
    });

    // 초기 달력 렌더링
    renderCalendar();
});
