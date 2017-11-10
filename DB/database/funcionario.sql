USE frutapao;

CREATE TABLE IF NOT EXISTS `categoria` (
  `id` INT AUTO_INCREMENT NOT NULL,
  `funcao` VARCHAR(40) NOT NULL,
  `salario` DOUBLE(7,2) NOT NULL,
	PRIMARY KEY (`id`)
);
 INSERT INTO categoria VALUES
  (NULL,'Responsavel',20000.00),
  (NULL,'Assistente',15000.00),
  (NULL,'Gerente',40000.00);


CREATE TABLE IF NOT EXISTS `funcionario` (
	`bi` INT(20) NOT NULL,
	`nif` INT(20) NOT NULL,
	`nome` VARCHAR(50) NOT NULL,
	`data_nascimento` DATE NOT NULL,
	`data_entrada` DATE NOT NULL,-- a data em que foi contratada
	`data_saida` DATE, -- a data em que deixou de trabalhar na fruta e pao
	`contato` VARCHAR(20) NOT NULL,
	`funcao` INT, -- referenci a tabela categoria( contem as funções dos funcionarios)
	`email` varchar(50), -- NÃO OBRIGATORIO equivale ao username
	`senha` varchar(255), -- NÃO OBRIGATORIO
  `morada` varchar(40) NOT NULL,
	`obs` text,-- UMA BREVE  descridao do funcionario
  `sexo` ENUM('M','F') DEFAULT 'F',
	`foto` VARCHAR(50),
	PRIMARY KEY (`bi`,`nif`),
  FOREIGN KEY (`funcao`) REFERENCES categoria(`id`)
);

INSERT INTO funcionario VALUES
(123465,122334456,'Ailton Mendes Duarte','1994-08-15','2017-10-20',null,9335986,
  1,'adidas.coyas@gmail.com',md5('terrasystem'),'Latada','tamanho media, estudante','M',null);
