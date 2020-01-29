create database Optus;
use Optus;

	create table TipoUsuario(
		IdTipoUsuario int primary key identity,
		Titulo varchar(200)
	);

	create table Usuario(
		IdUsuario int primary key identity,
		Nome varchar(200),
		CPF INT,
		IdTipoUsuario int foreign key references TipoUsuario(IdTipoUsuario)
	);

	create table Artistas (
		IdArtistas int primary key identity,
		Nome varchar (200)
	);

	create table Estilos(
		IdEstilosMusicais int primary key identity,
		Genero varchar(200)
	);

	create table Albuns(
		IdAlbum int primary key identity,
		Nome varchar(200),
		DataLancamento datetime,
		Visualizacoes int,
		Minutos int not null,
		IdArtista int foreign key references Artistas(IdArtistas),
		IdEstilosMusicais int foreign key references Estilos(IdEstilosMusicais)
	);

	alter table Albuns 
	alter column DataLancamento date;

	alter table Albuns 
	drop column DataLancamento;

	alter table Albuns
	add Lancamento int;
	

	select*from Estilos;
	select*from Artistas;
	select*from Albuns;
	select*from Usuario;
	select*from TipoUsuario;

	insert into TipoUsuario (Titulo)
	values ('Adm'),
		   ('user');

    insert into Usuario (Nome, CPF, IdTipoUsuario)
	values ('Jeberson', 234565432, 1),
		   ('Gealdo', 12345654,2),
		   ('Maria',1234543,2),
		   ('Lurdes',1232144,1),
		   ('Eduardo Eduardo',876543456,1);

	insert into Artistas(Nome)
	values ('Wallows'),
		   ('Cage'),
		   ('ISA TK+'),
		   ('João e o pé'),
		   ('gonorréia');
	
	insert into Estilos (Genero)
	values ('Indie'),
		   ('Modern Rock'),
		   ('Nickelodeon'),
		   ('Filme'),
		   ('DST');

    insert into Albuns (Nome, Lancamento, Visualizacoes, Minutos, IdArtista, IdEstilosMusicais)
	values ('Scrawny', 090801 , 25 , 97, 1, 1 );

	insert into Albuns (Nome, Lancamento, Visualizacoes, Minutos, IdArtista, IdEstilosMusicais)
    values ('Melophobia', 070809, 97, 90, 2, 2),
	       ('Poste', 050197, 123456, 67,3,3),
		   ('Feijão', 12345, 676676, 160,4,4),
		   ('Carnaval',010101, 12345, 4320,5,5);