<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Index extends CI_Controller {


	function __construct(){
		parent::__construct();
	}

	public function index()
	{
		$data['title']="Beranda";
		
		$this->load->view('user/home',$data);
	}
	public function tentang(){

		$data['title']="Tentang";

		$this->load->view('user/v_tentang',$data);
	}
	public function riwayat(){
		$data['title']="Riwayat";
		$this->db->where('id_siswa',$this->session->userdata('id_siswa'));
		$data['get_histori']=$this->db->get('nilai')->result();
		$this->load->view('user/v_riwayat',$data);
	}
	public function materi(){

		$data['title']="materi";
		$this->db->order_by('nama_kelas','asc');
		$data['materi']=$this->db->get('kelas')->result();
		$this->load->view('user/v_materi',$data);
	}
	public function soal(){

		$data['title']="soal";

		$this->load->view('user/v_soal',$data);
	}
	public function pendaftaran(){

		$data['title']="pendaftaran";

		$this->load->view('user/v_pendaftaran',$data);
	}
	public function masuk(){

		$data['title']="masuk";

		$this->load->view('user/v_masuk',$data);
	}
	public function proses_login(){
		$nis = $this->input->post('nis');
		$password = $this->input->post('password');

		$this->db->where('nis',$nis);
		$this->db->where('password',$password);
		$check_siswa=$this->db->get('siswa')->row();
		// var_dump($check_siswa);
		// exit();
		if($check_siswa ){
			$this->session->set_userdata('id_siswa', $check_siswa->id_siswa);
			$this->session->set_userdata('nama', $check_siswa->nama);
			$data = array(
                'notif'=>true, 
                'pesan'=>"Login berhasil.", 
                'type'=>'success'
            );
            
            $this->session->set_flashdata($data);
		}else{

			$data = array(
                'notif'=>true, 
                'pesan'=>"Periksa kembali Username dan Password anda.", 
                'type'=>'warning'
            );
            
            $this->session->set_flashdata($data);
            // print_r($this->session->flashdata()); die();
		}

		redirect(base_url('Index'));
	}

	public function search(){
		$search = $this->input->post('search');
		$type = $this->input->post('type');
		// echo $type; die();

		if($type=="guru"){

			$data['title']="Search Guru";
			$this->db->like('guru.nama',$search);
			$this->db->join('guru','guru.id_guru=pengajar.id_guru','left');
			$this->db->join('kelas','kelas.id_kelas=pengajar.id_kelas','left');
			$this->db->join('mapel','mapel.id_mapel=pengajar.id_mapel','left');
			$this->db->join('materi','mapel.id_mapel=materi.id_mapel','left');
			$this->db->join('kategori_soal','kategori_soal.id_mapel=mapel.id_mapel','left');
			$getData = $this->db->get('pengajar')->result();

		}elseif($type=="kelas"){

			$data['title']="Search Kelas";
			$this->db->like('kelas.nama_kelas',$search);
			$this->db->join('mapel','mapel.id_kelas=kelas.id_kelas','left');
			$this->db->join('materi','mapel.id_mapel=materi.id_mapel','left');
			$this->db->join('kategori_soal','kategori_soal.id_mapel=mapel.id_mapel','left');
			$getData = $this->db->get('kelas')->result();

		}elseif($type=="mapel"){

			$data['title']="Search Mata Pelajaran";
			$this->db->like('mapel.nama_mapel',$search);
			$this->db->join('mapel','mapel.id_kelas=kelas.id_kelas','left');
			$this->db->join('materi','mapel.id_mapel=materi.id_mapel','left');
			$this->db->join('kategori_soal','kategori_soal.id_mapel=mapel.id_mapel','left');
			$getData = $this->db->get('kelas')->result();

		}elseif($type=="soal"){

			$data['title']="Search Soal";
			$this->db->like('kategori_soal.kategori',$search);
			$this->db->join('mapel','mapel.id_mapel=kategori_soal.id_mapel','left');
			$this->db->join('materi','mapel.id_mapel=materi.id_mapel','left');
			$this->db->join('kelas','mapel.id_kelas=kelas.id_kelas','left');
			$getData = $this->db->get('kategori_soal')->result();

		}elseif($type=="materi"){
			//sama kodingan sama hafsah
			$data['title']="Search Materi";
			$this->db->like('kategori_soal.kategori',$search);
			$this->db->join('mapel','mapel.id_mapel=kategori_soal.id_mapel','left');
			$this->db->join('materi','mapel.id_mapel=materi.id_mapel','left');
			$this->db->join('kelas','mapel.id_kelas=kelas.id_kelas','left');
			$getData = $this->db->get('kategori_soal')->result();

		}

		// var_dump($getData); die();
		$data['data_search'] = $getData;
		$data['type'] = $type;
		$this->load->view('user/v_search',$data);

		
	}

	public function profile(){
		$data['title']='profile';
    	$id_siswa = $this->session->userdata('id_siswa');
		$this->db->where('id_siswa',$id_siswa);
		$data['get_siswa'] = $this->db->get('siswa')->row();
		$this->load->view('user/v_profile',$data);

	}

	public function keluar(){
		$this->session->sess_destroy();
		redirect(base_url());
	}

	public function ubahPassword(){
		// print_r($_POST);
		$password = $this->input->post('password');
		$id_siswa = $this->input->post('id_siswa');

		if(empty($password)){
			redirect(base_url('Index/profile'));
		}else{
			$data = array(
                'notif'=>true, 
                'pesan'=>"Password berhasil diubah.", 
                'type'=>'success'
            );
            
            $this->session->set_flashdata($data);

			$this->db->set('password',$password);
			$this->db->where('id_siswa',$id_siswa);
			$this->db->update('siswa');
			redirect(base_url('Index/profile'));
		}
	}
	
	

	
		
}