<?php $this->load->view ("user/header") ?>
<form action="<?php echo base_url('Kategori/cek_jawaban') ?>" method="post">
<ol>
	<?php
	$no = 1;
		foreach ($view_pertanyaan as $key) {
	?>
		<li><?php echo $key->pertanyaan;
		?>
		<input type="hidden" name="id_soal[<?php echo $no ?>]" id="id_soal[<?php echo $no ?>]" value="<?php echo $key->id_soal; ?>">
			<ol type="a">
				<?php 
				$this->db->where('id_soal',$key->id_soal);
					$getJawaban = $this->db->get('jawaban')->result();
					foreach ($getJawaban as $row) {
			?>
				<li>
					<input type="radio" name="jawaban[<?php echo $no?>]" value="A">
					<?php echo $row->jawaban_a ?>
						
				</li>
				<li>
					<input type="radio" name="jawaban[<?php echo $no?>]" value="B">
					<?php echo $row->jawaban_b ?>
						
				</li>
				<li>
					<input type="radio" name="jawaban[<?php echo $no?>]" value="C">
					<?php echo $row->jawaban_c ?>
						
				</li>
				<li>
					<input type="radio" name="jawaban[<?php echo $no?>]" value="D">
					<?php echo $row->jawaban_d ?>
						
				</li>
		<?php } ?>
			</ol>
		</li>
	<?php
		$no++;
		}
	 ?>
</ol>
<input type="submit" name="selesai" value="Selesai" class="btn btn-primary">
</form>                           
<?php $this->load->view ("user/footer")?>