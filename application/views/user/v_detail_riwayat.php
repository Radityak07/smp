<?php $this->load->view ("user/header") ?>
<!--banner-->
<h4>Tanggal : <?php echo $rowNilai->tgl_quiz; ?></h4>
<h4>Nilai : <?php echo $rowNilai->nilai ?></h4>
<ul>
	<li> Tanda silang (<i class="fa fa-check"></i>) menunjukan jawaban siswa. </li>
	<li> Background Hijau adalah jawaban benar. </li>
</ul>
<hr>
<ol>
	<?php foreach ($getSoal as $key) {
	?>
		<li><?php echo $key->pertanyaan; ?>
			<ol type="a">
				<?php
					$this->db->where('id_soal',$key->id_soal);
					$rowJawaban = $this->db->get('jawaban')->row();
				?>
				<li>
					<span <?php if($rowJawaban->jawaban_benar=="A"){?> style="background: #47c157;"<?php } ?>><?php echo $rowJawaban->jawaban_a ?></span>
					<?php if($key->jawaban_siswa=="A"){?> <i class="fa fa-check"></i><?php } ?>
				</li>
				<li>
					<span <?php if($rowJawaban->jawaban_benar=="B"){?> style="background: #47c157;"<?php } ?>><?php echo $rowJawaban->jawaban_b ?></span>
					<?php if($key->jawaban_siswa=="B"){?> <i class="fa fa-check"></i><?php } ?>
				</li>
				<li>
					<span <?php if($rowJawaban->jawaban_benar=="C"){?> style="background: #47c157;"<?php } ?>><?php echo $rowJawaban->jawaban_c ?></span>
					<?php if($key->jawaban_siswa=="C"){?> <i class="fa fa-check"></i><?php } ?>
				</li>
				<li>
					<span <?php if($rowJawaban->jawaban_benar=="D"){?> style="background: #47c157;"<?php } ?>><?php echo $rowJawaban->jawaban_d ?></span>
					<?php if($key->jawaban_siswa=="D"){?> <i class="fa fa-check"></i><?php } ?>
				</li>
			</ol>
		</li>

<?php }  ?>

</ol>

<?php $this->load->view ("user/footer")?>