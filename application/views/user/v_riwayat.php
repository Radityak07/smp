<?php $this->load->view ("user/header") ?>
<!--banner-->
<ol>
	<?php foreach ($get_histori as $key) {
	?>
		<li><a href="<?php echo base_url('Kategori/detail_nilai')."/".$key->id_nilai ?>"><?php echo $key->tgl_quiz ?> | <?php echo $key->nilai ?></a></li>

<?php }  ?>

</ol>

<?php $this->load->view ("user/footer")?>