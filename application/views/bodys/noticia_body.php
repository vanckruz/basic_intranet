<body>
<?php include("application/views/encabezado.php");?>
<?php include("application/views/menu.php");?>

<!--Contenedor de la noticia-->
<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<div class="media caja_noticias" style="min-height:500px;border-top:1px solid #CCC;border-left:1px solid #CCC;border-right:1px solid #CCC;border-bottom:1px inset rgba(0,0,0,0.5);padding:21px 12px 52px 21px;background:#F9F9F9;">
				<?php include("application/controllers/noticia_detalle_controller.php");?>				
			</div>
		</div>
	</div>
</div>
<!--Contenedor de la noticia-->

<!--Opciones-->
<div class="fullwidth color_tema9" style="height:200px;box-shadow:7px 12px 12px #888888;">	
	<?php include("application/views/cinta_opciones.php");?>
</div>
<!--Opciones-->
<?php include("application/views/footer.php");?>	
<?php include("application/views/modales.php");?>
</body>
<script>
$(document).on("ready",function(){
	/*
		$('.galeria div:gt(0)').hide();
    setInterval(function(){
      $('.galeria div:first-child').fadeOut(0)
         .next('div').fadeIn(1000)
         .end().appendTo('.galeria');}, 4000);
    */

});
</script>