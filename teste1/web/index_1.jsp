<%-- 
    Document   : index_1
    Created on : 19/07/2022, 20:54:49
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exemplo Expression Language</title>
        
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>    
        
        <jsp:include page = "navbar.jsp" /> 
        <jsp:useBean id="bean1" class="modelos.Pessoa" />
        
        <div class="container">
                  
            <h1>Definindo os dados da Pessoa Diretamente na página</h1>
            
            <p>Dado que isso é feito via JSP, o usuário não será capaz de ver as próximas duas linhas de código.</p>     
            <jsp:setProperty name = "bean1" property = "nome" value="Nero romano"/>
            <jsp:setProperty name = "bean1" property = "idade" value="${bean1.idade * 2}"/>
            <jsp:setProperty name = "bean1" property = "email" value="souloko@aluno.ifpr.com.br"/>
            
            <h1>Obtendo Dados da Pessoa</h1>
            
            <pre>
            <label>Nome: </label> <jsp:getProperty name="bean1" property="nome" /> 
            <label>Idade: </label> <jsp:getProperty name="bean1" property="idade" /> 
            <label>Email: </label> <jsp:getProperty name="bean1" property="email" />
            </pre>
                       
            
            <button><a href="index.jsp">Voltar</a></button>
            <button><a href="index_2.jsp">Próximo</a></button>
        </div>     
        
        <jsp:include page = "footer.jsp" /> 
        
        <script src="js/jquery-3.5.1.min.js" ></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
