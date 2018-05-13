<%@page import="br.com.fatecpg.webquiz.Question"%>
<%@page import="br.com.fatecpg.webquiz.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Power Quiz</title>
        
    </head>
    
    
        
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        
        <!-- CONTEÚDO AQUI -->
        <center>
            
        <div class="card" style="width: 43rem;">    
        <div class="font">
        <div class="card-body" >
            
             
        <%
        int flagSaida=0; 
        while(flagSaida <= 9){ 
        int k = 0 + (int)(Math.random() * 10);
        Question q = Quiz.getTest().get(k);
        
        if(q.getFlag() == true){ %>
        
        <form action="NextPage.jsp">
            <label>Pergunta <%= k+1 %></label><br>
            <%= q.getQuestion() %><br>
            <% for(int j=0; j <q.getAlternatives().length;j++){ %>
            <input type="radio" name="<%= q.getQuestion() %>" value="<%= q.getAlternatives()[j] %>"/>
            <%= q.getAlternatives()[j]%> <br>
            <% } %>
            <br><hr>
             

        
    <% 
        q.setFlag(false);
        Quiz.getTest().set(k , q);
        flagSaida++;
    }}
       %> 
       
       </div>
       </div>
        </div>
      
             <hr>
             
             <h3 class="text-center"><button type="submit" name="tested" class="btn btn-primary">Enviar</button></h3>
             
    </form>
       
        </center>
        
        
        
        
        <%@include file="WEB-INF/jspf/footer.jspf" %>
        
    

