CREATE DATABASE EstilosMusicais;
USE EstilosMusicais;


	create table EstilosMusicais(
	IdEstilosMusicais int primary key identity,
	Nome varchar(200)
	);

	create table Artistas (
	IdArtista int primary key identity,
	Nome varchar(200),
	IdEstilosMusicais int foreign key references EstilosMusicais (IdEstilosMusicais)
	);

select*from EstilosMusicais;
select*from Artistas;

use master;
drop database EstilosMusicais;
