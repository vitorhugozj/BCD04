create database loja_de_carros;

use loja_de_carros; 

create table carros
(
 id_car integer primary key,
 nome varchar (500),
 preco numeric,
 descricao varchar(100),
 categoria varchar(100),
 qtd_estoque integer
);

insert into carros(id_car, nome, preco, descricao, categoria, qtd_estoque)values
(1,"Monza" , 5700, "Chevrolet Monza 1988 44Km", "Sedan", 4),
(2,"Ford Focus" , 33000, "Ford Focus 2015 66Km", "Hatche Médio", 2),
(3,"Civic" , 102000, "Honda Civic 2020", "Sedan", 3),
(4,"Sandero" , 270000, "Renault Sandero 2019 88Km", "Hatche Médio", 9),
(5,"Palio" , 13000, "Fiat Palio 2010 77Km", "Sedan", 4),
(6,"Golf GTI" , 122000, "Volkswagen Golf GTI 2023 0Km", "Sport", 4);



create table clientes
(
 id_client integer primary key,
 nome varchar (500),
 cpf numeric, 
 endereco varchar(100),
 tel_contato numeric,
 email varchar(100)
);

insert into clientes(id_client, nome, cpf, endereco, tel_contato, email)values
(62, "Kléber", 223879733, "Rua Inácio da Silva, 377", "+5511224393", "klebinlinguiça22@gmail.com"),
(88, "Lucas", 77329242, "Rua Gonçalo Vicente, 92", "+553592334", "lucassales1@gmail.com"),
(192, "Maria", 88323242, "Rua Carmen Silva, 235", "+551197374", "mariarobertakkj@gmail.com"),
(19, "Julia", 83294394, "Rua José Abreu Silva, 843", "+559874383", "juliafreitass@gmail.com"),
(34, "Paloma", 23460219, "Rua Alameda das Roseiras, 293", "+5511933483", "palomavs@gmail.com"),
(99, "Pedro", 384833942, "Rua Almeida Josías, 739", "+551124434", "pedropedraga@gmail.com");

create table vendas
(
id_vendas integer primary key, 
id_client integer, 
data_compra varchar(100),
valor_da_compra numeric(65),


 foreign key (id_client) references clientes(id_client)
);

insert into vendas(id_vendas, id_client, data_compra, valor_da_compra)values
(72, 88, "22/07/2022", 6800),
(2, 62, "05/02/2021", 36000),
(63, 19, "29/08/2022", 30000),
(81, 34, "07/04/2020", 125000),
(102, 99, "09/03/2019", 14700),
(94, 192, "19/11/2023", 107000);

create table carros_compra
(
 id_compra integer primary key,
 id_car integer,
 compra_id integer,
 qtd_compras numeric,
 subtotal integer,
 id_vendas integer,
 
 foreign key(id_car) references carros(id_car),
 foreign key(id_vendas) references vendas(id_vendas)
);

insert into carros_compra(id_compra, id_car, compra_id, qtd_compras, subtotal, id_vendas)values
("7", 1, 72, 1, 6800, 82);


create table estoque_carros
(
 estoque integer primary key,
 id_car integer,
 quantidade numeric,
 
 foreign key(id_car) references carros(id_car)
);


select * from carros;
select * from clientes;
select * from vendas;
select * from carros_compra;
select * from estoque_carros;




