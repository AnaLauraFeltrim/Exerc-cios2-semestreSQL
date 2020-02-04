create database ECommerceManha;

create table Empresa(
IdEmpresa int primary key identity,
NomeEmpresa varchar(200),
CNPJ int
);

create table Cliente(
IdCliente int primary key identity,
NomeCliente varchar(200),
CPF int
);

create table Categoria(
IdCategoria int primary key identity,
NomeCategoria varchar(200)
);

create table Subcategoria(
IdSubcategoria int primary key identity,
NomeSub varchar(200),
IdCategoria int foreign key references Categoria(IdCategoria)
);

create table Produto(
IdPruduto int primary key identity,
NomeProduto varchar(200),
Valor int, 
IdSubcategoria int foreign key  references Subcategoria(IdSubcategoria)
);

create table Pedido(
IdPedido int primary key identity,
NrPedido int, 
DataPedido date,
Situacao varchar(200),
IdCliente int foreign key references Cliente(IdCliente)
);

