/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
function modalWin() {
    if (window.showModalDialog) {
        window.showModalDialog("xpopupex.htm","name","dialogWidth:255px;dialogHeight:250px");
    } else {
        window.open('translateIt.do','name','height=255,width=250,location=no,toolbar=no,directories=no,status=no,continued from previous linemenubar=no,scrollbars=no,resizable=no ,modal=yes');
    }
} 

function validateLoginForm() {
    var userid = document.loginform.userid.value;
    var password = document.loginform.password.value;
    resetLoginForm();
    if(!isStringValid(userid)) {
        document.getElementById("error").style.display = "inline";
        return false;
    }else if(!isStringValid(password)) {
        document.getElementById("error").style.display = "inline";
        return false;
    }
    return true;
}

function resetLoginForm() {
    document.getElementById("error").style.display = "none";
    if(document.getElementById('jerror')!=null) {
        document.getElementById("jerror").style.display = "none";
    }
}

/*
     * isStringValid() method is used to check that the given string is not null and
     * it's length is in a given range.
     * If given string is not null and it's length is in a given range return true otherwise false.
     * There are three parameters to this function namely str, minLength and maxLength.
     * This function returns a boolean value depending on the validity of the string.
*/
function isStringInRange(str, minLength, maxLength) {
    var result = false;
    //str = trim(str);
    if(isStringValid(str)) {
        if(str.length >= minLength && str.length <= maxLength) {
            result = true;
        }
        
    }
    return result;
}


/*
     * isStringValid() method is used to check that the given string is not null and
     * it's length is in a given range.
     * If given string is not null and it's length is in a given range return true otherwise false.
     * It has one parameter, a string that is to be checked for validity.
     * it returns true or false depending on the validity of the string.
*/
function isStringValid(str) {
    var result = true;
    //str = trim(str);
    if(str == "") {
        result = false;
    }
    return result;
}

function trim(s)
{
    var l=0;var r=s.length -1;
    while(l < s.length && s[l] == ' ')
    {l++;}
    while(r > l && s[r] == ' ')
    {r-=1;}
    return s.substring(l, r+1);
}

function emailValidator(email){
    var result = false;
    var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
    if(email.match(emailExp)){
        result = true;
    }
    return result;
}

function isAlphabet(str){
    var result = false;
    var alphaExp = /^[a-zA-Z]+$/;
    if(str.match(alphaExp)){
        result = true;
    }
    return result;
}

function validateName(str) {
    var result = false;
    var dispNameExp = /^[a-zA-Z][a-zA-Z ]+[a-zA-Z]+$/;
    if(str.match(dispNameExp)){
        var previous = str.charAt(0);
        var current;
        for(i=1;i<str.length;i++) {
            current = str.charAt(i);
            if(previous == current && previous == ' ') {
                return false;
            }
            previous = current;
        }
        result = true;
    }
    return result;
}


function validateDisplayName(str) {
    var result = false;
    var dispNameExp = /^[a-zA-Z][a-zA-Z ]+[a-zA-Z]+$/;
    if(str.match(dispNameExp)){
        var previous = str.charAt(0);
        var current;
        for(i=1;i<str.length;i++) {
            current = str.charAt(i);
            if(previous == current && previous == ' ') {
                return false;
            }
            previous = current;
        }
        result = true;
    }
    return result;
}

function validateUserName(str) {
    var result = false;
    var dispNameExp = /^[a-zA-Z][a-zA-Z\. ]+[a-zA-Z]+$/;
    if(str.match(dispNameExp)){
        var previous = str.charAt(0);
        var current;
        for(i=1;i<str.length;i++) {
            current = str.charAt(i);
            if(previous == current && previous == ' ') {
                return false;
            }
            previous = current;
        }
        result = true;
    }
    return result;
}

function validateUserId(str) {
    var result = false;
    var userIdExp = /^[a-zA-Z][a-zA-Z0-9\.\_]+[a-zA-Z0-9]+$/;
    if(str.match(userIdExp)){
        var previous = str.charAt(0);
        var current;
        for(i=1;i<str.length;i++) {
            current = str.charAt(i);
            if(previous == current && (previous == '.' || previous == '_')) {
                return false;
            } else if(previous == '.' && current == '_') {
                return false;
            } else if(previous == '_' && current == '.') {
                return false;
            }
            previous = current;
        }
        result = true;
    }
    return result;
}

