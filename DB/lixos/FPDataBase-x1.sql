
CREATE DATABASE `FrutaPao`;
use FrutaPao;

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
  `funcao` int NOT NULL,
  `obs` text,
  PRIMARY KEY (`bi`)
);

CREATE TABLE IF NOT EXISTS `maquina` (
	`id` int AUTO_INCREMENT not null,
    `os` varchar(40) not null,
    `usuario` varchar(20) not null,
    `host` varchar(20) not null,
    `loja` int not null,
    primary key (`id`),
    foreign key (`loja`) references loja(`id`)
);

CREATE TABLE IF NOT EXISTS `turno` (
	`id` int auto_increment not null,
 -- `data` date not null,
    `congelados` text , -- esse
	`frescos_padaria` text , -- esse
	`stock_armazem` text ,-- esse
	`caixa_equipamentos` text , -- e esse pertence ao relatorio
	`loja` int NOT NULL,
	PRIMARY KEY (`id`),
	FOREIGN KEY (`loja`) REFERENCES loja(`id`)
);



CREATE TABLE IF NOT EXISTS `turno_funcionario` ( -- participa de um turno
  `id_t` int NOT NULL,
  `bi_f` int NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `funcao` ENUM('R','A') not null, --  emum(R,A) -> Responsavel , Assistente (de turno)
  PRIMARY KEY (`id_t`,`bi_f`),
  FOREIGN KEY (`id_t`) REFERENCES turno(`id`),
  FOREIGN KEY (`bi_f`) REFERENCES funcionario(`bi`)
);

CREATE TABLE IF NOT EXISTS `login` (
	`id` int(11) AUTO_INCREMENT NOT NULL,
	`user` varchar(10),
	`senha` varchar(20),
	`per_op_turno` ENUM('Y','N') NOT NULL,
	`per_add_func` ENUM('Y','N') NOT NULL,
  --  `per_login` ENUM('Y','N') NOT NULL,
    `funcionario` int not null,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`funcionario`) REFERENCES funcionario(`bi`)
);
