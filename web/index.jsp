<%-- 
    Document   : index
    Created on : 26/11/2020, 14:27:45
    Author     : Pedro A
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Disciplina" %>
<%@page import="java.util.Set" %>




<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../../../favicon.ico">

        <title>POO Prova 2</title>

        <!-- Bootstrap core CSS -->
        <link href="../../css/editor.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="narrow-jumbotron.css" rel="stylesheet">
        <%@include file="WEB-INF/jspf/css.jspf" %>
    </head>

        <%@include file="WEB-INF/jspf/menu.jspf" %>

            <div class="jumbotron">
                <h1 class="display-3">POO Prova 2</h1>
                <p class="lead">Pedro Henrique Athanazio de Oliveira </br> ra: 1290481913040</br>Numero de disciplinas matriculadas: <%= Disciplina.getList().size() %> </p>
                <p><a class="btn btn-lg btn-success" href="disciplinas.jsp" role="button"">Lista de Disciplinas</a></p>
            </div>

            <div class="row marketing">



            </div>

            <footer class="footer">

            </footer>

                <%@include file="WEB-INF/jspf/script.jspf" %>
        
    </body>
</html>