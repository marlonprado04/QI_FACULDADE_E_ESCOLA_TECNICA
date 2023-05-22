<%-- 
    Document   : codeExcluirAluno
    Created on : 20 de mai. de 2023, 21:41:33
    Author     : marlo
--%>

<%@page import="modeloDAO.AlunoDAO"%>
<%@page import="modeloDTO.AlunoDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../estilos/estiloAlunoPages.css">

        <title>JSP Page</title>
    </head>
    <body>
        <% try {
                // Criando objeto da classe ALUNODTO para fazer a transferência de informações
                // do formulário para a classe aluno
                AlunoDTO objAlunoDTO = new AlunoDTO();

                // Passando o id do formulário através do comando request.getparameter
                // para excluir apenas o aluno com o id informado
                objAlunoDTO.setId(Integer.parseInt(request.getParameter("id").trim()));

                // Criando objeto da classe ALUNODAO para fazer a operação de delete
                // no banco de dados a partir da classe ALUNODTO
                AlunoDAO objAlunoDAO = new AlunoDAO();

                // Cadastrando aluno a partir da função CADASTRARALUNO dentro classe ALINODAO
                // isso tudo pegando os parâmetros da classe ALUNODTO
                objAlunoDAO.ExcluirAluno(objAlunoDTO);

                // Criando container para os botões de navegação
                out.println("<div class='code-button-container'>");

                //Printando na tela a informação de que o aluno foi cadastrado com sucesso
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Aluno excluído com sucesso!</p>");

                // Botão de voltar ao formulário de insersão
                out.println("<div class='button-container'>");
                out.println("<a class='button' href='formInserirAluno.jsp'>Ir para o formulário</a>");
                out.println("</div>");
                out.println("</div>");

                // Botão de voltar para listagem
                out.println("<div class='button-container'>");
                out.println("<a class='button' href='codeListarAluno.jsp'>Ir para lista</a>");
                out.println("</div>");
                out.println("</div>");

                out.println("</div>");

            } catch (Exception e) {

                AlunoDTO objAlunoDTO = new AlunoDTO();
                objAlunoDTO.setId(Integer.parseInt(request.getParameter("id").trim()));

                // Mensagem de aluno não excluído corretamente
                out.println("<div class='message-container'>");
                out.println("<p class='message-text'>Aluno não excluído devido a algum erro!</p>");

                // Botão de voltar ao formulário de insersão
                out.println("<div class='button-container'>");
                out.println("<a class='button' href='formInserirAluno.jsp'>Ir para o formulário</a>");
                out.println("</div>");
                out.println("</div>");

                // Botão de voltar para listagem
                out.println("<div class='button-container'>");
                out.println("<a class='button' href='codeListarAluno.jsp'>Ir para lista</a>");
                out.println("</div>");
                out.println("</div>");
            }
        %>
    </body>
</html>
