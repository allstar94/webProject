<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dynamicMultiForm 페이지</title>
<script>
	var count = 1; //전역변수
 	function addRow(){
	    var dynamicTable = document.getElementById('dynamic_table');
	    var newRow = dynamicTable.insertRow();
	    var cell1 = newRow.insertCell();
	    var cell2 = newRow.insertCell();
	     
	    cell1.innerHTML ='<input type="checkbox" name="checkboxObj"/>';
	    cell2.innerHTML ='<input type="file" name="fileupload" + count + size="70" onchange="checkSize(this)"/>';
		count++;   
	}
	
	function checkSize(input){
		if(input.files && input.files[0].size >(20*1024*1024)){
			alert("파일 사이즈가 20MB 초과되었습니다.")
			input.value = null;
		}
	}
	function deleteRow(){
		var table = document.getElementById('dynamic_table');
		var checkboxArray = document.getElementsByName('checkboxObj');
		
		for(var i=checkboxArray.length-1; i>=0; i--){
			var check = checkboxArray[i].checked;
			
			if(check){
				table.deleteRow(i);
			}
			
		}
	}
</script>
</head>
<body>
	<h2>동적 다중 파일 업로드 구현하기</h2>
<%--
파일을 업로드 할때 <form>태그에서 ENCTYPE="multipart/form-data"라는 애트리뷰트를 반드시 써야 한다.
그렇게 하지 않으면 웹 서버로 데이터를 넘길때 파일의 경로명만 전송되고 파일 내용이 전송되지 않기 때문이다.
그리고 이때 METHOD 애트리뷰트에는 'POST' 값을 지정해야 한다.
 --%>
	<form	name ="dynamicForm" method="post" enctype ="multipart/form-data"
					action="register.jsp">
		<table border="1" cellpadding="0" cellspacing="0">
			<tr>
				<td>작성자</td>
				<td><input type="text" name="name"/></td>
			</tr>
			<tr>
				<td>제 목</td>
				<td><input type="text" name="subject"/></td>
			</tr>
		</table>
		<br>
		<input type="button" value="행추가" onClick="addRow();"/>&nbsp;&nbsp;&nbsp;
		<input type="button" value="행삭제" onClick="deleteRow();"/><br><br>
		<!--&nbsp; -> 줄바꿈-->
		Check&nbsp;&nbsp;&nbsp;&nbsp;업로드할 파일 이름
		<br>
		<table id="dynamic_table" border="1" cellpadding="0" cellspacing="0"></table>
			<h4><font color="red">업로드할 파일은 최대 20MB 까지 업로드가능합니다</font></h4>
			<input type="submit" value="파일올리기"/>
	</form>
</body>
</html>