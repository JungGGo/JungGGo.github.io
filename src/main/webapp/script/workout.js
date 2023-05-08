document.addEventListener("DOMContentLoaded", function() {
	const today = new Date();
	const yyyy = today.getFullYear();
	const mm = String(today.getMonth() + 1).padStart(2, '0');
	const dd = String(today.getDate()).padStart(2, '0');
	const dateString = `${yyyy}-${mm}-${dd}`;
	document.getElementById("start_date").value = dateString;
});

function changeTodoOptions() {
	const selectedWorkout = document.getElementById("workout").value;
	const partOptions = document.getElementById("part");

	// 기존에 있던 옵션 삭제
	while (partOptions.options.length > 0) {
		partOptions.remove(0);
	}
	// 선택된 운동에 맞는 옵션 추가
	if (selectedWorkout === "웨이트 트레이닝") { // 웨이트 트레이닝
		document.getElementById("exercise-part").style.display = "table-row";
		partOptions.add(new Option("운동 부위를 선택하세요", "default"));
		partOptions.add(new Option("이두, 삼두", "arms"));
		partOptions.add(new Option("가슴", "chest"));
		partOptions.add(new Option("등", "back"));
		partOptions.add(new Option("어깨", "shoulder"));
		partOptions.add(new Option("하체", "legs"));
	} else {
		document.getElementById("exercise-part").style.display = "none";
	}

	if (selectedWorkout === "") {
		document.getElementById("time").style.display = "none";
		document.getElementById("contents").style.display = "none";
	} else {
		document.getElementById("time").style.display = "table-row";
		document.getElementById("contents").style.display = "table-row";
	}
}

document.getElementById("workout").addEventListener("change", changeTodoOptions);

var exerciseCount = 0;

function addDirectInput() {
    var num = document.querySelectorAll('#new-contents input[type="text"]').length + 1;
    if (num > 5) {
        alert("5개 이상 추가할 수 없습니다.");
        return;
    }
    var newDirect = document.createElement('tr');
    newDirect.innerHTML = `
        <th>${num}</th>
        <td>
            <input type="text" id="direct${num}" name="content${num}">
            <input type="button" value="del" onclick="removeDirectInput(this)">
        </td>
    `;
    document.getElementById('new-contents').appendChild(newDirect);
}

function removeDirectInput(btn) {
	var row = btn.parentNode.parentNode;
	row.parentNode.removeChild(row);
}

function showCustomTimeInput() {
  const selectedOption = document.getElementById("times").value;
  if (selectedOption === "") {
    document.getElementById("custom-time").style.display = "table-row";
  } else {
    document.getElementById("custom-time").style.display = "none";
  }
}

function Check(){
	const workoutSelect = document.getElementById('workout');
	if (workoutSelect.value === '') {
		alert("운동 스타일을 선택해주세요.");
		return false;
	}
	
	if (document.getElementsByName('content1').length == 0) {
		alert("운동 내용을 추가하세요.");
		return false;
	}
	return true;
}