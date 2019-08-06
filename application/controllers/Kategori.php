<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kategori extends CI_Controller {


	function __construct(){
		parent::__construct();
	}

	public function index(){

		$data['view_kelas'] = $this->db->get("kelas")->result();

		$data['title'] = "Kategori Soal";
		$this->load->view('user/v_kategori',$data);
	}

	public function pertanyaan($id_kategori){

		$this->db->order_by('soal.id_kategori','random');
		$this->db->where('soal.id_kategori',$id_kategori);
		$this->db->join('kategori_soal','kategori_soal.id_kategori=soal.id_kategori');
		$sql = $this->db->get('soal');

		$data['view_pertanyaan'] = $sql->result();

		$rowPertanyaan = $sql->row();
		// var_dump($rowPertanyaan->kategori); exit();
		$title = $rowPertanyaan->kategori;

		$data['title'] = $rowPertanyaan->kategori;
		$this->load->view('user/v_pertanyaan',$data);
	}

	public function cek_jawaban(){
		// var_dump($this->input->post()); exit();
		$id_siswa= $this->session->userdata('id_siswa');
		$id_soal = $this->input->post('id_soal');
		$total = count($id_soal);
		$jawaban = $this->input->post('jawaban');

		$totalBenar = 0;
		$totalSalah = 0;
		for ($i=0; $i < $total; $i++) { 
			if(!empty($jawaban[$i])){
				$benar = $this->cek_soal_benar($id_soal[$i], $jawaban[$i]);
			}else{
				$benar = 0;
			}

			if($benar != 0){
				$totalBenar = $totalBenar + 1;
			}else{
				$totalSalah = $totalSalah + 1;
			}
		}

		$this->db->set('id_siswa',$id_siswa);
		$this->db->set('nilai',$totalBenar);
		$this->db->set('tgl_quiz',date('Y-m-d H:i:s'));
		$this->db->insert('nilai');

		$id_nilai=$this->db->insert_id();
		// var_dump($id_soal); exit();
		for ($j=1; $j <= $total; $j++) { 
			if(!empty($jawaban[$j])){
				$this->db->set('id_nilai',$id_nilai);
				$this->db->set('id_siswa',$id_siswa);
				$this->db->set('id_soal',$id_soal[$j]);
				$this->db->set('jawaban_siswa',$jawaban[$j]);
				$this->db->insert('riwayat_quiz');
			}else{
				$this->db->set('id_nilai',$id_nilai);
				$this->db->set('id_siswa',$id_siswa);
				$this->db->set('id_soal',$id_soal[$j]);
				$this->db->set('jawaban_siswa','');
				$this->db->insert('riwayat_quiz');

			}
		}

		redirect(base_url('Index/riwayat'));
	}

	public function cek_soal_benar($id_soal, $jawaban){

		$this->db->where('id_soal',$id_soal);
		$getJawaban = $this->db->get('jawaban')->row();

		$benarKok = $getJawaban->jawaban_benar;

		$benar = 0;
		if($benarKok == $jawaban){
			$benar = $benar + 1;
		}

		return $benar;

	}

	public function detail_nilai($id_nilai){

		$data['title']='detail nilai';

		$this->db->where('id_nilai',$id_nilai);
		$this->db->join('soal','soal.id_soal=riwayat_quiz.id_soal');
		$data['getSoal'] = $this->db->get('riwayat_quiz')->result();

		$this->db->where('id_nilai',$id_nilai);
		$data['rowNilai'] = $this->db->get('nilai')->row();
		$this->load->view('user/v_detail_riwayat',$data);

	}

}