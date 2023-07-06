function update() {
    var nName = document.getElementById("N_NAME").value;
    var name = document.getElementById("Name").value;
    var bDay = document.getElementById("B_DAY").value;
    var mail = document.getElementById("MAIL").value;
    var pNum = document.getElementById("P_NUM").value;
    
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "updateProfile", true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    xhr.onreadystatechange = function() {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            
            var response = xhr.responseText;

            closeModal();
        }
    };
    
    
    xhr.send("nName=" + encodeURIComponent(nName) +
             "&name=" + encodeURIComponent(name) +
             "&bDay=" + encodeURIComponent(bDay) +
             "&mail=" + encodeURIComponent(mail) +
             "&pNum=" + encodeURIComponent(pNum));
}

function closeModal() {
    var modal = document.getElementById("myModal");
    modal.style.display = "none";
}
