<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Power Quiz - Home</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf" %>
        
        <br><br>
        
        <form method="post" action="SaveName.jsp">
         
         <center>
             
             <h4 class="font">Entre com seu nome para acessar o Quiz</h4> 
             <br><br>
             
             <div class="card" style="width: 30rem;">
             <div class="card-body">
             
             <h5 class="font" class="card-title">Nome:</h5>
                
                <table>
                    <tr>
                    <td><input type="text" name="username" id="username" class="form-control" required><br></td>
                    </tr>
                </table>
                <input type="submit" class="btn btn-primary" name="entrar" value="Entrar">
             </div>
             </div>
            </center>
        </form>
         
         
             
        </form>
        
        
    </body>
</html>