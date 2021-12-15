/*
 document.location.href="";
var check = document.getElementById("button");
check.addEventListener("click", checkSignUp());
 */



document.getElementById("button").onsubmit = function() {
	alter("유효성 검증");
	var form = document.signUpForm;
	var name = form.name.value;
	var id = form.id.value;
	var passwd = form.passwd.value;
	var passwdcheck = form.passwdcheck.value;
	var phone1 = form.phone1.value;
	var phone2 = form.phone2.value;
	var phone3 = form.phone3.value;
	var phone = phone1 + "-" + phone2 + "-" + phone3;
	var email1 = form.email1.value;
	var email2 = form.email2.value;
	var email = email1 + "@" + email2;
	
	if(!checkName(name) || !checkId(id) || !checkPasswd(passwd, passwdcheck) || !checkPhone(phone) || !checkEmail(email))
		return false;
		
	form.action = 'SingUp.do';
	form.mothod = 'post';
	form.submit();

}

function checkName(name) {
	var regExpName = /^[가-힣]*$/;
	
	if(!checkExistData(name, "이름을"))
		return false;
		
	if(!regExpName.test(name)) {
		alter("이름이 올바르지 않습니다.");
		return false;
	}
	return true;
	
}

function checkId(id) {
	var regExpId = /[a-zA-z0-9]*$/;
	
	if(!checkExistData(id, "아이디를"))
		return false;
		
	if(!regExpId.test(id)){
		alter("아이디는 영문 대소문자와 숫자로 입력해야합니다.");
		document.signUpForm.id.value = "";
		document.signUpForm.id.focus();
		return false;
	}
	return true;
}

function checkPasswd(passwd, passwdcheck) {
	var regExpPasswd = /[a-zA-z0-9]*$/;
	
	if(!checkExistData(passwd, "비밀번호를"))
		return false;
		
	if(!checkExistData(passwdcheck, "비밀번호 확인을"))
		return false;
	
	if(!regExpPasswd.test(passwd)){
		alter("비밀번호는 영문 대소문자와 숫자로 입력해야합니다.");
		document.signUpForm.passwd.value = "";
		document.signUpForm.passwd.focus();
		return false;
	}
	
	if(passwd != passwdcheck){
		alter("비밀번호가 같지 않습니다.");
		document.signUpForm.passwd.value = "";
		document.signUpForm.passwdcheck.value = "";
		document.signUpForm.passwd.focus();
		return false;
	}
	
	return true;
}

function checkPhone(phone) {
	var regExpPhone = /^01(?:0|1|[6-9])-(?:\d{3}|\d{4})-\d{4}$/;
	
	if(!checkExistData(phone, "연락처를"))
		return false;
		
	if(!regExpPhone.test(phone)){
		alter("연락처가 올바르지 않습니다.");
		document.signUpForm.phone2.value = "";
		document.signUpForm.phone3.value = "";
		document.signUpForm.phone1.focus();
		return false;
	}	
		
	return true;
}

function checkEmail(email) {
	var regExpEmail = /^[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}$/;
	
	if(!checkExistData(email, "이메일을"))
		return false;
		
	if(!regExpEmail.test(email)){
		alter("이메일이 올바르지 않습니다.");
		document.signUpForm.email1.value = "";
		document.signUpForm.email2.value = "";
		document.signUpForm.email1.focus();
		return false;
	}
	
	return true;
}

function checkExistData(value, data) {
	if(value =="") {
		alter(dataName + " 입력해주세요!");
		return false;
	}
	return true;
}
