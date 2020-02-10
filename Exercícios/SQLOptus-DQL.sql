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
    values ('Melophobia', '29-08-2001', 97, 90, 2, 2),
	       ('Poste', '08-09-1978' , 123456, 67,3,3),
		   ('Feijão', '02-05-2019', 676676, 160,4,4),
		   ('Carnaval', '23-02-2020', 12345, 4320,5,5);

	
	update Usuario
	set IdTipoUsuario = '1'
	where IdUsuario = 2;

	update Albuns 
	set Visualizacoes = 234
	where IdAlbum = 2;

	delete from Albuns
	where IdAlbum = 5;

	select Nome, Lancamento from Albuns
	where (Visualizacoes > 1000000) or (Minutos > 100000000);

	select IdArtista, Nome from Albuns 
	where Nome like 'Scrawny';
	
	select IdTipoUsuario, Nome from Usuario
	where IdTipoUsuario =2 ;

	update Usuario
	set IdTipoUsuario = 2
	where IdUsuario in (2,4);

	select Nome, Visualizacoes from Albuns
	order by Visualizacoes desc;

	select count (IdUsuario) from Usuario;

	select IdArtista, Nome, Lancamento, Minutos from Albuns
	where IdArtista = 2;
	
	select Lancamento, Nome from Albuns
	where Lancamento = 12345;

	select IdEstilosMusicais, IdArtista from Albuns
	where IdEstilosMusicais = 4;
	select * from Estilos;
	Select * from Artistas;

	select Nome, IdArtista, Lancamento from Albuns order by Lancamento;
	select * from Artistas;

	alter table Albuns 
	drop column Lancamento;

	alter table Albuns 
	add Lancamento date ;

	update Albuns 
	set Lancamento = '29-08-2001'
	where IdAlbum = 1;

	update Albuns 
	set Lancamento = '09-08-1987'
	where IdAlbum = 2;
	
	update Albuns 
	set Lancamento = '29-05-2019'
	where IdAlbum = 3;
	
	update Albuns 
	set Lancamento = '23-02-2020'
	where IdAlbum = 1;

	update Albuns 
	set Lancamento = '29-08-2001'
	where IdAlbum = 1;
	
	update Albuns 
	set Lancamento = '23-02-2020'
	where IdAlbum = 4;


	