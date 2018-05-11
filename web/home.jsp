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
        
        <form method="post" action="SaveName.jsp">
         
         <center>
                Login:
                <table>
                    <tr>
                    <td><input type="text" name="username" id="username" class="form-control" required><br></td>
                    </tr>
                </table>
                <input type="submit" class="btn btn-primary" name="entrar" value="Entrar">
            </center>
        </form>
         
         
             
        </form>
        
        
    </body>
</html>