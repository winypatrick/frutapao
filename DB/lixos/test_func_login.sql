create table `func` (
`id` int(11) not null,
`nome` varchar(29),
`funcao` varchar(20),
primary key (`id`));

CREATE TABLE  `login` (
	`id` int(11) AUTO_INCREMENT NOT NULL,
	`user` varchar(10),
	`senha` varchar(20),
	`per_op_turno` ENUM('Y','N') NOT NULL,
	`per_add_func` ENUM('Y','N') NOT NULL,
    `id_func` int(11) not null,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`id_func`) REFERENCES func(`id`)
);

create table `funcionario` (
`id` int(11) not null,
`nome` varchar(29),
`funcao` varchar(20),
`user` varchar(10),
`senha` varchar(20),
`per_op_turno` ENUM('Y','N') NOT NULL,
`per_add_func` ENUM('Y','N') NOT NULL,
primary key (`id`)
);