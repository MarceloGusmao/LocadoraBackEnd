<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Cadastro de Funcion�rio</title>

<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">
<script src="<c:url value="/resources/js/jquery-3.3.1.min.js "/>"></script>
<script src="<c:url value="/resources/js/bootstrap.js "/>"></script>

<script src="<c:url value="/resources/js/validacao.js "/>"></script>

</head>
<body>

	<div>
		<jsp:include page="navBar.jsp" />
	</div>
	<div class="container">

		<h2>Cadastro de Funcion�rio: Gerente</h2>

	</div>

	<div class="container">
		<form:form method="post" action="salvaFuncionarioG.html"
			modelAttribute="funcionarioG">

			<div class="form-group">
				<form:input type="hidden" class="form-control" path="id" />
			</div>

			<div class="form-group">
				<form:label path="nome">Nome:</form:label>
				<form:input required="true" class="form-control" path="nome"
					maxlength="50" />
			</div>
			<div class="form-group">
				<form:label path="cpf">CPF:</form:label>
				<form:input required="true" name="cpf"
					onKeyPress="MascaraCPF(this);" onblur="ValidarCPF(this);"
					maxlength="14" class="form-control" path="cpf" />
			</div>
			<div class="form-group">
				<form:label path="rg">RG:</form:label>
				<form:input required="true" class="form-control" path="rg"
					placeholder="digite seu RG com '.' e '-' " />
			</div>
			<div class="form-group">
				<form:label path="dataNascimento">Data de Nascimento:</form:label>
				<form:input type="date" required="true" class="form-control"
					path="dataNascimento" />
			</div>
			<div class="form-group">
				<form:label path="naturalidade">Naturalidade:</form:label>
				<form:input required="true" class="form-control" path="naturalidade" maxlength="25" />
			</div>
			<div class="form-group">
				<form:label path="endereco">Endereco:</form:label>
				<form:input required="true" class="form-control" path="endereco" maxlength="80" />
			</div>
			<div class="form-group">
				<form:label path="telefone">Telefone:</form:label>
				<form:input required="true" name="telefone"
					onkeypress="MascaraTelefone(this);" class="form-control"
					path="telefone" maxlength="16" />
			</div>
			<div class="form-group">
				<form:label path="email">Email:</form:label>
				<form:input required="true" type="email" class="form-control"
					path="email" />
			</div>

			<button type="submit" class="btn btn-success">Salvar</button>


		</form:form>

	</div>







</body>
</html>