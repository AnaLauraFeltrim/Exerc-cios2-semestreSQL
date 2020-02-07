insert into TipoUsuario(TituloTipoUsuario)
values ('Administrador'),
	   ('Usuario')

insert into TipoEvento (TituloTipoEvento)
values ('C#'),
	   ('React'),
	   ('SQL')

insert into Instituicao(CNPJ, NomeFantasia, Endereco)
values('1234564', 'Escola SENAI de Informática', 'Alameda Barão de Limeira,358')

insert into Usuario (Nome, Email, Senha, DataCadastro, Genero, IdTipousuario)
values ('Administrador', 'adm@gmail.com', 'adm123', '06-02-2020', 'Não Informado', 1),
	   ('Carol', 'carol@gmail.com', 'carol', '06-02-2020', 'Feminino', 2),
	   ('Saulo', 'saulo@gmail.com', 'saulo123', '06-02-2020', 'Masculino', 1)

insert into AcessoLivre (Acesso)
values ('Publico'),
	   ('Privado')

insert into Evento (NomeEvento, DataEvento, Descricao, IdAcessoLivre, IdInstituicao, IdTipoEvento)
values ('Orientação a objetos', '07-02-2020', 'Conceitos  sobre pilares da programação', 1, 1, 1),
	   ('Ciclo de Vida', '07-02-2020', 'Como usa os ciclos de vida  com a biblioteca no React', 2, 1, 2),
	   ('Intodução ao Sql', '07-02-2020', 'Comandos básicos', 1, 1, 3)



insert into Presenca (IdUsuario, IdEvento, Situacao)
values (2, 2, 'Confirmado'),
	   (2, 3, 'Não Confirmado'),
	   (3, 1, 'Confirmado')