<%-- 
    Document   : index_2
    Created on : 19/07/2022, 20:55:04
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
        
       <div class="container">
                  
            <h1>Enviando novos dados da Pessoa para o Servidor: </h1>            
            
            <form action="PessoaServlet" method="post">
              <div class="form-group">
                <label for="nome">Nome</label>
                <input type="text" class="form-control" name="nome" id="nome">
              </div>
              <div class="form-group">
                <label for="idade">Idade</label>
                <input type="text" class="form-control" name="idade" id="idade">
              </div>
              <div class="form-group">
                <label for="email">Email</label>
                <input type="text" class="form-control" name="email" id="email">
              </div>

              <button type="submit" class="btn btn-default">Enviar</button>
            </form>                       
            
            
            <h1>Dados Cadastrados: </h1>
                        
            <pre>
            <label>Nome: </label> ${pessoa.nome}
            <label>Idade: </label> ${pessoa.idade}
            <label>Email: </label> ${pessoa.email}
            </pre>
                       
            
            <button><a href="index_1.jsp">Voltar</a></button>
        </div>       
        
        <jsp:include page = "footer.jsp" /> 
        
        <script src="js/jquery-3.5.1.min.js" ></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
