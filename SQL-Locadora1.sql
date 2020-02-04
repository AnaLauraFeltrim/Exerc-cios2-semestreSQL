-- DDL UHUL VAI NA FÉ

create database Locadora;
use  Locadora;

create table Locadora (
IdLocadora int primary key identity,
Endereco varchar(200)
);

create table Cliente (
IdCliente int primary key identity,
NomeCliente varchar(200),
CPF int
);

create table Marca (
IdMarca int primary key identity,
NomeMarca varchar(200)
);

create table Modelo(
IdModelo int primary key identity,
NomeModelo varchar(200),
IdMarca int foreign key references Marca (IdMarca)
);

create table Veiculo(
IdVeiculo int primary key identity,
Placa varchar(200),
IdModelo int foreign key references Modelo(IdModelo)
);

create table Locacao(
IdLocacao int primary key identity,
DataLocacao date, 
DataEntrega date,
IdCliente int foreign key references Cliente(IdCliente),
IdVeiculo int foreign key references Veiculo(IdVeiculo)
);

--DML VAMO QUE VAMO 

insert into Locadora(Endereco)
values ('Rua Joao de Miranda Mello 666' ),
	   ('Av Brasil 765');

insert into Cliente(NomeCliente)
values ('Josias Silva'),
	   ('Zuleide Pinto');

insert into Marca(NomeMarca)
values ('Ford'),
	   ('Chevrolet'),
	   ('Fiat'),
	   ('Honda');

insert into Modelo(NomeModelo, IdMarca)
values ('Ka', 1),
	   ('Onix', 2),
	   ('Uno', 3);

insert into Veiculo (Placa, IdModelo)
values ('PCD1234',1),
	   ('ABC4567',2);

insert into Locacao (DataLocacao, DataEntrega, IdCliente, IdVeiculo)
values ('29-08-2020', '02-09-2020',1, 1);

--DQL CONSULTA SE FODE

 select Placa, Modelo.NomeModelo, Cliente.NomeCliente, DataLocacao, DataEntrega from Locacao
 inner join Veiculo on Veiculo.IdVeiculo = Locacao.IdVeiculo
 inner join Modelo on Veiculo.IdModelo = Modelo.IdModelo
 inner join Cliente on Locacao.IdCliente = Cliente.IdCliente
