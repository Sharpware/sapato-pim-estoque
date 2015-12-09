<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Pesquisa de Produto</title>
<c:import url="/WEB-INF/jsp/menu/template.jsp" />
</head>
<body>
	<c:import url="/WEB-INF/jsp/menu/menu.jsp" />

	<div class="container col-md-12">
		<h1 class="text-center col-xs-12">
			<strong><em>Pesquisa de Produto</em></strong>
		</h1>
		<form
			class="form-horizontal col-md-offset-2 col-xs-12 col-sm-12 col-md-8 col-lg-8">
			<label for="nomeTbx">Nome</label>
			<div class="col-md-8 input-group">
				<input type="text" class="form-control" id="nomeTbx"
					placeholder="Nome"> <span class="input-group-btn">
					<button type="button" class="btn btn-success ">
						<span class="glyphicon glyphicon-search"></span> Pesquisar
					</button>
				</span>
			</div>
			<label for="nomeTbx">Código</label>
			<div class="col-md-8 input-group">
				<input type="text" class="form-control" id="nomeTbx"
					placeholder="Codigo"> <span class="input-group-btn">
					<button type="button" class="btn btn-success">
						<span class="glyphicon glyphicon-search"></span> Pesquisar
					</button>
				</span>
			</div>
			<label for="nomeTbx">Marca</label>
			<div class="col-md-8 input-group">
				<input type="text" class="form-control" id="nomeTbx"
					placeholder="Marca"> <span class="input-group-btn">
					<button type="button" class="btn btn-success">
						<span class="glyphicon glyphicon-search"></span> Pesquisar
					</button>
				</span>
			</div>
			<br> <br>
		</form>
		<table class="table table-bordered table-hover tabela">
			<thead>
				<tr>
					<th class="text-center">Código</th>
					<th class="text-center">Nome do Produto</th>
					<th class="text-center">Descrição</th>
					<th class="text-center">Tamanho</th>
					<th class="text-center">Valor</th>
					<th class="text-center">Quantidade</th>
					<th class="text-center">Funções</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${produto}" var="produto">
					<tr>
						<td>${produto.id}</td>
						<td>${produto.nome}</td>
						<td>${produto.descricao}</td>
						<td>${produto.tamanho}</td>
						<td>${produto.valor}</td>
						<td>${produto.quantidade}</td>
						<td>
							<button type="button" class="btn btn-primary btn-sm ">
								<span class="glyphicon glyphicon-ban-circle"></span> Inativar
							</button> <a href="${linkTo[ProdutoController].editar(produto.id)}">
								<button type="button" class="btn btn-primary btn-sm ">
									<span class="glyphicon glyphicon-pencil"></span> Editar
								</button>
						</a> <a href="${linkTo[EstoqueController].entradaProduto(produto.id)}">
								<button type="button" class="btn btn-primary btn-sm ">
									<span class="glyphicon glyphicon-pencil"></span> Editar
								</button>
						</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="col-md-6 col-md-push-8">
			<button type="submit" class="btn btn-danger  col-md-4 col-md-pull-1">
				<span class="glyphicon glyphicon-remove"></span> Cancelar
			</button>
			<form action="linkTo[ProdutoController].pesquisarTodos" method="get">
				<button type="submit" class="btn btn-success  col-md-4 ">
					<span class="glyphicon glyphicon-search"></span> Pesquisar
				</button>
			</form>
			<br> <br> <br>
		</div>
	</div>
	<c:import url="/WEB-INF/jsp/menu/script.jsp" />
</body>
</html>