function validateQualification(str){
    var result = false;
    var alphaExp = /^[a-zA-Z0-9][a-zA-Z0-9\. ]+$/;
    if(str.match(alphaExp)){
        var previous = str.charAt(0);
        var current;
        for(i=1;i<str.length;i++) {
            current = str.charAt(i);
            if(previous == '.' && current == '.') {
                return false;
            }
            previous = current;
        }
        result = true;
    }
    return result;
}

function validateRegistrationForm() {
    var result = true;
    //getting all the form values
    var firstName = document.regform.firstName.value;
    var lastName = document.regform.lastName.value;
    var dispName = document.regform.dispName.value;
    var userId = document.regform.userId.value;
    var password = document.regform.upassword.value;
    var cpassword = document.regform.cpassword.value;
    var email = document.regform.email.value;
    var mobile = document.regform.mobile.value;
    var qualification = document.regform.qualification.value;
    var profile = document.regform.profile.value;
    var langId = document.regform.langId.value;
    var topicId = document.regform.topicId.value;
    var role = document.regform.role.value;
    var captchaAnswer = document.regform.captchaText.value;
    //trim all the form values
    //firstName = trim(firstName);
    //lastName = trim(lastName);
    //dispName = trim(dispName);
    //userId = trim(userId);
    //password = trim(password);
    //cpassword = trim(cpassword);
    //email = trim(email);
    //mobile = trim(mobile);
    //qualification = trim(qualification);
    //profile = trim(profile);
    //captchaAnswer = trim(captchaAnswer);
    //clearing all the previous errors
    resetRegistrarationForm();

    //validating values
    
    if(!isStringInRange(firstName,3,30) || !validateName(firstName)) {
        document.getElementById('firstNameError').style.display = "inline";
        result = false;
    }
    if(!isStringInRange(lastName,3,30) || !validateName(lastName)) {
        document.getElementById('lastNameError').style.display = "inline";
        result = false;
    }
    if(!isStringInRange(dispName,5,30) || !validateDisplayName(dispName)) {
         document.getElementById('dispNameError').style.display = "inline";
         result = false;
    }
    if(!isStringInRange(userId,5,16) || !validateUserId(userId)) {
         document.getElementById('userIdError').style.display = "inline";
         result = false;
    }
    if(!isStringInRange(password,6,16)) {
         document.getElementById('upasswordError').style.display = "inline";
         result = false;
    }
    if(!isStringInRange(cpassword,6,16)) {
        document.getElementById('cpasswordError').style.display = "inline";
        result = false;
    }
    if(isStringInRange(password,6,16) && isStringInRange(cpassword,6,16))
    if(password != cpassword) {
         document.getElementById('npasswordError').style.display = "inline";
         result = false;
    }
    if(!isStringValid(email)) {
         document.getElementById('emailError').style.display = "inline";
         result = false;
    }else if(!emailValidator(email)) {
         document.getElementById('iemailError').style.display = "inline";
         result = false;
    }
    if(!isStringValid(mobile)) {
         document.getElementById('mobileError').style.display = "inline";
         result = false;
    }
    else {
         if(isNaN(mobile)) {
             document.getElementById('mobileError').style.display = "inline";
             result = false;
         }else if(mobile.length != 10) {
             document.getElementById('mobileError').style.display = "inline";
             result = false;
         }
    }
    if(langId=="-1") {
             document.getElementById('langIdError').style.display = "inline";
             result = false;
    }
    if(topicId=="-1") {
             document.getElementById('topicIdError').style.display = "inline";
             result = false;
    }
    if(role=="-1") {
            document.getElementById('roleError').style.display = "inline";
            result = false;
    }
    if(!isStringInRange(qualification,2,30) || !validateQualification(qualification)) {
             document.getElementById('qualificationError').style.display = "inline";
             result = false;
    }
    if(!isStringInRange(profile,30,300)) {
             document.getElementById('profileError').style.display = "inline";
             result = false;
    }
    if(!isStringInRange(captchaAnswer,7,7)) {
            document.getElementById('captchaError').style.display = "inline";
             result = false;
    }
    return result;
}
            
