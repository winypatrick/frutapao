<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_turno extends CI_Model {

	function __construct(){
		parent::__construct();
}	


public function lista_funcionario_diponivel( ){

$this->db->select('*');
$res=$this->db->get('funcionario_text')->result();
return $res;
}

}

/* End of file model_turno.php */
/* Location: ./application/models/model_turno.php */