<?php include("application/database/conexion.php");?>
<div class="list_noticias">
<?php 
$query = "select * from noticias order by id_noticias desc";
$query = mysqli_query($conect, $query);
?>

<?php while ($row = mysqli_fetch_array($query, MYSQLI_ASSOC)) { ?>
	
<div class="media caja_noticias" style="border:1px solid #CCC;padding:16px;background:none repeat scroll 0% 0% rgba(250, 250, 250, 0.8);">
  <a class="pull-right">
   <?php if($row['imagen_principal'] != null){ ?>
   		<img class="media-object img_noticias" src="public/noticias/<?=$row['imagen_principal'];?>" style="cursor:pointer;" data-link="noticia.php?id=<?=$row['id_noticias']?>">
	<?php }else{?>
		<img src="fronted/img/logoivss.png" class="img_noticias" style="cursor:pointer;" data-link="noticia.php?id=<?=$row['id_noticias']?>"> 
	<?php } ?>
  </a>

  <div class="media-body">
    <h4 class="media-heading color_letra1 titulo_link" style="font-size:1.2em;cursor:pointer;" data-link="noticia.php?id=<?=$row['id_noticias']?>"><?=utf8_encode($row['titulo']); ?></h4>
    <p style="font-size:14px;line-height:21px;text-align:justify;padding:10px;"><?=substr(utf8_encode($row['contenido']),0,512); ?>...</p>      
  </div>

</div>

<?php } ?>
</div>

<script>
	$(document).on("ready",function(){
		$(".caja_noticias a:odd ").removeClass("pull-right").addClass("pull-left");

		$(".img_noticias,.titulo_link",this).on({mouseover:function(){
			$(this).attr({title:'Ver la noticia completa'});
		},click:function(){
			window.location.href = $(this).data("link");
		}
	});

	});
</script>