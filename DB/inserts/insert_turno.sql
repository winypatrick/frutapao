select * from turno;
select * from loja;
select loja.local, loja.endereco, turno.id from loja inner join turno on loja.id=turno.id_loja;

insert into turno values (null,'dasda asam asa','dasdadasddadd','asdadadadad','asdadadsdad',1),
(null,'dasda asam asa','dasdadasddadd','asdadadadad','asdadadsdad',2),
(null,'dasda asam asa','dasdadasddadd','asdadadadad','asdadadsdad',3),
(null,'dasda asam asa','dasdadasddadd','asdadadadad','asdadadsdad',4),
(null,'dasda asam asa','dasdadasddadd','asdadadadad','asdadadsdad',1),
(null,'dasda asam asa','dasdadasddadd','asdadadadad','asdadadsdad',1),
(null,'dasda asam asa','dasdadasddadd','asdadadadad','asdadadsdad',2),
(null,'dasda asam asa','dasdadasddadd','asdadadadad','asdadadsdad',2),
(null,'dasda asam asa','dasdadasddadd','asdadadadad','asdadadsdad',4),
(null,'dasda asam asa','dasdadasddadd','asdadadadad','asdadadsdad',3);