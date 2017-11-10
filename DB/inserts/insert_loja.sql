insert into loja values (null,'fazenda','2017-10-20','rua 10 fazenda',1),
(null,'fazenda','2017-10-22','rua 10 fazenda',2),
(null,'fazenda','2017-10-20','rua 10 fazenda',1),
(null,'fazenda','2017-10-20','rua 10 fazenda',1);

select * from loja;
select * from loja inner join maquina on loja.id=maquina.id;