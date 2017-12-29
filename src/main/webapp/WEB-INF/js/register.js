function arePasswordsSame() {
    input = this; // document.getElementById("passwordConfirm");
    if (input.value != document.getElementById("password").value) {
        input.setCustomValidity("Password Must be Matching."); 
        document.getElementById("passwordConfirmResult").innerHTML = "&times;"; 
    } else {
        input.setCustomValidity(""); 
        document.getElementById("passwordConfirmResult").innerHTML = "&#10004;";      
    }
}
document.getElementById("passwordConfirm").addEventListener("change",arePasswordsSame); 

function validateEmail(){
    input = this; // document.getElementById("email");
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if(! input.value.match(mailformat)){
        input.setCustomValidity("Email is invalid."); 
        document.getElementById("emailResult").innerHTML = "&times;"; 
    }else{
        input.setCustomValidity(""); 
        document.getElementById("emailResult").innerHTML = "&#10004;";      
    }
}  
document.getElementById("email").addEventListener("change",validateEmail); 
