create table Clinica(
IdClinica int primary key identity,
Endereco varchar (200)
) ;

create table Dono (
IdDono int primary key identity,
Nome varchar (200)
);

create table TipoPet (
IdTipoPet int primary key identity,
TipoUsuario int
);

create table Veterinario(
IdVeterinario int primary key identity,
Nome varchar (200),
IdClinica int foreign key references Clinica(IdClinica)
);

create table Raca(
IdRaca int primary key identity,
Nome varchar (200),
IdTipoPet int foreign key references TipoPet(IdTipoPet)
)

create table Pet (
IdPet int primary key identity,
Nome varchar (200),
Telefone int,
IdDono int foreign key references Dono(IdDono),
IdRaca int foreign key references Raca(IdRaca)
);

create table Atendimento (
IdAtendimento int primary key identity,
DataAtendimento date,
Descricao varchar (200),
IdVeterinario int foreign key references Veterinario(IdVeterinario),
IdPet int foreign key references Pet(IdPet)
);

insert into TipoPet (TipoUsuario)
	values (1),
		   (2);

    insert into Clinica (Endereco)
	values ('Jeberson');
		   

	insert into Dono(Nome)
	values ('Kleber');

	insert into Veterinario(Nome, IdClinica)
	values ('Kleberson', 1);

	insert into Raca(Nome, IdTipoPet)
	values ('Siames', 1);

	insert into Pet(Nome, IdDono)
	values ('Frodo', 1);

	insert into Atendimento (DataAtendimento, Descricao, IdVeterinario, IdPet)
	values ('09-08-2001', 'atendimento e tal', 1, 1);

	select * from Pet

	select Veterinario.Nome, Pet.Nome as Pet, DataAtendimento, Descricao, IdAtendimento from Atendimento 
	inner join Pet on Atendimento.IdAtendimento = Pet.IdPet
	inner join Veterinario on Atendimento.IdVeterinario = Veterinario.IdVeterinario