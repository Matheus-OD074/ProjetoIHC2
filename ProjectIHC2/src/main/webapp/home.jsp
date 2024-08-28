<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import = "java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/home.css">
<title>Jbook - Página Inicial</title>
</head>
<body>

	<div class="container">
		<form action="ControllerServlet" method="post">
			<div class="card mb-3" style="max-width: 360px;">
				<div class="row g-0">
				    <div class="col-md-4">
				      <img src="img/one p.jpeg" class="img-fluid rounded-start" alt="...">
				    </div>
				    <div class="col-sm-8">
				      	<div class="card-body">
					        <h5 class="card-title">One piece - vol. 1</h5>					     
					        <p class="card-text">
					        
							R$ 104,64

					        </p>
				      	</div>
				    </div>
			  	</div>
			</div>
		</form>
	</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
