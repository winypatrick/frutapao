<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Turno extends CI_Controller {

	public function __construct()
  {
          parent::__construct();
          $this->load->model('model_turno', 'turno');
          
  }

	public function index()
	{
		
	}

	public function lista_funcionario_diponivel()
	{

		
 $pega=$this->turno->lista_funcionario_diponivel();

//partepe poi na datatable costumiza e fxtmb
  foreach ($pega as $k) {

     $r= array();
       $r[]='<span >'.$k->nome.'</span>'.'<a  style="float:right; margin-right:20px"  ></a>';
       
       $r[]='<span >'.$k->funcao.'</span>';

       $r[]= '<a class="fa fa-share" onclick="pick_turno(\''.$k->id_user.'\', \''.$k->nome.'\')"></a>';

      
       $dados []=$r;
      
     }

 $output = array('data' => $dados); 
 echo json_encode($output);

	}

}

/* End of file turno.php */
/* Location: ./application/controllers/turno.php */