function resetRegistrarationForm() {
    //clearing all the previous errors
    document.getElementById('firstNameError').style.display = "none";
    document.getElementById('lastNameError').style.display = "none";
    document.getElementById('dispNameError').style.display = "none";
    document.getElementById('userIdError').style.display = "none";
    document.getElementById('notAvailable').style.dispaly = "none";
    document.getElementById('available').style.display = "none";
    document.getElementById('upasswordError').style.display = "none";
    document.getElementById('cpasswordError').style.display = "none";
    document.getElementById('npasswordError').style.display = "none";
    document.getElementById('emailError').style.display = "none";
    document.getElementById('iemailError').style.display = "none";
    document.getElementById('mobileError').style.display = "none";
    document.getElementById('qualificationError').style.display = "none";
    document.getElementById('profileError').style.display = "none";
    document.getElementById('langIdError').style.display = "none";
    document.getElementById('topicIdError').style.display = "none";
    document.getElementById('roleError').style.display = "none";
    document.getElementById('captchaError').style.display = "none";
}

function validateUserRegistrationForm() {
    var result = true;
    //getting all the form values
    var firstName = document.regform.firstName.value;
    var lastName = document.regform.lastName.value;
    var dispName = document.regform.dispName.value;
    var userId = document.regform.userId.value;
    var password = document.regform.upassword.value;
    var cpassword = document.regform.cpassword.value;
    var email = document.regform.email.value;
    var mobile = document.regform.mobile.value;
    var qualification = document.regform.qualification.value;
    var profile = document.regform.profile.value;
    var captchaAnswer = document.regform.captchaText.value;
    //trim all the form values
    //firstName = trim(firstName);
    //lastName = trim(lastName);
    //dispName = trim(dispName);
    //userId = trim(userId);
    //password = trim(password);
    //cpassword = trim(cpassword);
    //email = trim(email);
    //qualification = trim(qualification);
    //profile = trim(profile);
    //captchaAnswer = trim(captchaAnswer);
    //clearing all the previous errors
    resetUserRegistrarationForm();

    //validating values

    if(!isStringInRange(firstName,3,30) || !validateName(firstName)) {
        document.getElementById('firstNameError').style.display = "inline";
        result = false;
    }
    if(!isStringInRange(lastName,3,30) || !validateName(lastName)) {
        document.getElementById('lastNameError').style.display = "inline";
        result = false;
    }
    if(!isStringInRange(dispName,5,30) || !validateDisplayName(dispName)) {
         document.getElementById('dispNameError').style.display = "inline";
         result = false;
    }
    if(!isStringInRange(userId,5,16) || !validateUserId(userId)) {
         document.getElementById('userIdError').style.display = "inline";
         result = false;
    }
    if(!isStringInRange(password,6,16)) {
         document.getElementById('upasswordError').style.display = "inline";
         result = false;
    }
    if(!isStringInRange(cpassword,6,16)) {
        document.getElementById('cpasswordError').style.display = "inline";
        result = false;
    }
    if(isStringInRange(password,6,16) && isStringInRange(cpassword,6,16))
    if(password != cpassword) {
         document.getElementById('npasswordError').style.display = "inline";
         result = false;
    }
    if(!isStringValid(email)) {
         document.getElementById('emailError').style.display = "inline";
         result = false;
    }else if(!emailValidator(email)) {
         document.getElementById('iemailError').style.display = "inline";
         result = false;
    }
    if(isStringValid(mobile)) {
         if(isNaN(mobile)) {
             document.getElementById('mobileError').style.display = "inline";
             result = false;
         }else if(mobile.length != 10) {
             document.getElementById('mobileError').style.display = "inline";
             result = false;
         }
    }
    if(!isStringInRange(qualification,2,30) || !validateQualification(qualification)) {
             document.getElementById('qualificationError').style.display = "inline";
             result = false;
    }
    if(!isStringInRange(profile,30,300)) {
             document.getElementById('profileError').style.display = "inline";
             result = false;
    }
    if(!isStringInRange(captchaAnswer,7,7)) {
            document.getElementById('captchaError').style.display = "inline";
             result = false;
    }
    return result;
}

