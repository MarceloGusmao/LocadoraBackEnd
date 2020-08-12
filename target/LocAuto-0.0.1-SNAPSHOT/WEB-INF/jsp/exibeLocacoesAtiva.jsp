<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loca��es</title>

<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">
<script src="<c:url value="/resources/js/jquery-3.3.1.min.js "/>"></script>
<script src="<c:url value="/resources/js/bootstrap.js "/>"></script>
<script src="<c:url value="/resources/js/sweetalert.min.js "/>"></script>

<script type="text/javascript">
function redirecionarFinalizarPF(id){
	var url = '/LocAuto/locacaoClientePF/calcularDebitos/'+ id;
	swal({
		  title: "Deseja Mesmo Finalizar/SaldarDebitos desta Loca��o?",
		  text: "Voc� sera direcionado para Tela onde ser� calculado o valor da devolu��o ",
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
function redirecionarCancelarPF(id){
	var url = '/LocAuto/locacao/cancelar/'+ id;
	swal({
		  title: "Deseja mesmo cancelar esta loca��o?",
		  text: "A loca��o ser� cancelada e voc� ser� direcionado para Loca��es Canceladas.",
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

<script type="text/javascript">
function redirecionarFinalizarPJ(id){
	var url = '/LocAuto/locacaoClientePJ/calcularDebitos/'+ id;
	swal({
		  title: "Deseja Mesmo Finalizar/SaldarDebitos desta Loca��o?",
		  text: "Voc� sera direcionado para Tela onde ser� calculado o valor da devolu��o ",
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
function redirecionarCancelarPJ(id){
	var url = '/LocAuto/locacao/cancelar/'+ id;
	swal({
		  title: "Deseja mesmo cancelar esta loca��o?",
		  text: "A loca��o ser� cancelada e voc� ser� direcionado para Loca��es Canceladas.",
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
		<h1>Loca��es Ativas</h1>
		<h3>Locaca��es Cliente PF</h3>
	</div>
	<c:if test="${!empty locacoesListPF}">
		<div class="container">
			<table class="table table-striped table-dark">
				<tr>
					<th scope="col">Cliente</th>
					<th scope="col">Locador</th>
					<th scope="col">Veiculo</th>
					<th scope="col">Plano</th>
					<th scope="col">Seguro</th>
					<th scope="col">Data de Loca��o</th>
					<th scope="col">Data de Entrega</th>
					<th scope="col">N�vel do Tanque</th>
					<th scope="col">Valor Total</th>
					<th scope="col">Situa��o</th>
					<th scope="col">A��o</th>


				</tr>

				<c:forEach items="${locacoesListPF}" var="locacao">
					<tr>
						<td>${locacao.clientePF.nome}</td>
						<td>${locacao.locador.nome}</td>
						<td>${locacao.veiculo.modelo}</td>
						<td>${locacao.plano.plano}</td>
						<td>${locacao.seguro}</td>
						<td>${locacao.dataLocacao}</td>
						<td>${locacao.dataDevolucao}</td>
						<td>${locacao.nivelDoTanque}</td>
						<td>${locacao.valorTotalLocacao}</td>
						<td>${locacao.situacao}</td>
						<td>
							<button class="btn btn-success btn-sm"
								onclick="redirecionarFinalizarPF(${locacao.id});">Finalizar</button>
							<br>
						<br>
							<button class="btn btn-danger btn-sm"
								onclick="redirecionarCancelarPF(${locacao.id});">Cancelar</button>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>

	</c:if>


	<div class="container">
		<h3>Locaca��es Cliente PJ</h3>
	</div>
	<c:if test="${!empty locacoesListPJ}">
		<div class="container">
			<table class="table table-striped table-dark">
				<tr>
					<th scope="col">Cliente</th>
					<th scope="col">Locador</th>
					<th scope="col">Veiculo</th>
					<th scope="col">Plano</th>
					<th scope="col">Seguro</th>
					<th scope="col">Data de Loca��o</th>
					<th scope="col">Data de Entrega</th>
					<th scope="col">N�vel do Tanque</th>
					<th scope="col">Situa��o</th>
					<th scope="col">A��o</th>

				</tr>

				<c:forEach items="${locacoesListPJ}" var="locacao">
					<tr>
						<td>${locacao.clientePJ.nomeFantasia}</td>
						<td>${locacao.locador.nome}</td>
						<td>${locacao.veiculo.modelo}</td>
						<td>${locacao.plano.plano}</td>
						<td>${locacao.seguro}</td>
						<td>${locacao.dataLocacao}</td>
						<td>${locacao.dataDevolucao}</td>
						<td>${locacao.nivelDoTanque}</td>
						<td>${locacao.situacao}</td>

						<td><button class="btn btn-success btn-sm"
								onclick="redirecionarFinalizarPJ(${locacao.id});">Finalizar</button>
							<br>
						<br>
							<button class="btn btn-danger btn-sm"
								onclick="redirecionarCancelarPJ(${locacao.id});">Cancelar</button></td>
						
					</tr>
				</c:forEach>
			</table>
		</div>

	</c:if>


</body>
</html>