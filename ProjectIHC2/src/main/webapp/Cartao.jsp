<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/cartao.css">
<title>Efetuar a compra</title>
</head>
<body>

	<div class="container text-center">
		<h1>Preencha os campos abaixo</h1>
	</div>

	<form class="container" method="get">
		<div class="row justify-content-sm-center">
			<div class="row">
			  	<div class="col-md-6">
			    	<label for="fullName" class="form-label">Nome completo</label>
			    	<input type="text" class="form-control" id="fullname">
			  	</div>
			  	<div class="col-md-6">
			    	<label for="inputEmail" class="form-label">Email</label>
			    	<input type="email" class="form-control" id="inputEmail">
		  		</div>
		  	</div>
		  	<div class="row">
			 	<div class="col-12">
			    	<label for="inputAddress" class="form-label">Endereço</label>
			    	<input type="text" class="form-control" id="inputAddress" placeholder="abobrinha 123">
		  		</div>	
			</div>
			<div class="row">
		  	<div class="col-6 .col-md-3">
		    	<label for="inputCity" class="form-label">Cidade</label>
		    	<input type="text" class="form-control" id="inputCity">
		  	</div>
			  	<div class="col-md-2">
			    	<label for="inputState" class="form-label">Estado</label>
			    	<select id="inputState" class="form-select">
			      		<option selected>SP</option>
			      		<option>RJ</option>
			      		<option>MG</option>
			      		<option>BH</option>
			      		<option>ES</option>
			    	</select>
				</div>
		  	</div>
		  	
		  	<div class="row">
		  		<div class="col-md-4">
			  		<label for="nCard" class="form-label">Nº Cartão</label>
			    	<input type="text" class="form-control" id="nCard">
		  		</div>
		  	
		  		<div class="col-md-4">
			  		<label for="dataExp" class="form-label">Data de vencimento</label>
			    	<input type="date" class="form-control" id="dataExp">
		  		</div>
		  	
		  		<div class="col-md-3">
			  		<label for="pin" class="form-label">PIN</label>
			    	<input type="number" max="999" class="form-control" id="pin">
		  		</div>
		  	</div>
		  	
		  	<div class="w-100"></div>
		  	<p>
			<div class="row">
			  	<div class="col-md-4">
			    	<button type="button" class="btn btn-primary" name="action"
			    			value="confirm" data-bs-toggle="modal" 
			    			data-bs-target="#Modal">Confirmar
			    	</button>
			  	</div>
			</div>
		</div>
		
	<div class="modal fade" id="Modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
	    	<div class="modal-content">
	        	<div class="modal-header">
	        		<h1 class="modal-title fs-5" id="exampleModalLabel">Muito Obrigado</h1>
	        		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      		</div>
	      	<div class="modal-body">
	        	Você acabou de adquirir um otimo produto =D
	      	</div>
	      	<div class="modal-footer">
	        	<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
	        	<a href="home.jsp">
		        	<button type="button" class="btn btn-primary">Ok</button>
	        	</a>
	      	</div>
	    	</div>
		</div>
	</div>
		
	</form>
	
	

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script type="js/cartao.js"></script>
</body>
</html>