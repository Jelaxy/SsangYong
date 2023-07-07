// 모달 창의 저장 버튼 클릭 시 실행되는 함수
function update() {
  var nName = document.getElementById("N_NAME").value;
  var name = document.getElementById("Name").value;
  var bDay = document.getElementById("B_DAY").value;
  var mail = document.getElementById("MAIL").value;
  var pNum = document.getElementById("P_NUM").value;

  processUserInput(nName, name, bDay, mail, pNum);
}

function processUserInput(nName, name, bDay, mail, pNum) {
  var xhr = new XMLHttpRequest();
  xhr.open("POST", "/updateProfile", true); // 백엔드 엔드포인트 URL
  xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

  xhr.onreadystatechange = function() {
    if (xhr.readyState === XMLHttpRequest.DONE) {
      if (xhr.status === 200) {
        // 요청이 성공적으로 완료된 경우 처리할 코드
        console.log('데이터 전송 성공!');
        closeModal();
      } else {
        // 요청이 실패한 경우 처리할 코드
        console.log('데이터 전송 실패');
      }
    }
  };

  var data = "nName=" + encodeURIComponent(nName) +
             "&name=" + encodeURIComponent(name) +
             "&bDay=" + encodeURIComponent(bDay) +
             "&mail=" + encodeURIComponent(mail) +
             "&pNum=" + encodeURIComponent(pNum);

  xhr.send(data);
}

function closeModal() {
  var modal = document.getElementById("editFrm");
  modal.style.display = "none";
}


    	$(document).ready( function(){
    		$("#openModalButton").click(function(){
    			if(confirm("수정하시겠습니까?")){

    				$.ajax({
    					url:"${path}/postUpdate.do",
    					type:"post",
    					data:$("#editFrm").serialize(),
    					dataType:"json",
    					success:function(myPosts){
    						alert("수정성공")
							console.log(code)
							$("#editFrm #editText").val(Post.p_text)
    					},
    					error:function(err){
    						console.log("#에러발생#")
    						console.log(err)
    					}
    				})		
    			}
    		})
    		
    	});






		  function editModal(postId) {
		    var postText = document.getElementById("postText_" + postId).innerText;
		    document.getElementById("editText").value = postText;
		    document.getElementById("postId").value = postId;
		    $('#editModal').modal('show');
		  }
		
		  function submitEdit() {
		    var postId = document.getElementById("postId").value;
		    var editText = document.getElementById("editText").value;
		
		    // AJAX 요청 등을 통해 수정된 내용을 서버로 전송하여 DB에 저장하는 로직을 구현해야 합니다.
		    // 이 부분은 서버 사이드에서 처리되어야 하는 부분입니다.
		
		    $('#editModal').modal('hide');
		  }
		
		  function deletePost(postId) {
		    // 게시물 삭제 로직을 구현하세요.
		  }