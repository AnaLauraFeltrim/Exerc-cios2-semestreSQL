create database RoteiroLivros;
use RoteiroLivros;

	create table Generos(
	IdGenero INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR (200) NOT NULL
	);
	CREATE TABLE Autor(
	IdAutor INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR (200)
	);
	CREATE TABLE Livro(
	IdLivro INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR (200),
	IdGenero INT FOREIGN KEY REFERENCES Generos (IdGenero),
	IdAutor INT FOREIGN KEY REFERENCES Autor(IdAutor)
	);
 


	 SELECT*FROM Autor;
	 SELECT*FROM Generos;
	 SELECT*FROM Livro;

	 insert into Autor (Nome)
	 values ('George Orwell'),
			('J.R.R. Tolkien'),
			('Stephen King'),
			('Percy Jackson'),
			('George Lucas');

	insert into Generos (Nome)
	values ('Suspense'),
		   ('Aventura'),
		   ('Terror'),
		   ('Ficçao'),
		   ('Mitologia');

	insert into Livro (Titulo, IdGenero, IdAutor)
	values('Ladrão de Raios',5,4),
		  ('Revolução dos Bichos',4,1),
		  ('IT: A coisa',3,3),
		  ('Senhor  dos Anéis',2,2),
		  ('Star Wars', 4,5);

		  update Autor 
		  set Nome = 'Rick Rioradan'
		  where IdAutor = 4;

		  update Livro 
		  set Titulo = 'Percy Jackson'
		  where IdLivro = 1;

		  delete from Livro
		  where IdLivro = 5;

		  delete from Autor
		  where IdAutor = 5;
 
		  delete from Livro
		  where IdAutor in (2,3);

		  update Livro
		  set Titulo = 'livro bom' 
		  where IdLivro in (1,2);

		  update Livro
		  set Titulo = 'Percy Jackson''Senhor dos Aneis'
		  where IdLivro in (1,2);

		  update Livro
		  set Titulo = 'Senhor dos Anéis'
		  where IdLivro = 2;

		  select*from Autor;
		  select*from Generos;
		  select*from Livro;

		  select IdLivro, Titulo ,IdAutor from Livro;

		  select IdLivro, Titulo, IdGenero from Livro;

	  
