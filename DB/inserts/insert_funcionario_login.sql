select * from tfuncionario;
delete from tfuncionario where id > 3;
update tfuncionario set id=3 where id=5;
select * from login;
desc tfuncionario;

select nome,bi,nif,data_nascimento,data_entrada,contato,funcao from funcionario inner join tfuncionario on funcionario.id_tfunc= tfuncionario.id;
select distinct user,senha from login inner join tfuncionario on login.id_login=tfuncionario.id;
insert into tfuncionario values(null,'gerente',null);

insert into funcionario values (1234,12334,'ailton Mendes duarte','1994-08-15','2017-10-20',null,9375986,2),
(36983,34553,'Winny Patrick,samething','1994-01-15','2017-10-20',null,9335342,2),
(39013,31573,'Oscar Borges','1994-06-15','2016-10-20',null,9331342,3),
(86343,37773,'Maria alves','1994-05-15','2016-11-20',null,9332342,1);

insert into tfuncionario values (null,'Assistente',null),(null,'Responsavel',null);
insert into login values (null,'ailton','terrasystem','Y','Y',2),
(null,'winny','merda','Y','Y',2),
(null,'maria','maria','N','N',1),
(null,'oscar','ABC','N','Y',3);