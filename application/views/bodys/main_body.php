<body>
<?php include('application/views/encabezado.php');?>
<?php include('application/views/menu.php'); ?>

<!--Slider-->
	<div class="fullwidth fondoslide" style="height:252px;">
		<div class="container">
			<div class="row">
				<div class="col-xs-11 "><!--col-xs-offset-1-->
					<div class="slider" style="margin-left:34px;">
						<?php include("application/views/slider.php");?>
					</div>
				</div>

			</div>
		</div>
	</div>
<!--Slider-->

<!--Opciones color_tema7-->
<div class="fullwidth " style="background:transparent;height:200px;box-shadow:7px 12px 12px #888888;position:relative;overflow:hidden;">	
<video preload="auto" autoplay="true"  loop="loop" muted="muted" volume="0" class="videoback2">
	<source src="fronted/video/vidfondo2.mp4" type='video/mp4;" codecs="avc1.42E01E, mp4a.40.2"' />
	<source src="fronted/video/vidfondo2.ogg" type='video/ogg" codecs="theora, vorbis"'/>
	<source src="fronted/video/vidfondo2.webm" type='video/webm" codecs="vp8, vorbis"'/>
</video>
	<?php include("application/views/cinta_opciones.php");?>
</div>
<!--Opciones-->


<!--Noticias-->
<div class="fullwidth noticias back_logo4" style="height:500px;box-shadow:7px 12px 21px #888888;"><!--height:250-->
	<div class="container">
		<div class="row" style="position:relative;">
			<!--<div id="flecha_izquierda" style="width:60px;height:60px;position:absolute;top:175px;left:10px;z-index:21;cursor:pointer;"><img src="fronted/img/iconos png/flecha_izquierda.png" alt=""></div>-->
				<div class="col-xs-12">
					<!--Noticias-->
					<?php include("application/views/listado_noticias.php");?>
					<!--Noticias-->
				</div>	
			<!--<div id="flecha_derecha" style="width:60px;height:60px;position:absolute;top:175px;right:10px;z-index:21;cursor:pointer;"><img src="fronted/img/iconos png/flecha_derecha.png" alt=""></div>-->
		</div>
	</div>
</div>
<!--Noticias-->

<!--Cuadros publicitarios-->
<div class="fullwidth back_logo3">
	<div class="container">
			<div class="row" style="padding:50px 10px 50px 10px;">
				<div class="col-xs-4">
					<div class="thumbnail blanpacity padpub">
							<a href="fronted/img/bombillo.jpg" class="boxer" title="Ahorrar energia es tarea de todos." >
								<img src="fronted/img/bombillo.jpg">
							</a>
						<div class="caption">
						    <h3 style="color:#003;">Ahorrar energia es tarea de todos.</h3>
						    <p>...</p>				    
						   <!--
						   <button type="button" class="btn btn-primary" style="float:right;" id="pepe" data-toggle="popover" title="Ahorrar energia es tarea de todos" data-content="El uso racional de la energía eléctrica es un acto de responsabilidad que debemos asumir todos los venezolanos,especialmente en momentos cuando los embalses destinados a la generación hidroeléctrica han experimentado un descenso debido a fenómenos climatológicos, situación que pone en riesgo la capacidad de suministro.">Ver campaña</button>
	
						    <div style="clear:both"></div>
						    <script>
						    	/*
						    	$(function () {
  								$('[data-toggle="popover"]').popover()
								})
								*/
								$(document).ready(function(){
									$('[data-toggle="popover"]').popover({template:'<div class="popover" role="tooltip" style="width:4000px;"><div class="arrow"></div><h3 class="popover-title"></h3><div class="popover-content"></div></div>'});		
								});
						    </script>
						    -->	
						</div>
					</div>					
				</div>

				<div class="col-xs-4">
					<div class="thumbnail blanpacity padpub">
						<a href="fronted/img/Pueblo-Victorioso.png" class="boxer" title="Pueblo victorioso.">
							<img src="fronted/img/Pueblo-Victorioso.png">
						</a>
						<div class="caption">
						    <h3 style="color:#003;">Pueblo victorioso.</h3>
						    <p>...</p>						  
						    <div style="clear:both"></div>
						</div>
					</div>	
				</div>

				<div class="col-xs-4">
					<div class="thumbnail blanpacity padpub">
							<a href="fronted/img/2anios.jpg" class="boxer" title="El pueblo bolivariano mantiene tu legado a dos años de tu partida.">
								<img src="fronted/img/2anios.jpg">
							</a>
						<div class="caption">
						    <h3 style="color:#003;">A dos años de tu siembra.</h3>
						    <p>...</p>
						    <!--<p><a href="#" class="btn btn-primary" role="button" style="float:right;">Ver mas</a></p>-->
						    <div style="clear:both"></div>
						</div>
					</div>	
				</div>
			</div>
		</div>	
</div>
<!--Cuadros publicitarios-->

<?php include("application/views/footer.php");  ?>
<?php include("application/views/modales.php"); ?>
</body>
</html>