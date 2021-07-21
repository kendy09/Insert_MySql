-- criando o banco de dados 
use db_rh;

-- criando tabela funcionarios;
create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255),
setor varchar(30),
cargo varchar(20),
cpf bigint(11),
salario double(7,2),
primary key(id)
);
-- inserindo os dados dos funcionarios
insert into tb_funcionarios(nome, setor,cargo,cpf,salario) values("Sergio","Recursos humanos","analista II",465678213311, 3700);
insert into tb_funcionarios(nome, setor,cargo,cpf,salario) values("Roberto","Projetos, sistemas, e telecomunicações","Engenheiro I",432132213311, 4500);
insert into tb_funcionarios(nome, setor,cargo,cpf,salario) values("Marta","Administração","Auxiliar adm",4990823334, 2100);
insert into tb_funcionarios(nome, setor,cargo,cpf,salario) values("Fernando","Tecnologia da informação","analista I",465678213311, 2600);
insert into tb_funcionarios(nome, setor,cargo,cpf,salario) values("Ricardo","Manutenção","Eletrotecnico",2357213311, 2600);

-- diminuindo os salarios 
update tb_funcionarios set salario = 1800 where id = 4;

-- selecionando os funcionarios que ganham mais de 2000
select *from tb_funcionarios where salario>2000;

-- selecionando os funcionarios que ganham menos que 2000
select *from tb_funcionarios where salario<2000;

-- selecionando os dados 
select *from tb_funcionarios;