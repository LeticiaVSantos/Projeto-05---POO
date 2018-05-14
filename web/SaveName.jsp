<%@page import="br.com.fatecpg.webquiz.Bd"%>
<%@page import="br.com.fatecpg.webquiz.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Registrar o login do usuário -->
<%
    String login = request.getParameter("username");
    session.setAttribute("loginUser", login);

    if(request.getParameter("entrar") != null){
        User u = new User();
        u.setUsername(request.getParameter("username"));
        Bd.getUser().add(u);
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <!-- Direciona o usuário para a página NextPage, onde pode realizar o quiz --> 
        <script>document.location.href='NextPage.jsp';</script>
    </body>
</html>
