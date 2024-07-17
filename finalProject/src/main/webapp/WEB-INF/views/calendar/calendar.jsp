<%@page contentType="text/html; charset=UTF-8"%>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calendar</title>
    <link rel="stylesheet" type="text/css" href="../css/calendar.css">
</head>
<body> 


    <div class="wrapper">
        <div class="left">
            <div class="body">

                <header>
                    <div class="nav">
                        <div id="prev" class="meterial-icons"><img class="arrowIcon" src="../images/calendar/left.png"></div>
                        <p class="current-date"></p>
                        <div id="next" class="meterial-icons"><img class="arrowIcon" src="../images/calendar/right.png"></div>
                    </div>
                </header>
    
                <div class="calendar">
                    <ul class="weeks">
                        <li>일</li>
                        <li>월</li>
                        <li>화</li>
                        <li>수</li>
                        <li>목</li>
                        <li>금</li>
                        <li>토</li>
                    </ul>   <!-- weeks -->
    
                    <ul class="days">
                        
                    </ul>   <!-- days -->
                </div>  <!-- calendar -->
                
                <input type="button" class="delBtn" value="취소하기"/>
                <input type="button" class="selBtn" value="선택하기"/>
            </div>  <!-- body -->
        </div>  <!-- left -->
        

    </div>


</body>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="../js/calendar.js"></script>

</html>