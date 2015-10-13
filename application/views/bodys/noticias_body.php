<body>
<?php include("application/views/encabezado.php");?>
<?php include("application/views/menu.php");?>
<?php include("application/views/modales.php");?>

<div class="container">
	<div class="row">
		<div class="col-xs-10 col-xs-offset-1">
			<?php include("application/controllers/noticias_list_controller.php");?>
		</div>
	</div>
</div>


<?php include("application/views/footer.php");?>	
</body>
