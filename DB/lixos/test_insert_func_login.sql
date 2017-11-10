select * from funcionario;
select * from login;
select * from func;
select distinct func.id, nome, funcao, user, senha, id_func from func inner join login on login.id_func=func.id;

insert into funcionario values (1,'Ailton Mendes','responsavel','ailton','mendes','Y','Y'),
(2,'Ailton duarte','assistente','ailton','duarte','N','N');

insert into func values (1,'Ailton Mendes','responsavel'),
(2,'Ailton Duarte','Assistente'),(3,'Ailton Duarte','Assistente');

insert into login values (null,'ailton','passe','Y','Y',1),(null,'ailton','passe','Y','Y',2);