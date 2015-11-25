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

	<form action="${linkTo[ProdutoController].salvar}" method="post"
		class="form-horizontal col-md-offset-2 col-md-8">
		<h1 class="text-center">
			<strong><em>Cadastro de Produto</em></strong>
		</h1>
		<br>

		<ul class="errors">
			<c:forEach items="${errors}" var="error">
				<li>${error.message}</li>
			</c:forEach>
		</ul>

		<input type="text" name="produto.id" value="${produto.id}"
			hidden="true" />

		<div class="row">
			<div class="col-md-5">
				<div class="form-group">
					<label for="nomeTbx">Nome do Produto</label> <input type="text"
						class="produto.nome" value="${produto.nome}" />
				</div>
				<div class="form-group">
					<label for="exampleInputName1">Tipo</label> <br> <select
						class="form-control">
						<option>--Todos--</option>
						<option>Basquete</option>
						<option>Chuteira de campo</option>
						<option>Chuteira de salão</option>
						<option>Corrida performance</option>
						<option>Corrida ou caminhada</option>
						<option>Fitness e musculação</option>
						<option>Skate</option>
						<option>Surf</option>
						<option>Vôlei</option>
					</select>
				</div>
			</div>
			<div class="col-md-5 col-md-offset-1">
				<div class="form-group">
					<label for="exampleInputName1">Marca</label> <br> <select
						class="form-control">
						<option>--Todos--</option>
						<option>Adidas</option>
						<option>Asics</option>
						<option>Mizuno</option>
						<option>Nike</option>
						<option>Oakley</option>
						<option>Olympikus</option>
						<option>Puma</option>
						<option>Timberland</option>
					</select>
				</div>
				<br>
				<div class="radio borda">
					<h4 class="text-center">Situação</h4>
					<div class="col-md-offset-2">
						<label class="col-md-12"> <input type="radio" name=""
							id="ativoRb" value="" checked> Ativo
						</label> <label> <input type="radio" name="" id="inativoRb"
							value=""> Inativo
						</label>
					</div>
					<br>
				</div>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-md-3">
				<div class="form-group">
					<label for="exampleInputName1">Tamanho</label> <br> <select
						class="form-control">
						<option>--Todos--</option>
						<option>34-35</option>
						<option>35-36</option>
						<option>36-37</option>
						<option>37-38</option>
						<option>38-39</option>
						<option>39-40</option>
						<option>40-41</option>
						<option>41-42</option>
						<option>42-43</option>
						<option>43-44</option>
						<option>44-45</option>
						<option>45+</option>
					</select>
				</div>
			</div>

			<div class="col-md-3 col-md-offset-1">
				<div class="form-group">
					<label for="telefoneComercialTbx">Código de barras</label> <input
						type="text" class="form-control" id="telefoneComercialTbx"
						placeholder="Telefone comercial" name="produto.codigoBarras"
						value="${produto.codigoBarras}" />
				</div>
			</div>
			<div class="col-md-3 col-md-offset-1">
				<div class="form-group">
					<label for="celularTbx">Preço de Custo</label> <input type="text"
						class="form-control" id="celularTbx" placeholder="Celular"
						name="produto.precoCusto" value="${produto.precoCusto}" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-11">
				<div class="form-group">
					<label for="observacaoTbx">Observação</label>
					<textarea name="produto.observacao" class="form-control col-md-12"
						rows="4">${produto.observacao}</textarea>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-md-push-8">
				<a href="../index.jsp">
					<button type="button" class="btn btn-danger col-md-4 col-md-pull-1">
						<span class="glyphicon glyphicon-remove"></span> Cancelar
					</button>
				</a>
				<button type="submit" class="btn btn-success col-md-4 ">
					<span class="glyphicon glyphicon-floppy-save"></span> Salvar
				</button>
				<br> <br> <br>
			</div>
		</div>
	</form>
	<c:import url="/WEB-INF/jsp/menu/script.jsp" />
</body>
</html>