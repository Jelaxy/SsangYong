
var openModalButton = document.getElementById("openModalButton");


var modal = document.getElementById("myModal");

var closeButton = document.getElementsByClassName("close")[0];

//모달 열기 버튼 클릭 시 이벤트 핸들러
openModalButton.addEventListener("click", function() {
  var storedPassword = "비밀번호를 가져옵니다."; 
  var userInput = prompt("비밀번호를 입력하세요.");

  if (userInput === storedPassword) {
    modal.style.display = "block"; // 비밀번호가 일치하면 모달 창을 엽니다.
  } else {
    alert("유효하지 않은 비밀번호입니다.");
    return;
  }
});

function checkPassword() {
	  var storedPassword = "비밀번호를 가져옵니다.";
	  var userInput = prompt("비밀번호를 입력하세요.");

	  if (userInput !== storedPassword) {
	    alert("유효하지 않은 비밀번호입니다.");
	    return false;
	  }
	}
