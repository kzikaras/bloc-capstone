// $(document).ready(function(){
//     var scrollBox = document.querySelector("#chat-box");
//     console.log(scrollBox);
    
//     scrollBox.scrollTop = scrollBox.scrollHeight;
// });

document.addEventListener("turbolinks:load", function() {
    var scrollBox = document.querySelector("#chat-box");
    console.log(scrollBox);
    
    scrollBox.scrollTop = scrollBox.scrollHeight;
});