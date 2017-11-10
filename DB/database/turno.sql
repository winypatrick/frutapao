USE frutapao;

CREATE TABLE IF NOT EXISTS `turno` ( -- | funcionario |-----<trabalha>-----| loja |
	`bi` int(20) not null, -- pk turno
  `nif` int(20) not null,-- pk turno
	`loja` int(20) NOT NULL,-- pk turno
  `data_time` datetime not null, -- pk turno time_in será tirado e permite a execusao de turnos duplos
  `hora_out` time not null, -- fechamento do turno
  `congelados` text not null, -- relatorio(rel 1:1)
  `Frescos_padaria` text not null, -- relatorio(rel 1:1)
  `stock_armazem` text not null, -- relatorio(rel 1:1)
  `caixa_equipamentos` text not null, -- relatorio(rel 1:1)
  `funcao` ENUM('R','A') default 'A', -- o responsavel sempre será quem efetou login
	PRIMARY KEY (`loja`,`nif`,`bi`,`data_time`),
	FOREIGN KEY (`loja`) REFERENCES loja(`id`),
  FOREIGN KEY (`bi`) REFERENCES funcionario(`bi`),
  FOREIGN KEY (`nif`) REFERENCES funcionario(`nif`)
);
