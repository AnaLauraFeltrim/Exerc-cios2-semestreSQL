insert into TipoUsuario(TituloTipoUsuario)
values ('Administrador'),
	   ('Usuario')

insert into TipoEvento (TituloTipoEvento)
values ('C#'),
	   ('React'),
	   ('SQL')

insert into Instituicao(CNPJ, NomeFantasia, Endereco)
values('1234564', 'Escola SENAI de Inform�tica', 'Alameda Bar�o de Limeira,358')

insert into Usuario (Nome, Email, Senha, DataCadastro, Genero, IdTipousuario)
values ('Administrador', 'adm@gmail.com', 'adm123', '06-02-2020', 'N�o Informado', 1),
	   ('Carol', 'carol@gmail.com', 'carol', '06-02-2020', 'Feminino', 2),
	   ('Saulo', 'saulo@gmail.com', 'saulo123', '06-02-2020', 'Masculino', 1)

insert into AcessoLivre (Acesso)
values ('Publico'),
	   ('Privado')

insert into Evento (NomeEvento, DataEvento, Descricao, IdAcessoLivre, IdInstituicao, IdTipoEvento)
values ('Orienta��o a objetos', '07-02-2020', 'Conceitos  sobre pilares da programa��o', 1, 1, 1),
	   ('Ciclo de Vida', '07-02-2020', 'Como usa os ciclos de vida  com a biblioteca no React', 2, 1, 2),
	   ('Intodu��o ao Sql', '07-02-2020', 'Comandos b�sicos', 1, 1, 3)



insert into Presenca (IdUsuario, IdEvento, Situacao)
values (2, 2, 'Confirmado'),
	   (2, 3, 'N�o Confirmado'),
	   (3, 1, 'Confirmado')