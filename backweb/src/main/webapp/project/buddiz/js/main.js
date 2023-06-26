document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("scrollTop").onclick = function () {
        window.scrollTo({
            top: 0,
            left: 0,
            behavior: 'smooth'
        });
    };

    window.navigator.clipboard.writeText("복사될 텍스트").then(() => {
        // 복사가 완료되면 이 부분이 호출된다.
        // alert("복사 완료!");
    });

    const pMore = document.querySelector(".postMore");
    // const pMore = document.querySelector(".postMore");s
    pMore.onclick = function() {
        
    }

})


$(document).ready(function () {
    const Height = $("#scrollTop").height();
    $("#scrollTop").hide();

    $(window).scroll(function () {
        var rolling = $(this).scrollTop() >= Height;
        if (rolling) {
            $("#scrollTop").fadeIn(500).css({ "position": "fixed" });
        }
        else {
            $("#scrollTop").fadeOut(300);
        }

    });

    
})