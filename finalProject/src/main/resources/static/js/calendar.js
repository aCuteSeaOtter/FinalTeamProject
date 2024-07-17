$(function() {
    // ** $변수명 : jQuery에서 구분하기 위해 사용
 
    // 현재 날짜를 가져옴
    let currentDate = new Date();
    let viewYear    = currentDate.getFullYear();
    let viewMonth   = currentDate.getMonth() + 1;

    // 현재 연도와 월을 표시하는 요소를 선택하고 초기화
    let $currentDate = $(".current-date");
    $currentDate.html(`${viewYear}년 ${viewMonth}월`);
 
    // 날짜를 표시할 요소와 이전/다음 버튼 요소를 선택
    let $daysTag = $(".days");
    let $prevBtn = $("#prev");
    let $nextBtn = $("#next");

    // 일정 시작일, 종료일
    let startDate = null;
    let endDate   = null;

    // 클릭한 날짜 저장
    let selectedYear  = []; // 클릭한 날짜의 연도를 저장
    let selectedMonth = []; // 클릭한 날짜의 월을 저장
    let selectedDay   = [];

    // 선택한 범위에 포함된 날짜를 가져옴
    let selectedDates = [];

    let $startDay;
    let $endDay;

    // 달력을 렌더링하는 함수
    let renderCalendar = () => {
        // 현재 연도와 월을 화면에 표시
        $currentDate.html(`${viewYear}년 ${viewMonth}월`);

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

        // 최종적으로 날짜를 $daysTag에 설정
        $daysTag.html(liTag);

        // 이전 달, 다음 달 버튼의 클릭 이벤트 핸들러 설정
        $prevBtn.off('click').on('click', function() {
            viewMonth -= 1; // 이전 달로 이동

            if (viewMonth < 1) {
                viewMonth = 12;
                viewYear  -= 1;
            }
            renderCalendar();
        });

        $nextBtn.off('click').on('click', function() {
            viewMonth += 1; // 다음 달로 이동

            if (viewMonth > 12) {
                viewMonth = 1;
                viewYear  += 1;
            }
            renderCalendar();
        });

        // 각 날짜를 클릭했을 때의 처리
        $daysTag.find("li").click(function () {
            if ($(this).hasClass('inactiv')) return; // 이전 달의 날짜를 클릭 시, 아무 동작도 하지 않음
        
            // 만약 startDate와 endDate가 이미 선택되어 있다면 초기화
            if (startDate !== null && endDate !== null) {
                startDate     = null;
                endDate       = null;
                selectedYear  = [];
                selectedMonth = [];
                selectedDay   = [];
                selectedDates = [];
                $("li").removeClass('selected selected-range');
            }
        
            $(this).addClass("selected selected-range");
        
            selectedYear.push(viewYear); // 현재 보이는 해를 저장
            selectedMonth.push(viewMonth); // 현재 보이는 달을 저장
            selectedDay.push(parseInt($(this).text())); // 클릭한 날짜의 텍스트 값을 정수로 가져옴
        
            // 선택한 날짜가 2개가 될 때까지 기다림
            if (selectedDay.length === 2) {
                let selectedDate = [];
                for (let i = 0; i < 2; i++) {
                    selectedDate[i] = new Date(selectedYear[i], selectedMonth[i] - 1, selectedDay[i], 12);
                }
        
                // 종료일이 시작일보다 뒤거나 같은 경우
                if (selectedDate[1] - selectedDate[0] >= 0) {
                    startDate = selectedDate[0];
                    endDate   = selectedDate[1];
                } else {
                    startDate = selectedDate[1];
                    endDate   = selectedDate[0];
                }

                $startDay = $("li.selected-range").eq(0);
                $endDay = $("li.selected-range").last();
        
                // 시작일과 종료일 사이의 모든 날짜에 대해 'selected-range' 클래스를 추가
                if (startDate <= endDate) {
                    let start = new Date(startDate);
                    let end = new Date(endDate);
                    let current = new Date(start);
        
                    while (current <= end) {
                        let day = current.getDate();
                        let month = current.getMonth() + 1;
                        let year = current.getFullYear();
                        $daysTag.find("li").each(function () {
                            if (parseInt($(this).text()) === day && !$(this).hasClass('inactiv')) {
                                if ((year === viewYear && month === viewMonth) || 
                                    (viewMonth === 12 && month === 1 && year === viewYear + 1)) {
                                    $(this).addClass('selected-range');
                                }
                            }
                        });
                        current.setDate(current.getDate() + 1);
                    }
                }
        
                // 선택한 범위에 포함된 날짜를 가져옴
                for (let d = new Date(startDate); d <= endDate; d.setDate(d.getDate() + 1)) {
                    selectedDates.push(new Date(d));
                }
                
                // toISOString() : 날짜의 포맷을 맞춰주는 함수("2024-07-24T03:00:00.000Z") -> T를 기준으로 자르고 앞의 값 저장
                // 콘솔에 시작일과 종료일 출력
                console.log(`시작일: ${startDate.toISOString().split('T')[0]}, 종료일: ${endDate.toISOString().split('T')[0]}`);
                console.log("선택된 날짜들:", selectedDates.map(date => date.toISOString().split('T')[0]));
            }
        });

        // 이번 달의 날짜 중 오늘 이전의 날짜에 inactiv 클래스 추가
        $daysTag.find("li").each(function() {
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

        // 선택한 날짜 저장
        selDates = selectedDates.map(date => date.toISOString().split('T')[0]);
        
        // 시작일, 종료일을 모두 선택하지 않았다면 알림 띄우기
        if(selDates.length > 0) {
            $(".start").val("시작일 : " + selDates[0]);
            $(".end").val("도착일 : " + selDates[selDates.length-1]);
        } else {
            alert("날짜를 선택해주세용.");
        }
        

         // AJAX 요청을 사용하여 날짜 정보를 서버로 전송
        //  $.ajax({
        //     url: '/save-dates', // 서버의 엔드포인트 URL
        //     type: 'POST',
        //     contentType: 'application/json',
        //     data: { dates: selDates },
        //     success: function(response) {
        //         console.log("날짜 정보가 성공적으로 전송되었습니다.");
        //     },
        //     error: function(error) {
        //         console.error("날짜 정보를 전송하는 동안 오류가 발생했습니다.", error);
        //     }
        // });
    });

    $(".delBtn").click(function() {
        startDate     = null;
        endDate       = null;
        selectedYear  = [];
        selectedMonth = [];
        selectedDay   = [];
        selectedDates = [];
        $("li").removeClass('selected selected-range');
    });

    // 초기 달력 렌더링
    renderCalendar();
});
