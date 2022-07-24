<%-- 
    Document   : index
    Created on : 19/07/2022, 20:14:20
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>tela 1</title>
        
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>    
        
        <jsp:include page = "navbar.jsp" /> 
        <jsp:useBean id="bean1" class="modelos.Pessoa" />
        
        <div class="container">
                                    
            <h1>Obtendo Dados da Pessoa</h1>
            
            <pre>
            <label>Nome: </label> ${bean1.nome}
            <label>Idade: </label> ${bean1.idade}
            <label>Email: </label> ${bean1.email}
            </pre>
            
            <button><a href="index_1.jsp">Próximo</a></button>
        </div>        
                        
        <jsp:include page = "footer.jsp" /> 
        
        <script src="js/jquery-3.5.1.min.js" ></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
