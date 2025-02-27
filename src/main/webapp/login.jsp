

<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrapValidator.js"></script>

<link rel="stylesheet" href="css/form-elements.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrapValidator.css">

 
<title>Sistemas - Jorge Jacinto Gutarra</title>
</head>   
<body>    


 <!-- Top content -->
        <div class="top-content">
            <div class="inner-bg">
                <div class="container">
					<!-- 
                    	Aplicando lenguaje de expresiones 
                    	requestScope : memoria request
                        sessionScope : memoria session
                    -->
									
                	<%
                		if (request.getAttribute("mensaje") != null){
                			String mensaje = (String)request.getAttribute("mensaje");
                	%>
               		<div class="alert alert-danger fade in" id="success-alert">
				        <a href="#" class="close" data-dismiss="alert">&times;</a>
				        <strong><%= mensaje %></strong>
				    </div>
				    
				    <% } %>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Intranet Instituto</h3>
                            		<p>Ingrese su usuario y contraseņa:</p>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form id="id_form"  action="login" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Usuario</label>
			                        	<input type="text" name="loginuser" placeholder="Usuario..." value="luis" class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Contraseņa</label>
			                        	<input type="password" name="loginpassword" placeholder="Contraseņa..." value="luis" class="form-password form-control" id="form-password">
			                        </div>
			                        <button type="submit" class="btn">Ingresar</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            
        </div>


<script type="text/javascript">
$("#success-alert").fadeTo(1000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});
</script>



<script type="text/javascript">


$(document).ready(function() {
    $('#id_form').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	loginuser: {
                validators: {
                    notEmpty: {
                        message: 'El usuario es un campo obligatorio'
                    }
                }
            },
            loginpassword: {
                validators: {
                    notEmpty: {
                        message: 'La contraseņa es un campo obligatorio'
                    }
                }
            }
        }   
    });

    // Validate the form manually
    $('#validateBtn').click(function() {
        $('#id_form').bootstrapValidator('validate');
    });
});
</script>

</body>
</html>