/**
 * html 과 JS을 분리 
 */

window.onload=function(){
//function setEvt(){ //기명함수
alert(document.getElementById("btn"));
//무기명 함수로 이벤트를 등록
//1. 태그를 찾고 2.이벤트를 등록 3.이벤트 발생 시 사용자에게 제공할 코드를 익명 함수로 작성
document.getElementById("btn").onclick=function(){
	alert("버튼이 클릭 되었습니다.");
}//onclik

}//setEvt  , window.onload