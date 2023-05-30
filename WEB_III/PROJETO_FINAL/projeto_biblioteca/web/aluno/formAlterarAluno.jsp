<%-- 
    Document   : formAlterarAluno
    Created on : 20 de mai. de 2023, 20:48:08
    Author     : marlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar aluno</title>
    </head>
    <body>

        <div class="header">
            <h1>Biblioteca</h1>
            <div>
                <ul class="nav nav-pills nav-fill">
                    <li class="nav-item">
                        <a class="nav-link active" href="../aluno/codeListarAluno.jsp">Alunos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../livro/codeListarLivro.jsp">Livros</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../exemplar/codeListarExemplar.jsp">Exemplares</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../emprestimo/codeListarEmprestimo.jsp">Empréstimo</a>
                    </li>
                </ul>
                </ul>
            </div>
        </div>

        <h1 class="form-title">Informações do aluno a ser alterado: </h1>

        <form action="codeAlterarAluno.jsp" method="POST">
            <div class="form-container">
                <div class="form-group">
                    <label>Código:</label>
                    <input class="form-control" type="text" name="id" value="<%= request.getParameter("id")%>" readonly>
                </div>

                <div class="form-group">
                    <label>Nome:</label>
                    <input class="form-control" type="text" name="nome" value="<%= request.getParameter("nome")%>">
                </div>

                <div class="form-group">
                    <label>Sobrenome:</label>
                    <input class="form-control" type="text" name="sobrenome" value="<%= request.getParameter("sobrenome")%>">
                </div>

                <div class="form-group">
                    <label>CPF:</label>
                    <input class="form-control" type="text" name="cpf" value="<%= request.getParameter("cpf")%>">
                </div>

                <div class="form-group">
                    <label>Telefone:</label>
                    <input class="form-control" type="text" name="telefone" value="<%= request.getParameter("telefone")%>">
                </div>

                <div class="form-group">
                    <label>Email:</label>
                    <input class="form-control" type="text" name="email" value="<%= request.getParameter("email")%>">
                </div>

                <div class="form-group">
                    <label>Curso: </label>
                    <input class="form-control" type="text" name="curso" value="<%= request.getParameter("curso")%>">
                </div>

                <div class="form-button-container">
                    <button class="btn btn-secondary" type="button" onclick="location.href = 'codeListarAluno.jsp'">Listar Alunos</button>
                    <button class="btn btn-primary" type="submit" onclick="location.href = 'codeAlterarAluno.jsp'">Realizar alteração</button>
                </div>
            </div>
        </form>
    </body>
</html>