function resetUserRegistrarationForm() {
    //clearing all the previous errors
    document.getElementById('firstNameError').style.display = "none";
    document.getElementById('lastNameError').style.display = "none";
    document.getElementById('dispNameError').style.display = "none";
    document.getElementById('userIdError').style.display = "none";
    document.getElementById('notAvailable').style.dispaly = "none";
    document.getElementById('available').style.display = "none";
    document.getElementById('upasswordError').style.display = "none";
    document.getElementById('cpasswordError').style.display = "none";
    document.getElementById('npasswordError').style.display = "none";
    document.getElementById('emailError').style.display = "none";
    document.getElementById('iemailError').style.display = "none";
    document.getElementById('mobileError').style.display = "none";
    document.getElementById('qualificationError').style.display = "none";
    document.getElementById('profileError').style.display = "none";
    document.getElementById('captchaError').style.display = "none";
}

function validateAccountRecoveryForm() {
    var result = true;
    //getting all the form values
    var email = document.accountrecoveryform.email.value;
    var captchaAnswer = document.accountrecoveryform.captchaText.value;
    //trim all the form values
    //email = trim(email);
    //captchaAnswer = trim(captchaAnswer);
    //clearing all the previous errors
    resetAccountRecoveryForm();

    //validating values
    if(!isStringValid(email)) {
         document.getElementById('emailError').style.display = "inline";
         result = false;
    }else if(!emailValidator(email)) {
         document.getElementById('iemailError').style.display = "inline";
         result = false;
    }
    if(!isStringInRange(captchaAnswer,7,7)) {
            document.getElementById('captchaError').style.display = "inline";
             result = false;
    }
    return result;
}

function resetAccountRecoveryForm() {
    //clearing all the previous errors
    document.getElementById('emailError').style.display = "none";
    document.getElementById('iemailError').style.display = "none";
    document.getElementById('captchaError').style.display = "none";
}

function validateFeedbackForm() {
    var result = true;
    //getting form values
    var topic = document.feedbackform.topic.value;
    var name = document.feedbackform.name.value;
    var email = document.feedbackform.email.value;
    var userId = document.feedbackform.userId.value;
    var pageUrl = document.feedbackform.pageUrl.value;
    var comment = document.feedbackform.comment.value;
    var captchaAnswer = document.feedbackform.captchaText.value;
    //trim all the form values
    //name = trim(name);
    //email = trim(email);
    //userId = trim(userId);
    //pageUrl = trim(pageUrl);
    //comment = trim(comment);
    //captchaAnswer = trim(captchaAnswer);
    //clearing previous errors
    resetFeedbackForm();

    //validating values
    if(topic=="-1") {
             document.getElementById('topicError').style.display = "inline";
             result = false;
    }
    if(!isStringInRange(name,5,30) || !validateUserName(name)) {
        document.getElementById('nameError').style.display = "inline";
        result = false;
    }
    if(!isStringInRange(userId,5,16) || !validateUserId(userId)) {
         document.getElementById('userIdError').style.display = "inline";
         result = false;
    }
    if(!isStringValid(email)) {
         document.getElementById('emailError').style.display = "inline";
         result = false;
    }else if(!emailValidator(email)) {
         document.getElementById('iemailError').style.display = "inline";
         result = false;
    }
    if(!isStringInRange(comment,10,1000)) {
             document.getElementById('commentError').style.display = "inline";
             result = false;
    }
    if(!isStringInRange(captchaAnswer,7,7)) {
            document.getElementById('captchaError').style.display = "inline";
             result = false;
    }
    return result;
}

function resetFeedbackForm() {
    //clearing all the previous errors
    document.getElementById('topicError').style.display = "none";
    document.getElementById('nameError').style.display = "none";
    document.getElementById('userIdError').style.display = "none";
    document.getElementById('emailError').style.display = "none";
    document.getElementById('iemailError').style.display = "none";
    document.getElementById('commentError').style.display = "none";
    document.getElementById('captchaError').style.display = "none";
    if(document.getElementById('jcaptchaError')!=null) {
        document.getElementById("jcaptchaError").style.display = "none";
    }
    if(document.getElementById('jtopicError')!=null) {
        document.getElementById("jtopicError").style.display = "none";
    }
    if(document.getElementById('jnameError')!=null) {
        document.getElementById("jnameError").style.display = "none";
    }
    if(document.getElementById('juserIdError')!=null) {
        document.getElementById("juserIdError").style.display = "none";
    }
    if(document.getElementById('jiemailError')!=null) {
        document.getElementById("jiemailError").style.display = "none";
    }
    if(document.getElementById('jcommentError')!=null) {
        document.getElementById("jcommentError").style.display = "none";
    }
}

