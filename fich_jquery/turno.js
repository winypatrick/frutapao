//========================================
//var base='http://192.168.43.50/frut&pao/';
var base='http://localhost/frut&pao/';
//========================================



/*===========================================================================Data-table===================================*/
  var tabela_turno=$('#tab_1').DataTable(
{
	
'paging':true,
'info':false,
'filter':true,
"pageLength": 5,
'statesave':false,
"responsive":true,
  "autoWidth": false,
  "processing": true,
 "oLanguage": {
        "sEmptyTable":     "Nenhum registro encontrado na tabela",
        "sInfo": "Mostrar _START_ até _END_ do _TOTAL_ registros",
        "sInfoEmpty": "Mostra 0 até 0 de 0 Registros",
        "sInfoFiltered": "(Filtrar de _MAX_ total registros)",
        "sInfoPostFix":    "",
        "sInfoThousands":  ".",
        "sLengthMenu": "Mostrar _MENU_ ",
        "sLoadingRecords": "Carregando...",
        "sProcessing":     "Processando...",
        "sZeroRecords": "Nenhum registro encontrado",
        "sSearch": "",
        "oPaginate": {
            "sNext": "Prox",
            "sPrevious": "Ant",
            "sFirst": "Primeiro",
            "sLast":"Ultimo"
        },
        "oAria": {
            "sSortAscending":  ": Ordenar colunas de forma ascendente",
            "sSortDescending": ": Ordenar colunas de forma descendente"
        }
    },
     "search": {
    "smart": false
  },
'ajax':{

"url":base+'turno/lista_funcionario_diponivel',
"type":'post',
//dataSrc:''


error: function(){
                        $("#tabl").html("");
                        $("#tabl").append('<tbody class="employee-grid-error"><tr><th colspan="3">Nenhum Registro incluido</th></tr></tbody>');
                       
                    }

},



"order":[[0, "asc"]], //ordenar coluna de coluna 0 que e id_cid por ordem
});

//isso e pra colocar filtro dps de colocar foot em view mportante issso 
  $('#tab_1 tfoot th').each( function () {
    var title = $(this).text();
    $(this).html( '<input  class="filtro" style="width: 100%" type="text" placeholder="" />' );  
  } );

  $('#tab_1 tfoot th:last-child input').css('display','none'); // oculta ultimo input

 tabela_turno.columns().every( function () {
        var that = this;

        $( '.filtro', this.footer() ).on( 'keyup change', function () {
          if ( that.search() !== this.value ) {
            that
            .search( this.value )
            .draw();
          }
        } );
      } );

 /*===========================================================================////////////////////////////////// */

 function pick_turno(id_, nome){
 	/*alert('merda');*/

  $('#nome_').val(nome);
  $('#id_user_').val(id_);

 	$('#modal_pick').modal('show');

 }

/*====================================================== pick_data================================================*/
   $(function (){
  var today = new Date();
   $('#datetimepicker1').datepicker({
    // "setDate", new Date(),
     language:'pt-BR', 
     format: 'dd/mm/yyyy',
     startDate:new Date(),
     endDate: new Date(today.getFullYear(), today.getMonth(), today.getDate())
   }); //pega data autal

  $('#timepicker_ent').bootstrapMaterialDatePicker
      ({
        date: false,
        shortTime: false,
        format: 'HH:mm'
      });

   $('#timepicker_sai').bootstrapMaterialDatePicker
      ({
        date: false,
        shortTime: false,
        format: 'HH:mm'
      });   


    
   });

/*   ================================================pick=================================================*/