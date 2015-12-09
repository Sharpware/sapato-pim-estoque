<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Entrada de Produto</title>
<c:import url="/WEB-INF/jsp/menu/template.jsp" />
</head>
<body>
	<div class="container col-md-12">
		<form action="linkTo[EstoqueController].salvar" method="post"
			class="form-horizontal col-md-offset-2 col-md-8 ">
			<h1 class="text-center">
				<strong><em>Entrada de Produto</em></strong>
			</h1>
			<br>

			<div class="row">
				<div class="col-md-5">
					<div class="form-group form-group-lg">
						<label for="cpfTbx">Nome do produto</label> <input type="text"
							class="form-control" id="cpfTbx" placeholder="Nome do produto"
							name="produto.nome" />
					</div>
				</div>

				<div class="col-md-5 col-md-offset-1">
					<div class="form-group form-group-lg">
						<label for="nomeTbx">Código de barras</label> <input type="text"
							class="form-control" id="nomeTbx" placeholder="Código de barras"
							name="cliente.nome" />
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-5">
					<div class="form-group form-group-lg">
						<label for="nomeTbx">Quantidade</label> <input type="text"
							class="form-control" id="nomwTbx" placeholder="Quantidade"
							name="produto.nome" />
					</div>
				</div>

				<div class="col-md-5 col-md-offset-1">
					<div class="form-group form-group-lg">
						<label for="telefoneResidencialTbx">Preço de Venda</label> <input
							type="text" class="form-control" id="telefoneResidencialTbx"
							placeholder="0,00" name="cliente.telefoneResidencial" />
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<div class="form-group form-group-lg">
						<label for="logradouroTbx">Data de Entrada</label> <input
							type="date" class="form-control" id="logradouroTbx"
							placeholder="" name="produto.dataEntrada" />
					</div>
				</div>
				<div class="col-md-3 col-md-push-1">
					<div class="form-group form-group-lg">
						<label for="complementoTbx">Data Início</label> <input type="date"
							class="form-control" id="complementoTbx" placeholder=""
							name="produto.dataInicio" />
					</div>
				</div>
				<div class="col-md-3 col-md-push-2">
					<div class="form-group form-group-lg">
						<label for="cidadeTbx">Data Fim</label> <input type="date"
							class="form-control" id="cidadeTbx" placeholder=""
							name="produto.dataFim" />
					</div>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-md-6 col-md-push-7">
					<a href="../index.jsp"><button type="button"
							class="btn btn-danger col-md-4 col-md-pull-1">
							<span class="glyphicon glyphicon-remove"></span>Cancelar
						</button> </a>
					<button type="submit" class="btn btn-success col-md-4 ">
						<span class="glyphicon glyphicon-floppy-save"></span>Salvar
					</button>
					<br> <br> <br>
				</div>
			</div>
		</form>
	</div>
	<c:import url="/WEB-INF/jsp/menu/script.jsp" />
</body>
</html>
