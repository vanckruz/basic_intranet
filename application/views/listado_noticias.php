<?php include("application/database/conexion.php");?>

<?php 

$query = "select * from noticias order by id_noticias desc";
$query = mysqli_query($conect, $query);
?>

<div id="ca-container" class="ca-container">
	<div class="ca-wrapper" id="noticiero" style="overflow:hidden;">

<?php while ($row = mysqli_fetch_array($query, MYSQLI_ASSOC)) { ?>
<div class="ca-item" style="">
	<div class="ca-item-main" style="background:rgba(255,255,255,0.3)">
		<div>
	<?php if($row['imagen_principal'] != null ){ ?>
		<a href="public/noticias/<?=$row['imagen_principal']?>" class="boxer" title="<?=utf8_encode($row['titulo']);?>" data-gallery="gallery">
			<img src="public/noticias/<?=$row['imagen_principal']?>" class="img_noticias">
		</a>
	<?php }else{ ?>
	 <a href="fronted/img/logoivss.png" class="boxer" title="<?=utf8_encode($row['titulo']);?>" data-gallery="gallery">
		<img src="fronted/img/logoivss.png" class="img_noticias"> 
	 </a>
		 <?php }?>
	</div>		

	<h6 style="margin-top:12px"><?php echo substr(utf8_encode($row["titulo"]),0,75); ?>...</h6>
	<h4>
		<span class="ca-quote">&ldquo;</span>
		<span style="color:black"><?php echo substr(utf8_encode($row["contenido"]),0,143) ?>...</span>
	</h4>
	<a href="noticia.php?id=<?=$row['id_noticias']?>" class="ca-more" target="_blank">Leer mas...</a>

	</div>

		<div class="ca-content-wrapper">
			<div class="ca-content">
		<h6>Animals are not commodities</h6>
			<a href="#" class="ca-close">close</a>
				<div class="ca-content-text">
					<p>El acto de graduación estuvo presidido por el Presidente del Instituto, General Carlos Rotondaro, quien estuvo acompañado de la Directora General de Salud, María Antonieta Hurtado; el Director General de Recursos Humanos y Administración de Personal, Armando Pérez; así como autoridades administrativas y académicas de los centros asistenciales de la Gran Caracas.</p>
				</div>
				<ul>
					<li><a href="#">Read more</a></li>
				</ul>
			</div>
		</div>
	</div>
<?php } ?>	
	</div><!--Wrapper-->
</div><!--ca-container-->


<?php mysqli_close($conect); ?>

<script>
	$(document).on("ready",function(){
	
	
	$("#noticiero .ca-item:eq(0), #noticiero .ca-item:eq(1), #noticiero .ca-item:eq(2)").css({"display":"block"});
		$("#flecha_izquierda").on("click",function(){
			$("#noticiero .ca-item:eq(0)").css({"display":"none"});
			$("#noticiero .ca-item:eq(4)").css({"display":"block"});
		});

		$("#flecha_derecha").on("click",function(){
			$("#noticiero .ca-item:eq(0)").css({"display":"none"});
			$("#noticiero .ca-item:eq(2)").next().css({"display":"block"});
		});
		
	/*
		$('#ca-container').roundabout({
	    childSelector:"div", 
	    minOpacity:1, 
	    autoplay:true, 
	    autoplayDuration:5000, 
	    autoplayPauseOnHover:true
		});
	*/
	});
</script>