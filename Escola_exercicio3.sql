use db_escola;

create table tb_Alunos (
id bigint auto_increment,
nome varchar(30),
serie varchar (3),
matematica decimal(4,2),
portuges decimal(4,2),
faltas smallint(3),
PRIMARY KEY (id)
);
-- modificando as casa dos numeros decimais
alter table tb_Alunos modify matematica decimal(3,1);

-- alterando a materia de portuges para portugues;
alter table tb_Alunos change portuges portugues decimal(3,1);

-- inserindo os dados dos alunos
insert into tb_Alunos(nome, serie, matematica, portugues, faltas) values("Adriano","8ºD", 6.7 , 8.9, 10);
insert into tb_Alunos(nome, serie, matematica, portugues, faltas) values("Ana","1ºD",7.0, 10, 4);
insert into tb_Alunos(nome, serie, matematica, portugues, faltas) values("Bianca","2ºE",10 ,3.5, 20);
insert into tb_Alunos(nome, serie, matematica, portugues, faltas) values("Bruna","5ºA",9.0 , 7.8, 8);
insert into tb_Alunos(nome, serie, matematica, portugues, faltas) values("Richard","4ºF",6.7 ,3.2, 3);
insert into tb_Alunos(nome, serie, matematica, portugues, faltas) values("Lorenzo","6ºB",8.9 ,7.9, 9);
insert into tb_Alunos(nome, serie, matematica, portugues, faltas) values("Cristiano","7ºA",4.7 ,7.9, 5);

-- mostrando as notas maiores que 5
select *from tb_Alunos where matematica >=7;
select *from tb_Alunos where portugues>=7;

-- mostrando as notas menos que 5
select *from tb_Alunos where matematica <7;
select *from tb_Alunos where portugues <7;