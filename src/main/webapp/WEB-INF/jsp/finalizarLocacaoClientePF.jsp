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
<script src="<c:url value="/resources/js/bootbox.min.js "/>"></script>
<script src="<c:url value="/resources/js/sweetalert.min.js "/>"></script>


<script type="text/javascript">
function redirecionar(){
	swal("Finalizado com Sucesso", "Voc� ser� redirecionado para Loca��es Ativas", "success")
	.then((value) =>{
		window.location = 'finalizar/${locacao.id }';
	});
}
</script>

<title>Finalizar Loca��o</title>
</head>
<body>

	<div>
		<jsp:include page="navBar.jsp" />
	</div>

	<div class="container">
		<h1>Finalizar Loca��o</h1>
	</div>
	<br>
	<br>

	<div class="container">

		<h2>Dados da Loca��o:</h2>
		<br>
		<br>
	</div>

	<div class="container">





		<div class="form-group">

			<b><label>Loca��o N�:</label></b> <label>${locacao.id}</label>
		</div>

		<div class="form-group">

			<b><label>Cliente:</label></b> <label>${nomeCliente}</label>


		</div>

		<div class="form-group">

			<b><label>Locador:</label></b><label> ${nomeLocador}</label>


		</div>



		<div class="form-group">

			<b><label>Veiculo:</label></b> <label>${modeloVeiculo}</label>


		</div>


		<div class="form-group">

			<b><label>Plano:</label></b> <label>${plano.plano}:
				${plano.veiculos}</label>


		</div>

		<div class="form-group">

			<b><label>Seguro:</label></b> <label>${locacao.seguro}</label>


		</div>

		<div class="form-group">

			<b><label>Data de Retirada:</label></b> <label>${locacao.dataLocacao}</label>


		</div>

		<div class="form-group">

			<b><label>Data de Devolu��o:</label></b> <label>${locacao.dataDevolucao}</label>


		</div>

		<div class="form-group">

			<b><label>Diarias:</label></b> <label>${diarias}</label>


		</div>





		<h2>Dados para pagamento:</h2>
		<br>
		<br>

		<div class="form-group">

			<b><label>Valor Unit�rio Di�ria: </label></b> <label>${plano.valorDiaria}
				R$</label>


		</div>

		<div class="form-group">

			<b><label>Valor Diarias: </label></b> <label>${valorDiarias}
				R$</label>


		</div>

		<div class="form-group">

			<b><label>Valor Seguro: </label></b> <label>${valorSeguro} R$</label>


		</div>



		<div class="form-group">

			<h3>
				<label>Total: </label> <label>${valorTotal} R$</label>
			</h3>


		</div>


		<h2>

			<button class="btn btn-success" onclick="redirecionar();">Finalizar</button>
		</h2>


	</div>








</body>
</html>