<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatecpg.webquiz.Question"%>
<%@page import="br.com.fatecpg.webquiz.Quiz"%>
<%@page import="br.com.fatecpg.webquiz.Bd"%>
<%@page import="br.com.fatecpg.webquiz.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    boolean tested = false;
    double grade = 0.0;
    User u = null;
    
    for (int i = 0; i < Bd.getUser().size(); i++){
        if (Bd.getUser().get(i).getUsername() == session.getAttribute("loginUser")) {
            u = Bd.getUser().get(i);
        }
    }
    
    if (request.getParameter("tested") != null){
        tested = true;
        int count = 0;
        for(int i = 0; i < Quiz.getTest().size(); i++){
            Question q = Quiz.getTest().get(i);
            String userAnswer = request.getParameter(q.getQuestion());
            if(q.getAnswer().equals(userAnswer))
                count++;
        }
        grade = 100.0 * ((double) (count) / (double) (Quiz.getTest().size()));
        if (u != null){ Bd.addResult(u.getUsername(), String.valueOf(grade)); }
    }
    
    for(int i = 0; i < Quiz.getTest().size(); i++){   
        Question q = Quiz.getTest().get(i);
        q.setFlag(true);
        Quiz.getTest().set(i, q);
    }
    
    ArrayList<String[]> historico = Bd.getHistorico();
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
            <h4 class="font">Seja bem-vindo ao Power Quiz, <b><%= session.getAttribute("loginUser") %></b></h4><hr>
            
            <h4 class="font">Resultados mais recentes (todos):</h4><br>
            <%  if (historico.size() > 0){ 
                    int start = historico.size() - 1, end = (historico.size() > 10) ? (start - 9) : 0; %>
                    <div class="container">
                    <table class="table">
                        <thead><tr><th>Nome</th><th>Pontuação</th></tr></thead>
                        <tbody>
                        <% for (int i = start; i >= end; i--){ %>
                            <tr><td><%= historico.get(i)[0] %></td><td><%= historico.get(i)[1] %></td></tr>
                        <% } %>
                        </tbody>
                    </table>
                    </div>
            <%  } else { %>
                    <h4 class="font">Nada encontrado.</h4>
            <%  } %>
            <hr>
            <h4 class="font">Seus resultados mais recentes:</h4><br>
            <%  int count = 0;
                for (int i = historico.size() - 1; i >= 0; i--){
                    if (historico.get(i)[0] == session.getAttribute("loginUser")){ 
                        if (count == 0){ %>
                            <div class="container">
                            <table class="table">    
                            <thead><tr><th>Nome</th><th>Pontuação</th></tr></thead>
                            <tbody>
                        <% } %>
                        <tr><td><%= historico.get(i)[0] %></td><td><%= historico.get(i)[1] %></td></tr>
            <%			count++;
                    }
                    if (count >= 10){ i = 0; }
                } %>
                </tbody></table></div>
                <% if (count == 0){ %><h4 class="font">Nada encontrado.</h4><% }
            %>
            <hr>
            <h4 class="font">Top 10 melhores notas:</h4><br>
            <%	String[] temp = {};
                if (!historico.isEmpty()){ %>
                    <div class="container">
                    <table class="table">
                    <thead><tr><th>Nome</th><th>Pontuação</th></tr></thead>
                    <tbody>
                <%  ArrayList<String[]> ranking = Bd.getHistorico();
                    for (int i = 0; i < ranking.size(); i++){
                        for (int j = 1; j < ranking.size() - i; j++){
                            if (Double.parseDouble(ranking.get(j-1)[1]) < Double.parseDouble(ranking.get(j)[1])){
                                temp = ranking.get(j-1);
                                ranking.set(j-1, ranking.get(j));
                                ranking.set(j, temp);
                            }
                        }
                    }
                    int end = (ranking.size() > 10) ? 10 : ranking.size();
                    for (int i = 0; i < end; i++){ %>
                        <tr><td><%= ranking.get(i)[0] %></td><td><%= ranking.get(i)[1] %></td></tr>
            <%      }   %>
                    </tbody>
                    </table>
                    </div>
            <%  } else { %>
                    <h4 class="font">Nada encontrado.</h4>
            <%  } %>
            <hr>
            <%	int count2 = 0;
                double soma = 0.0;
                for (int i = 0; i < historico.size(); i++){
                    if (historico.get(i)[0] == session.getAttribute("userLogin")){
                        count2++;
                        soma += Double.parseDouble(historico.get(i)[1]);
                    }
                }
            %>
            <h4 class="font">Sua média de acertos é de: <b><%= (soma / (double) (count2)) %>%</b></h4><hr>
            <% if (tested == true){ %>
                <h4 class="font" >Sua nota no último teste foi de: <%= grade %>%</h4> <br>
                <h3 class="text-center"><a href="quiz.jsp"><button type="button" class="btn btn-primary">Realizar Teste</button></a></h3>
            <% } %>
            <% if(tested == false){ %>
            <h4 class="font">Para realizar o teste, clique aqui: </h4> <br>
            <h3 class="text-center"><a href="quiz.jsp"><button type="button" class="btn btn-primary">Realizar Teste</button></a></h3>
            <br>
            <% } %>
        </center>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
