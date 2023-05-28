<%@page import="modeloDTO.LivroDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.LivroDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../estilos/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Livro</title>
    </head>
    <body>

        <div class="header">
            <h1>Biblioteca</h1>
            <div class="menu">
                <a href="../aluno/codeListarAluno.jsp">Alunos</a>
                <a href="../livro/codeListarLivro.jsp">Livros</a>
                <a href="../exemplar/codeListarExemplar.jsp">Exemplares</a>
                <a href="../emprestimo/codeListarEmprestimo.jsp">Empréstimos</a>
            </div>
        </div>
        <div class="container">
            <h1 class="form-title">Lista de livros</h1>
            <table class="table">
                <tr>
                    <th>Código</th>
                    <th>Titulo</th>
                    <th>Autores</th>
                    <th>Editora</th>
                    <th>Ano de lançamento</th>
                    <th>Gênero</th>
                    <th>ISBN</th>
                    <th>Inserir exemplar?</th>
                    <th>Listar exemplares?</th>
                    <th>Editar</th>
                    <th>Excluir</th>
                </tr>
                <%
                    try {
                        LivroDAO objLivroDAO = new LivroDAO();
                        ArrayList<LivroDTO> lista = objLivroDAO.ConsultarLivroPorTitulo(request.getParameter("titulo"));
                        for (int num = 0; num < lista.size(); num++) {
                %>
                <tr>
                    <td><%= lista.get(num).getId()%></td>
                    <td><%= lista.get(num).getTitulo()%></td>
                    <td><%= lista.get(num).getAutor()%></td>
                    <td><%= lista.get(num).getEditora()%></td>
                    <td><%= lista.get(num).getAnoPublicacao()%></td>
                    <td><%= lista.get(num).getGenero()%></td>
                    <td><%= lista.get(num).getIsbn()%></td>
                    <td>
                        <a href="../exemplar/formInserirExemplar.jsp?id_livro=<%= lista.get(num).getId()%>
                           &titulo_livro=<%= lista.get(num).getTitulo()%>">Inserir</a>
                    </td>
                    <td>
                        <a href="../exemplar/codeListarExemplarDoLivro.jsp?id_livro=<%= lista.get(num).getId()%>">Listar</a>
                    </td>
                    <td>
                        <a href="formAlterarLivro.jsp?id=<%= lista.get(num).getId()%>
                           &titulo=<%= lista.get(num).getTitulo()%>
                           &autor=<%= lista.get(num).getAutor()%>
                           &editora=<%= lista.get(num).getEditora()%>
                           &ano_publicacao=<%= lista.get(num).getAnoPublicacao()%>
                           &genero=<%= lista.get(num).getGenero()%>
                           &isbn=<%= lista.get(num).getIsbn()%>">Editar</a>
                    </td>
                    <td>
                        <a href="formExcluirLivro.jsp?id=<%= lista.get(num).getId()%>
                           &titulo=<%= lista.get(num).getTitulo()%>
                           &autor=<%= lista.get(num).getAutor()%>
                           &editora=<%= lista.get(num).getEditora()%>
                           &ano_publicacao=<%= lista.get(num).getAnoPublicacao()%>
                           &genero=<%= lista.get(num).getGenero()%>
                           &isbn=<%= lista.get(num).getIsbn()%>">Excluir</a>
                    </td>

                </tr>
                <%
                        }
                    } catch (Exception e) {
                        out.println(e);
                    }
                %>
            </table>

            <form action="formInserirLivro.jsp">
                <div class="form-button-container">
                    <button class="form-button" type="submit">Inserir novo livro</button>
                    <button class="form-button" type="button" onclick="location.href = 'codeListarLivro.jsp'">Listar livros</button>
                    <button class="form-button" type="button" onclick="location.href = 'formConsultarLivroPorTitulo.jsp'">Consultar Por Titulo</button>
                </div>
            </form>
        </div>
    </body>
</html>
