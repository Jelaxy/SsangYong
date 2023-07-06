// 모달 창의 저장 버튼 클릭 시 실행되는 함수
function update() {
  var nName = document.getElementById("N_NAME").value;
  var name = document.getElementById("Name").value;
  var bDay = document.getElementById("B_DAY").value;
  var mail = document.getElementById("MAIL").value;
  var pNum = document.getElementById("P_NUM").value;

  processUserInput(nName, name, bDay, mail, pNum);
}

// 입력된 내용을 백엔드로 전송하는 함수
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
  var modal = document.getElementById("myModal");
  modal.style.display = "none";
}


// 게시물 수정 모달
function submitEdit() {
  var postId = document.getElementById("postId").value;
  var editText = document.getElementById("editText").value;

  var xhr = new XMLHttpRequest();
  xhr.open("POST", "/updatePost", true); // 백엔드 엔드포인트 URL
  xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

  xhr.onreadystatechange = function() {
    if (xhr.readyState === XMLHttpRequest.DONE) {
      if (xhr.status === 200) {
        // 요청이 성공적으로 완료된 경우 처리할 코드
        console.log('게시물 수정 성공!');
        closeModal();
        location.reload(); // 페이지 새로고침
      } else {
        // 요청이 실패한 경우 처리할 코드
        console.log('게시물 수정 실패');
      }
    }
  };

  var data = "postId=" + encodeURIComponent(postId) +
             "&editText=" + encodeURIComponent(editText);

  xhr.send(data);
}

function closeModal() {
  var modal = document.getElementById("editModal");
  modal.style.display = "none";
}

// 모달 창이 열릴 때 이벤트 처리
$('#editModal').on('show.bs.modal', function(event) {
  var button = $(event.relatedTarget);
  var postId = button.data('pid');
  var postText = button.data('ptext');

  var modal = $(this);
  modal.find('#postId').val(postId);
  modal.find('#editText').val(postText);
});
