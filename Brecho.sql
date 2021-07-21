
SELECT * FROM db_brecho.tb_produtos;

alter table tb_produtos change nome nomeproduto varchar(255);

select *from tb_produtos where nomeproduto = "Body";

select *from tb_produtos where preco >15;

alter table tb_produtos add descricao varchar(255) ;

select * from tb_produtos;

alter table tb_produtos drop descricao;