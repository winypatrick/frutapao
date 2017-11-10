<script src="<?php echo base_url(); ?>fich_jquery/turno.js"></script> 

 <!-- Content Header (Page header) -->
    <section class="content-header">
   <!--  tituo -->
       <!-- <h1>
        Fruto&Pão
        <small> Africa Business</small>
             </h1> -->
      <ol class="breadcrumb">
        <li><a href="<?= base_url();?>funcionario"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Turno</li>
      </ol>
      <br>
    </section>

    <!-- Main content -->
    <section class="content">
   <!-- Info boxes -->
    <!--   <div class="row">
    
     <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="info-box  hvr-grow">
          <span class="info-box-icon bg-yellow"><i class="fa fa-users"></i></span>
    
          <div class="info-box-content">
            <span class="info-box-text">Funcionarios</span>
            <span class="info-box-number">20</span>
          </div>
          /.info-box-content
        </div>
        /.info-box
      </div>
      /.col
      <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="info-box  hvr-grow">
          <span class="info-box-icon bg-red"><i class="fa fa-cubes"></i></span>
    
          <div class="info-box-content">
            <span class="info-box-text">Armazem </span>
            <span class="info-box-number">41,410</span>
          </div>
          /.info-box-content
        </div>
        /.info-box
      </div>
      /.col
    
      fix for small devices only
      <div class="clearfix visible-sm-block"></div>
    
      <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="info-box  hvr-grow">
          <span class="info-box-icon bg-green"><i class="fa fa-shopping-cart"></i></span>
    
          <div class="info-box-content">
            <span class="info-box-text">vendas</span>
            <span class="info-box-number">760</span>
          </div>
          /.info-box-content
        </div>
        /.info-box
      </div>
      /.col
      
       <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="info-box  hvr-grow">
          <span class="info-box-icon bg-aqua"><i class="fa fa-book"></i></span>
    
          <div class="info-box-content">
            <span class="info-box-text">Relatorios</span>
            <span class="info-box-number">90</span>
          </div>
          /.info-box-content
        </div>
        /.info-box
      </div>
      /.col
    </div>
    /.row -->

         <div class="row">
           <div class="col-md-5">
          <div class="box">
            <div class="box-header with-border label-success">
              <h3 class="box-title">Funcionarios Disponivel</h3>
          

              <div class="box-tools pull-right">
             <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>

               </button>

              </div>
            </div>
            
            <!-- box-body -->
            <div class="box-body">
            
              <table class="table table-striped table-condensed " id="tab_1">
                                  <thead id="thead_1">
                                 <th> Nome </th>
                                 <th> Funcao</th>
                                 <th> Pick</th>
                                 
                                     </thead>
                                     <tbody >
                                      
                                     </tbody>

                                     <tfoot>
                            <tr>
                              <th ></th>
                              <th ></th>
                              <th> pick</th>   
                            </tr>

                            </tfoot>

                                </table>
           

            </div>
           <!-- ./box-body -->


            <!-- box-footer -->
            <div class="box-footer">
          
            </div>
            <!-- /.box-footer -->
       
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
          <div class="col-md-7">
          <div class="box">
          <div class="box-header with-border label-warning">
          <h3 class="box-title">Turnos Formados</h3>
              
         
              <div class="box-tools pull-right">
             <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>

               </button>

              </div>
            </div>
            
            <!-- box-body -->
            <div class="box-body">
            
             <table class="table table-striped table-condensed " id="tabl">
                                  <thead id="thead1">
                                 <th> Nome </th>
                                 <th> Data</th>
                                 <th> Hora Entrada</th>
                                 <th> Hora Saida</th> 
                                 <th> Função</th>  
                                 <th> Loja </th> 
                                 <th> Periodo-Turno</th> 
                                 
                                     </thead>
                                     <tbody >
                                      
                                     </tbody>
                                </table>
           

            </div>
           <!-- ./box-body -->


            <!-- box-footer -->
            <div class="box-footer">
            </div>
            <!-- /.box-footer -->
       
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->

      </div>
      <!-- /.row -->

     <div class="col-sm-12">
 <!--  ******************************************* modal_ cliente ********************************************* -->

        <div class="col-md-12 modal fade " id="modal_pick"  >
        <div  class="modal-dialog modal-xs">
        <div id="myModal" class="modal-content " style="margin-top: 110px" >
         <form action="" id="form" method="post">
            <div class="modal-header label-info">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4><strong>Picagem Para Turno</strong> </h4>
                <input type="hidden" id="id_user_" name="id_cliente" >
            </div>

            <div class="modal-body">
            
               <div class="col-xs-4">
            <div class="form-group">
            <label for="antiga">Nome :</label>
            <input type="text" class="form-control" id="nome_" name="nome" placeholder="Digita nome completo " required>
            </div> 
            </div>

              <div class="col-xs-4">
            <div class="form-group">
            <label for="antiga">Função :</label>
            <select id="selecao" class="form-control" name="selecao" >
                <option value="1" selected="selected" disabled>Escolhe um</option>
                <option value="m">Responsavel</option>
                <option value="f">Assistente</option>
            </select>
            </div> 
            </div>

             <div class="col-xs-4">
            <div class="form-group">
            <label for="dt">Data :</label>
            <div class="input-group " >
            <input type="text" class="form-control" name="date" id="datetimepicker1">
            <div class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></div>
            </div>
            </div> 
            </div>

            <hr>

            <div class="col-xs-3">
            <div class="form-group">
            <label for="dt">Hora Entrada :</label>
            <div class="input-group " >
            <input type="text" class="form-control" name="date" id="timepicker_ent" style="background: #B4F3B4">
            <div class="input-group-addon"><i class="glyphicon glyphicon-time"></i></div>
            </div>
            </div> 
            </div>

            <div class="col-xs-3">
            <div class="form-group">
            <label for="dt">Hora Saida :</label>
            <div class="input-group " >
            <input type="text" class="form-control" name="date" id="timepicker_sai" style="background: #F37777">
            <div class="input-group-addon"><i class="glyphicon glyphicon-time"></i></div>
            </div>
            </div> 
            </div>

            <div class="col-xs-4">
            <div class="form-group">
            <label for="antiga">Loja :</label>
            <select id="selecao" class="form-control" name="selecao" >
                <option value="1" selected="selected" disabled>Escolhe um</option>
                <option value="m">Loja frut&pao, Fazenda </option>
                <option value="m">Loja frut&pao, Achada grande </option>
                <option value="m">Loja frut&pao, S.domigos </option>
            </select>
            </div> 
            </div>

             <div class="col-xs-2">
            <div class="form-group">
            <label for="antiga">Periodo :</label>
            <select id="selecao" class="form-control" name="selecao" >
                <option value="1" selected="selected" disabled>Escolhe um</option>
                <option value="m">1 °</option>
                <option value="m">2 °</option>
            </select>
            </div> 
            </div>
            <hr>
             <div class="col-xs-12">
            <div class="form-group">
            <label for="desc">Descricao de  funcionario:</label>
            <textarea class="form-control" name="des" id="des" rows="2"></textarea>
            <!-- <input rows="5"  type="" class="form-control" id="conferir" name="conferir" onkeyup="checarsenha()" placeholder="Digita novamente " required> -->
            </div> 
           </div>



            

          
           
           </fieldset>
           </div>
              <div class="col-md-12" id="feed">
               
             </div> 
           

          
            <div class="modal-footer">
                <!-- <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button> -->
                <button type="submit" id="send" class="btn btn-primary" > Incluir </button>
                </div>
</form>
     </div>
     </div>
     </div>
 <!-- ******************************************************************************************************* -->  
     </div>

      <!-- Main row -->
      <div class="row">
        <!-- Left col -->
        <div class="col-md-8">
       
          <div class="row">
            <div class="col-md-6">
           
            </div>
            <!-- /.col -->

            <div class="col-md-6">
             
                </div>
                <!-- /.box-body -->
               <!--  <div class="box-footer text-center">
                 <a href="javascript:void(0)" class="uppercase">View All Users</a>
               </div> -->
                <!-- /.box-footer -->
              </div>
              <!--/.box -->
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->

            </div>
          
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->

        <div class="col-md-4">

        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->


 