function validateProfileUpdateForm() {
    var result = true;
    //getting all the form values
    var firstName = document.profileform.firstName.value;
    var lastName = document.profileform.lastName.value;
    var dispName = document.profileform.dispName.value;
    var email = document.profileform.email.value;
    var qualification = document.profileform.qualification.value;
    var profile = document.profileform.profile.value;
    //trim all the form values
    //firstName = trim(firstName);
    //lastName = trim(lastName);
    //dispName = trim(dispName);
    //email = trim(email);
    //qualification = trim(qualification);
    //profile = trim(profile);
    //clearing all the previous errors
    resetProfileUpdateForm();

    //validating values

    if(!isStringInRange(firstName,3,30) || !validateName(firstName)) {
        document.getElementById('firstNameError').style.display = "inline";
        result = false;
    }
    if(!isStringInRange(lastName,3,30) || !validateName(lastName)) {
        document.getElementById('lastNameError').style.display = "inline";
        result = false;
    }
    if(!isStringInRange(dispName,5,30) || !validateDisplayName(dispName)) {
         document.getElementById('dispNameError').style.display = "inline";
         result = false;
    }
    if(!isStringValid(email)) {
         document.getElementById('emailError').style.display = "inline";
         result = false;
    }else if(!emailValidator(email)) {
         document.getElementById('iemailError').style.display = "inline";
         result = false;
    }
    if(!isStringInRange(qualification,2,30) || !validateQualification(qualification)) {
         document.getElementById('qualificationError').style.display = "inline";
         result = false;
    }
    if(!isStringInRange(profile,30,300)) {
         document.getElementById('profileError').style.display = "inline";
         result = false;
    }
    return result;
}

function resetProfileUpdateForm() {
    //clearing all the previous errors
    document.getElementById('firstNameError').style.display = "none";
    document.getElementById('lastNameError').style.display = "none";
    document.getElementById('dispNameError').style.display = "none";
    document.getElementById('emailError').style.display = "none";
    document.getElementById('iemailError').style.display = "none";
    document.getElementById('qualificationError').style.display = "none";
    document.getElementById('profileError').style.display = "none";
}

function validateUpdatePasswordForm() {
    var result = true;
    //getting all the form values
    var password = document.changepasswordform.upassword.value;
    var cpassword = document.changepasswordform.cpassword.value;
    var currentpassword = document.changepasswordform.currentpassword.value;
    //trim all the form values
    //password = trim(password);
    //cpassword = trim(cpassword);
    //currentpassword = trim(currentpassword);
    //validate form values
    if(!isStringInRange(currentpassword,6,16)) {
        document.getElementById('currentpasswordError').style.display = "inline";
         result = false;
    }
    if(!isStringInRange(password,6,16)) {
         document.getElementById('upasswordError').style.display = "inline";
         result = false;
    }
    if(!isStringInRange(cpassword,6,16)) {
        document.getElementById('cpasswordError').style.display = "inline";
        result = false;
    }
    if(isStringInRange(password,6,16) && isStringInRange(cpassword,6,16))
    if(password != cpassword) {
         document.getElementById('npasswordError').style.display = "inline";
         result = false;
    }
    return result;
}
function resetUpdatePasswordForm() {

    document.getElementById('upasswordError').style.display = "none";
    document.getElementById('cpasswordError').style.display = "none";
    document.getElementById('npasswordError').style.display = "none";
    document.getElementById('currentpasswordError').style.display="none";
}
var lastId;
function showRequiredInfo(id) {
    lastId = id;
    document.getElementById(id).style.display = "inline";
}
function hideRequiredInfo() {
    document.getElementById(lastId).style.display = "none";
}
