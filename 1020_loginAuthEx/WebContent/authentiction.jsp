<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
<!--  추가   -->

<%   //자바 코드 기술
   //인증 가능 사용자 및 패스워드 목록 생성
   String[] users = {"park1234","kim1677","hong777"};
   String[] passwords = {"p456","k7788","h1234"};
   
   String id = request.getParameter("id");
   String pw = request.getParameter("pw");
   int found = 0;
   
   //인증 처리
   int i;
   for (i = 0 ; i < users.length ; i ++){
      if( users[i].equals(id) && passwords[i].equals(pw)){
         //세션 값 등록하기
         session.setAttribute("signedUser",id);
         response.sendRedirect("welcome.jsp");
         found = 1;
      }   
   }
   
   //해당 아이디 데이터가 없을때
   if (found == 0){
      out.print("<script>alert('아이디가 일치하지 않습니다.'); history.go(-1) ");
      //경고창을 띄우고 history내장객체를 이용해서 이전 페이지로 보낸다.
   }
   
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>