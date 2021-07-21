create database db_ecommerce;
create database db_ecommerce;
use db_ecommerce;
create table tb_produtos(
id bigint auto_increment, 
nome varchar(30),
categoria varchar(15),
quantidade int(3),
preco decimal(4,2),
PRIMARY KEY(id)
);
-- modficiando as casas decimais no preço
alter table tb_produtos modify preco decimal(7,2);

-- inserindo os dados na tabela
insert into tb_produtos (categoria, nome, quantidade, preco)values("eletronico", "notebook", "1000", "5700");
insert into tb_produtos (categoria, nome, quantidade, preco)values("eletrodomestico", "micro-ondas", "700", "700");
insert into tb_produtos (categoria, nome, quantidade, preco)values("moveis", "armario", "300", "1200");
insert into tb_produtos (categoria, nome, quantidade, preco)values("eletronico", "desktop", "300", "4000");
insert into tb_produtos (categoria, nome, quantidade, preco)values("eletronico", "celular", "1200", "2100");
insert into tb_produtos (categoria, nome, quantidade, preco)values("moveis", "sofa", "300", "2100");
insert into tb_produtos (categoria, nome, quantidade, preco)values("eletrodomestico", "aspirador de pó", "600", "450");

-- os preços ficaram muito altos vou diminuir um pouco
update tb_produtos set preco = 400 where id =2;

-- mostrando os produtos com mais de 500
select *from tb_produtos  where preco>500;

-- mostrando os produtos com menos de 500
select*from tb_produtos where preco<500;

-- mostrando a tabela inteira 
select *from tb_produtos;