select Nome, Email, DataCadastro, Genero , TipoUsuario.TituloTipoUsuario from Usuario
inner join TipoUsuario on Usuario.IdTipousuario = TipoUsuario.IdTipoUsuario;

select*from Instituicao;

select*from TipoEvento;

select NomeEvento, DataEvento, Descricao, AcessoLivre, Instituicao.NomeFantasia, Instituicao.CNPJ, TipoEvento.TituloTipoEvento from Evento
inner join Instituicao on Evento.IdInstituicao = Instituicao.IdInstituicao
inner join TipoEvento on Evento.IdTipoEvento = TipoEvento.IdTipoEvento

select NomeEvento, DataEvento, Descricao, AcessoLivre, Instituicao.NomeFantasia, Instituicao.CNPJ, TipoEvento.TituloTipoEvento from Evento
inner join Instituicao on Evento.IdInstituicao = Instituicao.IdInstituicao
inner join TipoEvento on Evento.IdTipoEvento = TipoEvento.IdTipoEvento
where AcessoLivre = 1;

select Usuario.Nome, Evento.NomeEvento, Instituicao.NomeFantasia,Situacao, Evento.DataEvento, Evento.AcessoLivre from Presenca
inner join Usuario on Presenca.IdUsuario = Usuario.IdUsuario
inner join Evento on Presenca.IdEvento = Evento.IdEvento
inner join Instituicao on Evento.IdInstituicao = Instituicao.IdInstituicao
where (Usuario.Nome = 'Carol') and (Situacao = 'Confirmado');