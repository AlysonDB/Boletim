<%-- 
    Document   : index
    Created on : 1 de nov. de 2024, 12:03:10
    Author     : Alyson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Boletim de Notas AlysonDB</title>
    </head>
    <body>
            <form action="" method="post">
                    <h1>Boletim de Notas</h1>
                    
                    <label for="nome">Nome:
                        <input type="text" id="nome" name="n_nome" required>
                    </label>
                   
                    <label for="nota1">Primeira nota:
                        <input type="text" id="nota1" name="n_nota1" required>
                    </label>
                   
                    <label for="nota2">Segunda nota:
                        <input type="text" id="nota2" name="n_nota2" required>
                    </label>
                    
                    <button type="submit">Calcular Média</button>
        </form>
           
                
    <%
        String nome = request.getParameter("n_nome");
        String nota1Str = request.getParameter("n_nota1");
        String nota2Str = request.getParameter("n_nota2");

       
        if (nome != null && nota1Str != null && nota2Str != null) {
            try {
                double nota1 = Double.parseDouble(nota1Str);
                double nota2 = Double.parseDouble(nota2Str);
                double media = (nota1 + nota2) / 2;

              
                if (media >= 6) {
                    out.print("<p>O aluno " + nome + " obteve a média " + String.format("%.2f", media) + " e foi aprovado.</p>");
                } else {
                    out.print("<p>O aluno " + nome + " obteve a média " + String.format("%.2f", media) + " e foi reprovado.</p>");
                }
            } catch (NumberFormatException e) {
                out.print("<p>Por favor, insira valores numéricos válidos para as notas.</p>");
            }
        }
    %>
    </body>
</html>
