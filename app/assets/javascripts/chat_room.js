window.onload = function(){
    var scrollBox = document.querySelector("#chat-box");
    console.log(scrollBox);
    
    scrollBox.scrollTop = scrollBox.scrollHeight;
};