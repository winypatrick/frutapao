--  need to check (sair)
insert into maquina values (null,'windows 8 64 bit','FP_fazenda','desktop_fazenda2'),
(null,'windows 8 64 bit','FP_fazenda','desktop_fazenda2'),
(null,'windows 8 64 bit','FP_tchada','desktop_Achada S.Filipe'),
(null,'windows 8 64 bit','FP_tchada','desktop_Achada S.Filipe2'),
(null,'windows 10 64 bit','FP_S.Domingos','desktop_S.Domingos'),
(null,'windows 10 64 bit','FP_S.Domingos','desktop_S.Domingos2');
-- depois da revisão
insert into m_l values (1,1),(2,1),(3,2),(4,2),(5,3),(6,3),(7,4),(8,4);

select * from m_l;
select * from maquina;

select * from loja;
insert into maquina values (null,'linux fedora 27','adidas_coyas','TerraSystem');

select loja.local, loja.endereco, maquina.usuario, maquina.os from loja, maquina inner join m_l where loja.id=m_l.id_l and maquina.id=m_l.id_m;