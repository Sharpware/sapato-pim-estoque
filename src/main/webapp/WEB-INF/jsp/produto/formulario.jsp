<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Formulário de Fornecedor</title>
        <c:import url="/WEB-INF/jsp/menu/template.jsp" />
    </head>
    <body>
        <c:import url="/WEB-INF/jsp/menu/menu.jsp" />

        <p class="lbl-cclient">
            <strong><em>Formulário de Produto</em></strong>
        </p>

        <ul class="errors">
            <c:forEach items="${errors}" var="error">
                <li>${error.message}</li>
            </c:forEach>
        </ul>

        <form action="${linkTo[ProdutoController].salvar}">
            <input type="text" name="produto.id" value="${produto.id}"
                   hidden="true" />
            
            <label>Nome</label>
            <input type="text" name="produto.nome" value="${produto.nome}">
            
            <label>Marca</label>
            <input type="text" name="produto.marca" value="${produto.marca}">
            
            <label>Tamanho</label>
            <input type="text" name="produto.tamanho" value="${produto.tamanho}">
            
            <label>Preço de custo</label>
            <input type="text" name="produto.precoCusto" value="${produto.precoCusto}">
            
            <input type="submit" value="Salvar">
        </form>
        
        <c:import url="/WEB-INF/jsp/menu/script.jsp" />
    </body>
</html>