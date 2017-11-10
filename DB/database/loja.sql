use frutapao;

CREATE TABLE IF NOT EXISTS `loja` (
	`id` INT AUTO_INCREMENT NOT NULL,
  `endereco` VARCHAR(50) NOT NULL,
  `data_inaugoracao` date not null,
  `rua` varchar(40) not null,
	`contacto` varchar(20) not null,
  primary key (`id`)
);

INSERT INTO loja VALUES
(null,'fazenda','2017-10-20','rua 10 fazenda',2234567),
(null,'Achada Santo Antonio','2017-10-25','rua Abreu Abril',2642323),
(null,'São Domingos','2017-11-10','rua Dixida Cabral',2093412);

CREATE TABLE IF NOT EXISTS `maquina` (
	`id` int AUTO_INCREMENT not null,
  `nome` varchar(50) not null,
  `usuario` varchar(20) not null,
  `loja` int not null,
  primary key (`id`),
  foreign key (`loja`) references loja(`id`)
);

INSERT INTO loja values (null,'terrasystem','ailton',1),
(null,'kitty','coyas',2);
