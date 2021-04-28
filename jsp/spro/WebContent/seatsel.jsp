<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/spro/css/mycss.css" />
<script type = "text/javascript">
//$()은 document.getElementById() 이것과 같음.
	$('document').ready(function(){
		$('button').on('click',function(obj){ // 버튼을 누르면 function을 실행하라
			$('button').attr('class','btn btn-primary w80'); 
		// 태그 선택자가 button인 애들의 클래스명을 btn btn-primary w80 로 바꿈. 
		/*선택자는 3가지 종류 있음 
			1)#id<-id선택자, 2).class명 <- class선택자, 3)tag명 <-tag선택자
			예제 ...
			$('#id명')
			$('.class명')
			$('h1') [h1태그 찾는것, ex) button, table]
			$('p>h2').attr('class','class명')
			<p><h1>제목<h1><strong>진하게<.strong><h2>h2h2</h2><p>
			p > h1{
				
			}
		*/
		$(this).attr('class','btn btn-danger w80'); // 클릭한 이벤트 버튼 태그의 클래스를 danger로 바꿈
			//this는 클릭한 이벤트 버튼 태그의 클래스를 danger로 바꿈
			//alert('$(this).text() ='$(this).text()) /* text는 버튼 사이 글자만 가져옴 */
// text() 태그 사이에 글자만 가져오기
// html() 태그 사이에 html 태그 포함해서 글자 가져오기
// val() input태그에 있는 value값 가져오기
		});
		$('#confirm').on('click',function(){
			$('button').each(function(index,obj){ //button
				console.log("$(this).attr('class') = "+$(this).attr('class'));
				if($(this).attr('class') == 'btn btn-danger w80'){
					console.log("$(this).attr('class') = "+$(this).attr('class'));
					console.log("$(this).text() = "+$(this).text()); // 클릭한 버튼 사이 글자 가져옴
					seat = $(this).text();
				}
			})
			// 좌석이 빨간색인거 찾아서 seatsave.jsp 호출
			location.href='seatsave.jsp?seat='+seat;
		})
	})
</script>
</head>
<body>
	<div class="jumbotron">
  		<h1>My Study</h1>
 		<p>공부할려면 회원가입</p> 
 		<div class="row text-center">
 			<div class="col-sm-2"><button class="btn btn-primary w80">1</button></div> <!-- //div가 태그 class가 속성 -->
 			<div class="col-sm-2"><button class="btn btn-primary w80">2</button></div>
 			<div class="col-sm-2"><button class="btn btn-primary w80">3</button></div>
 			<div class="col-sm-2"><button class="btn btn-primary w80">4</button></div>
 			<div class="col-sm-2"><button class="btn btn-primary w80">5</button></div>
 			<div class="col-sm-2"><button class="btn btn-primary w80">6</button></div>
 		</div>
 		
 		<div class="row text-center mt-2">
 			<div class = "col-sm-2"><button class="btn btn-primary w80">7</button></div>
 			<div class="col-sm-8"></div>
 			<div class="col-sm-2"><button class="btn btn-primary w80">8</button></div>
 		</div>
 		
 		<div class="row text-center mt-2">
 			 <div class="col-sm-2"><button class="btn btn-primary w80">9</button></div>
 			 <div class="col-sm-1"></div>
 			 <div class="col-sm-2"><button class="btn btn-primary w80">10</button></div>
 			 <div class="col-sm-2"><button class="btn btn-primary w80">11</button></div>
 			 <div class="col-sm-2"><button class="btn btn-primary w80">12</button></div>
 			 <div class="col-sm-1"></div>
 			 <div class="col-sm-2"><button class="btn btn-primary w80">13</button></div>
 		</div>
 		
 		<div class="row text-center mt-2">
 			 <div class="col-sm-2"><button class="btn btn-primary w80">14</button></div>
 			 <div class="col-sm-1"></div>
 			 <div class="col-sm-2"><button class="btn btn-primary w80">15</button></div>
 			 <div class="col-sm-2"><button class="btn btn-primary w80">16</button></div>
 			 <div class="col-sm-2"><button class="btn btn-primary w80">17</button></div>
 			 <div class="col-sm-1"></div>
 			 <div class="col-sm-2"><button class="btn btn-primary w80">18</button></div>
 		</div>
 		
 		<div class="row text-center mt-2">
 			<div class="col-sm-2"><button class="btn btn-primary w80">19</button></div>
 			<div class="col-sm-8"></div>
 			<div class="col-sm-2"><button class="btn btn-primary w80">20</button></div>
 		</div>
 		
 		<div class="row text-center mt-2">
 			 <div class="col-sm-2"><button class="btn btn-primary w80">21</button></div>
 			 <div class="col-sm-2"><button class="btn btn-primary w80">22</button></div>
 			 <div class="col-sm-2"><button class="btn btn-primary w80">23</button></div>
 			 <div class="col-sm-2"><button class="btn btn-primary w80">24</button></div>
 			 <div class="col-sm-2"><button class="btn btn-primary w80">25</button></div>
 			 <div class="col-sm-2"><button class="btn btn-primary w80">26</button></div>
 		</div>
 		
 		 <div class="row text-center mt-2">
 			 <div class="col-sm-2"></div>
 			 <div class="col-sm-2"></div>
			 <div class="col-sm-2"><input type="button" id="cancle" class="btn btn-warning w80" value ="취소"/></div>
 			 <div class="col-sm-2"><input type="button" id="confirm" class="btn btn-warning w80" value ="확인"></div>
 			 <div class="col-sm-2"></div>
 			 <div class="col-sm-2"></div>
 		</div>
 	</div>
</body>
</html>