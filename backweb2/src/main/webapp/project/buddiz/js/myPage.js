
var openModalButton = document.getElementById("openModalButton");


var modal = document.getElementById("myModal");

var closeButton = document.getElementsByClassName("close")[0];


function checkPassword() {
	  var storedPassword = "비밀번호를 가져옵니다.";
	  var userInput = prompt("비밀번호를 입력하세요.");

	  if (userInput !== storedPassword) {
	    alert("유효하지 않은 비밀번호입니다.");
	    return false;
	  }
	}
    	function callAjax(){
    		var xhr = new XMLHttpRequest()
    		xhr.open("get","z02_data.jsp",false);
    		xhr.send()
    		var data = xhr.responseText
    		//alert(data)
    		var arry = data.split(",")
    		//alert(arry)
    		var tds = document.querySelectorAll("tbody td")
    		arry.forEach(function(prod,idx){
    			//console.log(prod+":"+idx)
    			tds[idx].innerText = prod
    		})
    		
    		
    	}