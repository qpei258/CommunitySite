/*
 document.location.href="맵핑이름";
 */

function checkSignUp() {
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
	
	
}

function checkName(name) {
	var regExpName = /^[가-힣]*$/;
	
	if(!checkExistData(name, "이름을"))
		return false;
		
	if(!regExpName.test(name)) {
		alter("이름은 한글로 입력해주세요");
		return false;
	}
	return true;
	
}

function checkId(id) {
	var regExpId = /[a-zA-z0-9]*$/;
	
	if(!checkExistData(id, "아이디를"))
		return false;
}

function checkPasswd(passwd, passwdcheck) {
	var regExpPasswd = /[a-zA-z0-9]*$/;
	
	if(!checkExistData(passwd, "비밀번호를"))
		return false;
		
	if(!checkExistData(passwdcheck, "비밀번호 확인을"))
		return false;
}

function checkPhone(phone) {
	var regExpPhone = /^01(?:0|1|[6-9])-(?:\d{3}|\d{4})-\d{4}$/;
	
	if(!checkExistData(phone, "연락처를"))
		return false;
}

function checkEmail(email) {
	var regExpEmail = /^[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}$/;
	
	if(!checkExistData(email, "이메일을"))
		return false;
}

function checkExistData(value, data) {
	if(value =="") {
		alter(dataName + " 입력해주세요!");
		return false;
	}
	return true;
}