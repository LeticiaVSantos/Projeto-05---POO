<%@page import="br.com.fatecpg.webquiz.Question"%>
<%@page import="br.com.fatecpg.webquiz.Quiz"%>
<%@page import="br.com.fatecpg.webquiz.Bd"%>
<%@page import="br.com.fatecpg.webquiz.User"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<%
    boolean tested = false;
    
    double grade = 0.0;
    
    if(request.getParameter("tested") !=null){
        tested = true;
        
        int count = 0;
        
        for(int i=0; i<Quiz.getTest().size(); i++){
            
            Question q = Quiz.getTest().get(i);
            String userAnswer = request.getParameter(q.getQuestion());
            
            if(q.getAnswer().equals(userAnswer))
                count++;
        }
        
        grade = 100.0 * ((double) (count) / (double) (Quiz.getTest().size()));
    }
%>

<html>
    <head>
        
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Power Quiz</title>
        
    </head>
    
    <body>
        
        <%@include file="WEB-INF/jspf/navbar.jspf" %> 
        
    <center>
        
        <a href="home.jsp"><button type="button" class="btn btn-primary">Sair</button></a>
        
        <br><br>
        
        <h4 class="font">Seja bem-vindo ao Power Quiz, <b><%= session.getAttribute("loginUser") %></b></h4><br>
        
        <%if (tested == true){%>
            <h4 class="font">Sua nota no último teste foi de: <%= grade %>%</h4> <br>
        <%}%>
        
        <h4 class="font">Para realizar o teste, clique aqui: </h4> <br>
        
        <h3 class="text-center"><a href="quiz.jsp"><button type="button" class="btn btn-primary">Realizar Teste</button></a></h3>
        
        <br>
        
    </center>   
    
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        
    </body>
</html>
