<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Veiculos</title>

<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<script src="<c:url value="resources/js/jquery-3.3.1.min.js "/>"></script>
<script src="<c:url value="resources/js/bootstrap.js "/>"></script>
<script src="<c:url value="/resources/js/sweetalert.min.js "/>"></script>



<script type="text/javascript">
function redirecionar(id){
	var url = 'deleteVeiculo/'+ id;
	swal({
		  title: "Deseja Mesmo Deletar este Ve�culo?",
		  text: "Este V�culo pode ter sido sisponibilizado para loca��o e a opera��o pode falhar",
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
function redirecionarEditarC(id){
	var url = 'editarVeiculoC/'+ id;
	swal({
		  title: "Deseja Mesmo Editar este Ve�culo?",
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
<script>
function redirecionarEditarM(id){
	var url = 'editarVeiculoM/'+ id;
	swal({
		  title: "Deseja Mesmo Editar este Cliente?",
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
		<h1>Ve�culos: Carros</h1>
	</div>
	<c:if test="${!empty listaVeiculosC}">
		<div class="container">
			<table class="table table-striped table-dark">
				<tr>
					<th scope="col">Renavam</th>
					<th scope="col">Modelo</th>
					<th scope="col">Marca</th>
					<th scope="col">Pot�ncia</th>
					<th scope="col">Ano</th>
					<th scope="col">Cor</th>
					<th scope="col">Tipo Combustivel</th>
					<th scope="col">Ag�ncia</th>
					<th scope="col">Acess�rios</th>

					<th scope="col">A��o</th>
				</tr>
				<c:forEach items="${listaVeiculosC}" var="veiculo">

					<tr>
						<td>${veiculo.renavam}</td>
						<td>${veiculo.modelo}</td>
						<td>${veiculo.marca}</td>
						<td>${veiculo.potencia}</td>
						<td>${veiculo.ano}</td>
						<td>${veiculo.cor}</td>
						<td>${veiculo.tipoCombustivel}</td>
						<td>${veiculo.agencia.localidade}</td>
						<td>${veiculo.acessorios}</td>

						<td>
							<button class="btn btn-warning btn-sm"
								onclick="redirecionarEditarC(${veiculo.id});">&nbspEditar&nbsp </button><br><br>
							<button class="btn btn-danger btn-sm"
								onclick="redirecionar(${veiculo.id});">Deletar</button>
							</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</c:if>


	<div class="container">
		<h1>Ve�culos: Motocicletas</h1>
	</div>
	<c:if test="${!empty listaVeiculosM}">

		<div class="container">
			<table class="table table-striped table-dark">
				<tr>
					<th scope="col">Renavam</th>
					<th scope="col">Modelo</th>
					<th scope="col">Marca</th>
					<th scope="col">Cilindradas</th>
					<th scope="col">Ano</th>
					<th scope="col">Cor</th>
					<th scope="col">Tipo Combustivel</th>
					<th scope="col">Ag�ncia</th>
					<th scope="col">Freios</th>

					<th scope="col">A��o</th>
				</tr>
				<c:forEach items="${listaVeiculosM}" var="veiculo">

					<tr>
						<td>${veiculo.renavam}</td>
						<td>${veiculo.modelo}</td>
						<td>${veiculo.marca}</td>
						<td>${veiculo.cilindradas}</td>
						<td>${veiculo.ano}</td>
						<td>${veiculo.cor}</td>
						<td>${veiculo.tipoCombustivel}</td>
						<td>${veiculo.agencia.localidade}</td>
						<td>${veiculo.freios}</td>
						<td>
							<button class="btn btn-warning btn-sm"
								onclick="redirecionarEditarM(${veiculo.id});">&nbspEditar&nbsp </button><br><br>
							<button class="btn btn-danger btn-sm"
								onclick="redirecionar(${veiculo.id});">Deletar</button>
							</td>

					</tr>
				</c:forEach>
			</table>
		</div>
	</c:if>




</body>
</html>