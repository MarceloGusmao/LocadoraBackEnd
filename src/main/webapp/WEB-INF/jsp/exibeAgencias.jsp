<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ag�ncias</title>

<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">
<script src="<c:url value="resources/js/jquery-3.3.1.min.js "/>"></script>
<script src="<c:url value="resources/js/bootstrap.js "/>"></script>
<script src="<c:url value="/resources/js/sweetalert.min.js "/>"></script>

<script type="text/javascript">
function redirecionar(id){
	var url = 'delete/'+ id;
	swal({
		  title: "Deseja Mesmo Deletar uma Ag�ncia?",
		  text: "A Ag�ncia pode est�r associada a um ou mais ve�culo e a opera��o pode falhar",
		  icon: "warning",
		  buttons: true,
		  dangerMode: true,
		})
		.then((willDelete) => {
		  if (willDelete) {
			  window.location = url ;
		  } else {
		    swal("Opera��o Cancelada");
		  }
		});
}
</script>
<script>
function redirecionarEditar(id){
	var url = 'editar/'+ id;
	swal({
		  title: "Deseja Mesmo Editar esta Ag�ncia?",
		  text: "Ao clicar em ok voc� ser� direcionado para edi��o.",
		  icon: "warning",
		  buttons: true,
		  dangerMode: true,
		})
		.then((willDelete) => {
		  if (willDelete) {
			  window.location = url ;
		  } else {
		    swal("Opera��o Cancelada");
		  }
		});
}
</script>

</head>
<body>

	<div>
		<jsp:include page="navBar.jsp" />
	</div>

	<div class="container">
		<h1>Ag�ncias</h1>
	</div>
	

	<c:if test="${!empty agenciaList}">
		<div class="container">
			<table class="table table-striped table-dark">
				<tr>
					<th scope="col">CNPJ</th>
					<th scope="col">Inscri��o Estadual</th>
					<th scope="col">Gerente Responsavel</th>
					<th scope="col">Telefone</th>
					<th scope="col">Localidade</th>
					<th scope="col">A��o</th>

				</tr>

				<c:forEach items="${agenciaList}" var="agencia">
					<tr>
						<td>${agencia.cnpj}</td>
						<td>${agencia.inscEstadual}</td>
						<td>${agencia.gerenteResponsavel.nome}</td>
						<td>${agencia.telefone}</td>
						<td>${agencia.localidade}</td>
						<td>
							<button class="btn btn-warning btn-sm" onclick="redirecionarEditar(${agencia.id});">Editar</button>
							<button class="btn btn-danger btn-sm" onclick="redirecionar(${agencia.id});">Deletar</button>

						</td>
					</tr>
				</c:forEach>
			</table>
		</div>

	</c:if>




</body>
</html>