<?php 
	$id_noticia=(isset($_GET['id'])) ? $_GET['id'] : 9;
?>
<?php include("application/database/conexion.php");?>
<?php 
$query = "select * from noticias where id_noticias='$id_noticia' ";
$exe_query = mysqli_query($conect, $query);
?>

<?php while ($row = mysqli_fetch_array($exe_query, MYSQLI_ASSOC)) { ?>
<?php $id_new_foraneo = $row['id_noticias']; ?>	
	<h4 class="media-heading color_letra1" style="font-size:1.2em;">
		<b> <?=utf8_encode($row["titulo"]);?> </b>
	</h4>

<?php if($row['imagen_principal'] != null){ ?>
<p style="text-align:justify;text-indent:25px;line-height:25px;padding:21px 21px 0px 16px;">
    <img class="media-object img_detalle_noticia" src="public/noticias/<?=$row['imagen_principal'];?>" style="float:right;margin-left:25px;border:1px solid #CCC;border-radius:0px;">
    <?=utf8_encode($row["contenido"]);?>
</p>
	<?php }else{ ?>
  <p style="text-align:justify;line-height:21px;padding:21px 21px 0px 16px;">
	  <?=utf8_encode($row["contenido"]);?>
  </p>  
<?php } ?>
<?php } ?>


<?php #galeria de imagenes en la noticia. ?>

<?php 
$query2 = "select * from galeria_noticias where id_noticias='$id_new_foraneo' ";
$exe_query2 = mysqli_query($conect, $query2);
?>

<?php if(mysqli_num_rows($exe_query2) >= 1){ ?>
<div style="width:100%;height:16px;border-bottom:1px dotted grey;clear:both;"></div>
<div class="galeria" style="width:100%;height:auto;padding:16px;margin-top:16px;">
	<?php while ($foto = mysqli_fetch_array($exe_query2, MYSQLI_ASSOC)) { ?>
		<a href="public/noticias/galeria/<?=$foto['imagen']?>" class="boxer" title="" data-gallery="gallery">
			<img src="public/noticias/galeria/<?=$foto['imagen']?>" alt="<?=$foto['imagen']?>" style="width:150px;float:left;">
		</a>
	<?php } ?>
</div>

<?php } #if ?>
