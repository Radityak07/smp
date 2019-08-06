<?php $this->load->view ("user/header") ?>

<ol>
	<?php
		foreach ($view_kelas as $row) {
	
	?>
		<li><?php echo $row->nama_kelas; ?>
			<ul>
				<?php 
					$this->db->where('id_kelas',$row->id_kelas);
					$getMapel = $this->db->get('mapel')->result();

					foreach ($getMapel as $rowMapel) {
					?>
						<li><?php echo $rowMapel->nama_mapel; ?>
							<ol>
								<?php $this->db->where('id_mapel',$rowMapel->id_mapel);
										$getKategori = $this->db->get('kategori_soal')->result();
										foreach ($getKategori as $rowKategori ) {
											echo "<li><a href='".base_url('Kategori/pertanyaan')."/".$rowKategori->id_kategori."'>".$rowKategori->kategori."</a></li>";
										}
								 ?>
							</ol>
						</li>
					<?php
					}
				 ?>
			</ul>
		</li>
	<?php
	
		}
	?>
</ol>
                                   
<?php $this->load->view ("user/footer")?>