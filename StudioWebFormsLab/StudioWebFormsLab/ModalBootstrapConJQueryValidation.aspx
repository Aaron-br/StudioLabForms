<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModalBootstrapConJQueryValidation.aspx.cs" Inherits="StudioWebFormsLab.ModalBootstrapConJQueryValidation" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Button Dropdowns</title>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<!-- Agregamos Bootstrap mediante su CDN -->

	<!-- Latest compiled and minified CSS -->
    <link href="Content/bootstrap.css" rel="stylesheet" />
	<!-- Optional theme -->
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />

    <style>

        label.error { color: red; font-weight: bold; }
        input.error { background-color: pink; border: 1px solid red; }

    </style>

</head>
<body>
	
	
    <form id="form2" runat="server">
  
    <div class="container">
		<br>
	    
        <a href="#ventana1" class="btn btn-primary btn-large" data-toggle="modal">Boton #1</a>
        <a href="#ventana2" class="btn btn-success btn-large" data-toggle="modal">Boton #2</a>

        <div class="modal fade" id="ventana1">
        	<div class="modal-dialog">
        		<div class="modal-content">
        			<!-- Header de la ventana -->
        			<div class="modal-header">
        				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        				<h4 class="modal-title">Encabezado de nuestra ventana 1</h4> 
        			</div>

        			<!-- Contenido de la ventana -->
        			<div class="modal-body">

                       <div class="form-group">
                        <label for="email">Email address:</label>
                        <input type="email" class="form-control" id="email" name="email">
                      </div>
                      <div class="form-group">
                        <label for="pwd">Password:</label>
                        <input type="password" class="form-control" id="pwd" name="pwd">
                      </div>
                       
                     

        			</div>

					<!-- Footer de la ventana -->
        			<div class="modal-footer">
        				<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        				<button type="submit" class="btn btn-primary">Guardar cambios</button>
        			</div>

        		</div>
        	</div>
        </div>

    </div>

    </form>

    <script src="Scripts/jquery-1.12.4.js"></script>
	<!-- Latest compiled and minified JavaScript -->
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/jquery.validate.js"></script>

    <script>


        $(document).ready(function () {

            $('#form2').on('shown.bs.modal', function () {
            
                $('#email').focus();
                $("#form2").validate({

                    rules: {

                        email: {

                            required: true
                        },
                        pwd: {

                            required: true
                        }

                    },
                    messages: {

                        email: { required: 'Este campo es requerido.' },
                        pwd: { required: 'Este campo es requerido.' }

                    }

                });
            
            });


        });

    </script>



</body>
</html>