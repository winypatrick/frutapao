
CREATE DATABASE `FrutaPao`;
USE FrutaPao;

CREATE TABLE IF NOT EXISTS `loja` (
	`id` int auto_increment not null,
  `endereco` varchar(50) not null,
  `data_inaugoracao` date not null,
  `nome` varchar(40) not null,
	`contacto` varchar(20) not null,
  primary key (`id`)
);

CREATE TABLE IF NOT EXISTS `funcionario` (
	`bi` int NOT NULL,
	`nif` int NOT NULL unique,
	`nome` varchar(50) NOT NULL,
	`data_nascimento` date NOT NULL,
	`data_entrada` date NOT NULL,
	`data_saida` date,
	`contato` varchar(20) NOT NULL,
	`funcao` varchar(40) NOT NULL, -- assistente, responsavel, gerente
	`email` varchar(20),
	`senha` varchar(20),
  `morada` varchar(40),
	`obs` text,-- descridao
  `sexo` ENUM('M','F') default 'F' not null,
	`foto` varchar(50),
	PRIMARY KEY (`bi`)
);

CREATE TABLE IF NOT EXISTS `maquina` (
	`id` int AUTO_INCREMENT not null,
  `os` varchar(40) not null,
  `usuario` varchar(20) not null,
  `host` varchar(20) not null,-- nome da da maquina
  `loja` int not null,
  primary key (`id`),
  foreign key (`loja`) references loja(`id`)
);

CREATE TABLE IF NOT EXISTS `turno` ( -- | funcionario |-----<trabalha>-----| loja |
	`func` int not null,
	`loja` int NOT NULL,
  `data` date not null,
  `hora_in` time not null,
  `hora_out` time not null,
  `funcao` ENUM('R','A'),
  `turno` smallint not null, -- 1- primeiro turno, 2- segundo turno
	PRIMARY KEY (`loja`,`func`),
	FOREIGN KEY (`loja`) REFERENCES loja(`id`),
  FOREIGN KEY (`func`) REFERENCES funcionario(`bi`)
);

CREATE TABLE IF NOT EXISTS `relatorio` (
	`id` int not null,
  `congelados` text not null,
  `Frescos_padaria` text not null,
  `stock_armazem` text not null,
  `caixa_equipamentos` text not null,
  `id_loja` int not null,
  `id_func` int not null,
	primary key (`id`),
  foreign key (`id_loja`) references turno(`loja`),
  foreign key (`id_func`) references turno(`func`)
);

CREATE TABLE IF NOT EXISTS `func_avalia` (
	`func` int not null,
  `avalia` int not null,
  `data` date not null,
  `hora` time not null,
  primary key (`func`,`avalia`),
  foreign key (`func`) references funcionario(`bi`),
  foreign key (`avalia`) references avaliacao(`id`)
);


CREATE TABLE IF NOT EXISTS `avaliacao` (
	`id` int not null,
  primary key (`id`)
);

INSERT INTO `funcionario` (`bi`, `nif`, `nome`, `data_nascimento`, `data_entrada`, `data_saida`, `contato`, `funcao`, `user`, `senha`, `obs`) VALUES
(1234, 4321, 'Ailton Mendes Duarte', '1994-08-15', '2017-10-20', NULL, '3589335986', 0, 'ailton', 'ailtonduarte', 'programador'),
(1274, 4391, 'Oscar Borges', '1988-08-15', '2016-10-20', NULL, '358934586', 0, 'oscar', 'oscarborges', NULL),
(1324, 3321, 'Winny Patrick Tavares Fernandes', '1994-06-29', '2017-10-20', NULL, '3589361450', 0, 'winny', 'winnypatrick', 'programador');
