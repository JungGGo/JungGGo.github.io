/**
 * 
 */

function loginCheck() {
	if (document.frm.id.value.length == 0) {
		alert("아이디를 입력하세요");
		frm.id.focus();
		return false;
	}
	if (document.frm.pass.value.length == 0) {
		alert("비밀번호를 입력하세요");
		frm.pass.focus();
		return false;
	}
	return true;
}

function joinCheck() {
	if (document.frm.id.value.length == 0) {
		alert("아이디를 입력하세요");
		frm.id.focus();
		return false;
	}

	if (message == "") {
		alert("아이디 중복확인을 해주세요.");
		return false;
	} 
	if (message == "아이디를 입력해주세요.") {
		alert("아이디 중복확인을 해주세요.");
		return false;
	} 
	if (message == "중복된 아이디입니다.") {
		alert("아이디 중복확인을 해주세요.");
		return false;
	} 
	
	if (document.frm.pass.value.length == 0) {
		alert("비밀번호를 입력하세요");
		frm.pass.focus();
		return false;
	}
	if (document.frm.pass.value.length < 8) {
		alert("비밀번호는 8자 이상 입력하세요");
		frm.pass.focus();
		return false;
	}
	if (!/^(?=.*[A-Z\a-z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])/.test(document.frm.pass.value)) {
		alert("비밀번호는 영문, 숫자, 특수문자(!@#$%^&)가 각각 최소 1개 이상 포함되어야 합니다.");
		frm.pass.focus();
		return false;
	}
	if (document.frm.pass_chk.value.length == 0) {
		alert("비밀번호를 재입력하세요");
		frm.pass_chk.focus();
		return false;
	}
	if (document.frm.pass.value != document.frm.pass_chk.value) {
		alert("비밀번호가 일치하지 않습니다");
		frm.pass.focus();
		return false;
	}
	if (document.frm.pass.value != document.frm.pass_chk.value) {
		alert("비밀번호가 일치하지않습니다.");
		frm.pass.focus();
		return false;
	}
	if (document.frm.name.value.length == 0) {
		alert("이름을 입력하세요");
		frm.name.focus();
		return false;
	}
	alert("회원가입 성공!");
	return true;
}

function openWindow(url) {
	window.open(url, 'window', 'width=400, height=400');
}

function open_Window(url) {
	window.open(url, 'product', 'width=900, height=750');
}


