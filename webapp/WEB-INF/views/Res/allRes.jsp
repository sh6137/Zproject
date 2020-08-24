<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link href="/fullcalendar-4.3.1/core/main.css" rel="stylesheet" />
<link href="/fullcalendar-4.3.1/daygrid/main.css" rel="stylesheet" />
<link href="/fullcalendar-4.3.1/timegrid/main.css" rel="stylesheet" />
<link href="/fullcalendar-4.3.1/list/main.css" rel="stylesheet" />
<script src="/fullcalendar-4.3.1/core/main.js"></script>
<script src="/fullcalendar-4.3.1/interaction/main.js"></script>
<script src="/fullcalendar-4.3.1/daygrid/main.js"></script>
<script src="/fullcalendar-4.3.1/timegrid/main.js"></script>
<script src="/fullcalendar-4.3.1/list/main.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" ></script>

<script>

	function fn_get_events()  {
		
		var events = [];
		
		$.ajax({
			type : "get",
			url : "/INSRES/mainResList",
			datatype:'json',
			contentType:'application/json; charset=UTF-8',
			async:false,
			success : function(datas) {
				$.each(datas, function(index, items) {
					events.push({
							title: items.title,
							start: items.start,
							end : items.end,
							color : items.color,
							textColor : items.textColor,
							extendedProps: { 
								r_id:items.r_id,
								imageurl:items.imageurl,
								strdate:items.strdate,
								t:items.t
							}
							});
				});
			}
		});
		return events;
		
	};
	
	function res(r_id, startdate) {
		
		//var strdate = startdate.substr(2, 9);
		location.href='/Res?r_id=' + r_id + '&startdate=' + startdate;
		
	};

	document.addEventListener('DOMContentLoaded', function() {
		var events = fn_get_events();
		var calendarEl = document.getElementById("calendar");
		var calendar = new FullCalendar.Calendar(calendarEl, {
			plugins : [ 'interaction', 'dayGrid' ],
			header : {
				left : 'prev,next today',
				center : 'title',
				right : 'dayGridMonth'
			},
			locale : 'ko',
			eventOrder : 'color',
			events : events,
			contentHeight: 'auto',
			eventRender:function(info) {
			    var imageurl = info.event.extendedProps.imageurl;
			    if(info.event.extendedProps.imageurl) {
			    	info.el.querySelector('.fc-title').innerHTML = "<img src=" + imageurl + " width='20' height='20'><span>" + info.event.title + "<span>";
                }    
			},
			eventClick:function(info) {
				var r_id = info.event.extendedProps.r_id;
				var startdate = info.event.extendedProps.strdate;
				var t = info.event.extendedProps.t;
				if (t != 'f') {
					res(r_id, startdate);					
				}
				//location.href='/INSRES/InsRes?r_id=' + info.event.extendedProps.r_id + '&startdate=' + info.event.extendedProps.strdate;
			    //alert(info.event.extendedProps.r_id);	    		    
			    //alert(info.event.extendedProps.imageurl);	    		    
			    //alert(info.event.extendedProps.strdate);	    		    
			}
		});

		calendar.render();

	});
		
</script>
<style>

  body {
    margin: 40px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 1200px;
    margin: 0 auto;
  }

</style>
</head>
<body>

  <div id="calendar"></div>
  <div style="text-align:center;"><input type="button" id="resGo" onclick="location.href='/Res'" value="예약하기" class="btn btn-primary"/></div>

</body>
</html>