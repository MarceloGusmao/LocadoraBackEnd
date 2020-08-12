<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Cadastro de cliente</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">
<script src="<c:url value="/resources/js/jquery-3.3.1.min.js "/>"></script>
<script src="<c:url value="/resources/js/validacao.js "/>"></script>

<script src="<c:url value="/resources/js/bootstrap.js "/>"></script>

</head>


<body>

	<div>
		<jsp:include page="navBar.jsp" />
	</div>

	<div class="container">
		<h2>Cadastro cliente pessoa f�sica</h2>
	</div>

	<div class="container">
		<form:form method="post" action="salvaClientePF.html"
			modelAttribute="clientePF">

			<div class="form-group">
				<form:input type="hidden" class="form-control" path="id" />
			</div>
			<div class="form-group">

				<form:label path="nome">Nome:</form:label>
				<form:input required="true" class="form-control" path="nome" maxlength="50" />
			</div>

			<div class="form-group">
				<form:label path="cpf">CPF:</form:label>
				<form:input  required="true" name="cpf"
					onKeyPress="MascaraCPF(clientePF.cpf);" maxlength="14"
					class="form-control" path="cpf" onblur="ValidarCPF(this);" />
			</div>
			<div class="form-group">
				<form:label path="rg">RG:</form:label>
				<form:input required="true" class="form-control" path="rg" placeholder="digite o RG com '. e -'" maxlength="20"/>
			</div>
			<div class="form-group">
				<form:label path="datNasc">Data de Nascimento:</form:label>
				<form:input required="true" type="date" class="form-control"
					path="datNasc" />
			</div>
			<div class="form-group">
				<form:label path="naturalidade">Naturalidade:</form:label>
				<form:input required="true" class="form-control" path="naturalidade" />
			</div>
			<div class="form-group">
				<form:label path="endereco">Endereco:</form:label>
				<form:input required="true" class="form-control" path="endereco" />
			</div>
			<div class="form-group">
				<form:label path="telefone">Telefone:</form:label>
				<form:input required="true"
					onKeyPress="MascaraTelefone(this);"
					class="form-control" path="telefone" maxlength="16" />
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