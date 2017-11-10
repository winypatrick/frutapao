 var feedback=$('#feed'); 




$(document).ready(function (){
$("#senha_1").keyup(change_());  
$("#senha_2").keyup(change_());
$("#senha_3").keyup(change_());
});

function change_(){
var senha=$("#senha_2").val();
var senha_antigo=$("#senha_1").val();
var conferir=$("#senha_3").val();

if(senha=='' || conferir=='' ){
  $("#feed").html("<div style='text-align:center;  font-size: 12px' class='small label label-warning '> <span style='size:100px'>Campos vazios preenche-los</span></div>");
  document.getElementById("mudar").disabled=true;
  feedback.show();
}

else{

if(senha!=conferir){
  $("#feed").html("<div style='text-align:center;  font-size: 12px' class='small label label-danger'> <span>Senha nao corresponde </span></div>");
  document.getElementById("mudar").disabled=true;
  feedback.show();
}

else {

  $("#feed").html("<div style='text-align:center;  font-size: 12px' class='small label label-success'> <span> Senha correspondente </span></div>");
  feedback.show();

  if (senha_antigo!='') {
  document.getElementById("mudar").disabled=false;
  }
  else
  {
    document.getElementById("mudar").disabled=true;
  }

  setTimeout(function(){
        feedback.hide();
     },1000);
}

}

}

function muda_senha(){
// alert('winy');
var senha_=$("#senha_2").val();
var senha_antigo_=$("#senha_1").val();

  $.post(base+'funcionario/mudar_senha', 
  {
      parm1:senha_antigo_,
      parm2:senha_,
  },
   function(data) {

   // alert(data);

    if(data==true)
    {  
       $('#modal_mudar_senha').modal('hide');
       limpa_muda_senha();
        swal({
        title:"",
        text:"Senha foi alterado!",
        type:"success",
        timer:2000,
        showConfirmButton:false,
   });
     
    }

    else
    {$('#modal_mudar_senha').modal('hide');
    limpa_muda_senha();
        swal({
        title:"",
        text:"senha nao foi alterado!",
        type:"error",
        timer:2000,
        showConfirmButton:false,
  });

    }

   
});

}

function limpa_muda_senha(){
  $("#senha_1").val('');
  $("#senha_2").val('');
  $("#senha_3").val('');
}


