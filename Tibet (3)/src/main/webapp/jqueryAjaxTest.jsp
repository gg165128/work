<!DOCTYPE HTML>
<html>
<head>
<meta charset="euc-kr">
<title>HTML</title>
<style type="text/css">
body {background-color: #e7e7e7;}
div {margin : 10px;}
</style>
<script type="text/javascript">
window.onload = function() {
    document.getElementById('btn').onclick = function() {
        document.getElementById('frm').submit();
        return false;
    };
};
</script>
</head>
<body>
	<form action="action.jsp" id="frm">
		<div>아이디 : <br/><input type="text" name="id" value=""></div> 
		<div>비밀번호: <br/><input type="text" name="pwd" value=""></div> 
		<div><input type="button" id="btn" value="전송"></div>
	</form>
</body>
</html>