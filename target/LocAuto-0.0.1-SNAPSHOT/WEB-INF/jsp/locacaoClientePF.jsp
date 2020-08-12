<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">
<script src="<c:url value="/resources/js/jquery-3.3.1.min.js "/>"></script>
<script src="<c:url value="/resources/js/bootstrap.js "/>"></script>

<title>Loca��o Carro</title>
</head>
<body>

	<div>
		<jsp:include page="navBar.jsp" />
	</div>

	<div class="container">
		<h1>Loca��o de Veiculo para Pessoa Fisica</h1>
	</div>
	<br>
	<br>
	<form:form method="post" action="locacaoClientePF/salvar"
		modelAttribute="locacao">

		<div class="container">
			<div class="form-row">
				<div class="form-group col-md-6">

					<label>Escolha um Cliente</label>

					<form:select class="form-control" path="clientePF.id">
						<c:forEach items="${listaClientes }" var="cliente">
							<form:option value="${cliente.id}">${cliente.nome}</form:option>
						</c:forEach>

					</form:select>
				</div>


				<div class="form-group col-md-6">

					<label>Escolha um Locador</label>
					<form:select class="form-control" path="locador.id">
						<c:forEach items="${listaLocadores }" var="locador">
							<form:option value="${locador.id}">${locador.nome}</form:option>
						</c:forEach>

					</form:select>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="form-group">

				<label>Escolha um Ve�culo</label>
				<form:select class="form-control" path="veiculo.id">
					<c:forEach items="${listaVeiculos }" var="veiculo">
						<form:option value="${veiculo.id}">Tipo Ve�culo: ${veiculo.tipo} , Modelo:
							${veiculo.modelo}</form:option>
					</c:forEach>

				</form:select>
				<label>M = Motocicleta C = Carro</label>
			</div>
		</div>

		<div class="container">
			<div class="form-group">
				<label>Escolha um Plano</label>
				<form:select class="form-control" path="plano.id">
					<c:forEach items="${listaPlanos }" var="plano">
						<form:option value="${plano.id}">Tipo: ${plano.tipo} Ve�culo: ${plano.veiculos}</form:option>
					</c:forEach>

				</form:select>
				<label>PC = Plano Carro, PM = Plano Motocicleta</label>
			</div>
		</div>

		<div class="container">
			<div class="form-group">
				<form:label path="seguro">Escolha um Seguro</form:label>
				<form:select path="seguro" class="form-control">

					<form:option value="Nenhum">Nenhum</form:option>
					<form:option value="Parcial">Cobertura parcial : arranh�es, amassados leves,
						acess�rios danificados</form:option>
					<form:option value="Total">Cobertura total: roubo e perda total do ve�culo.</form:option>

				</form:select>

			</div>
		</div>

		<div class="container">
			<div class="form-group">
				<form:label path="nivelDoTanque">Escolha um Seguro</form:label>
				<form:select path="nivelDoTanque" class="form-control">

					<form:option value="Reserva">Reserva</form:option>
					<form:option value="Meio Tanque">Meio Tanque</form:option>
					<form:option value="Tanque Cheio">Tanque Cheio</form:option>

				</form:select>

			</div>
		</div>

		<div class="container">
			<div class="form-group">

				<form:label path="dataDevolucao">Data de devolucao:</form:label>

				<form:input required="true" type = "date" class="form-control" path="dataDevolucao" />
			</div>

		</div>

		<div class="container">
			<button type="submit" class="btn btn-success">Realizar
				Loca��o</button>
			<br> <br> <br>
		</div>
	</form:form>


</body>
</html>