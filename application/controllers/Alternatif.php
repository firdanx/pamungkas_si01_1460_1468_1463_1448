<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Alternatif extends CI_Controller
{
    function __construct()
    {
        parent::__construct();        
        $this->load->library('Form_validation');
        $this->load->library('M_db');
		$this->load->model('Sekolah_model','mod_sekolah');
		$this->load->model('Kriteria_model','mod_kriteria');
		$this->load->model('Alternatif_model','mod_alternatif');
		$this->load->library('Ion_auth');
		ceklogin();

    }
    
    function index()
    {
 
    	$sql="SELECT alternatif.id_alternatif,sekolah.id_siswa,sekolah.nama_siswa,sekolah.alamat_siswa, sekolah.no_telpon, alternatif.status FROM alternatif LEFT JOIN sekolah ON alternatif.id_sekolah = sekolah.id_siswa ";
        $data['data']=$this->m_db->get_query_data($sql);
        $this->template->load('template/backend/dashboard', 'alternatif/alternatif_list', $data);
    }

    function create()
    {
    			
			$id_siswa=$this->input->post('id_siswa');
			$kriteria=$this->input->post('kriteria');
			$this->mod_alternatif->alternatif_add($id_siswa,$kriteria);

			$d2=$this->m_db->get_data('alternatif');
			if(!empty($d2))
			{
				$listSekolah="";
				foreach($d2 as $r)
				{
					$listSekolah.=$r->id_sekolah.",";
				}
				$listSekolah=substr($listSekolah,0,-1);
				
				$sql="Select * from sekolah Where id_siswa NOT IN ($listSekolah)";
				$d['sekolah']=$this->m_db->get_query_data($sql);
				$d['kriteria']=$this->mod_kriteria->kriteria_data();
	        	$this->template->load('template/backend/dashboard', 'alternatif/alternatif_form', $d);
			}else{

	        $d['sekolah']=$this->mod_sekolah->sekolah_data();
	        $d['kriteria']=$this->mod_kriteria->kriteria_data();
	        $this->template->load('template/backend/dashboard', 'alternatif/alternatif_form', $d);
	    }
		
	}

	function hapus()
	{
		$id=$this->input->get('alternatif');
		if($this->mod_alternatif->alternatif_delete($id)==TRUE)
		{
			redirect('alternatif');
		}else{
			redirect('alternatif');
		}
	}
    
}
