select Nome, Email, DataCadastro, Genero , TipoUsuario.TituloTipoUsuario from Usuario
inner join TipoUsuario on Usuario.IdTipousuario = TipoUsuario.IdTipoUsuario;

select*from Instituicao;

select*from TipoEvento;

select NomeEvento, DataEvento, Descricao, AcessoLivre.Acesso, Instituicao.NomeFantasia, Instituicao.CNPJ, TipoEvento.TituloTipoEvento from Evento
inner join Instituicao on Evento.IdInstituicao = Instituicao.IdInstituicao
inner join TipoEvento on Evento.IdTipoEvento = TipoEvento.IdTipoEvento
inner join AcessoLivre on Evento.IdAcessoLivre = AcessoLivre.IdAcessoLivre

select NomeEvento, DataEvento, Descricao, AcessoLivre.Acesso, Instituicao.NomeFantasia, Instituicao.CNPJ, TipoEvento.TituloTipoEvento from Evento
inner join Instituicao on Evento.IdInstituicao = Instituicao.IdInstituicao
inner join TipoEvento on Evento.IdTipoEvento = TipoEvento.IdTipoEvento
inner join AcessoLivre on Evento.IdAcessoLivre = AcessoLivre.IdAcessoLivre
where Evento.IdAcessoLivre = 1;

select Usuario.Nome, Evento.NomeEvento, Instituicao.NomeFantasia,Situacao, Evento.DataEvento, AcessoLivre.Acesso from Presenca
inner join Usuario on Presenca.IdUsuario = Usuario.IdUsuario
inner join Evento on Presenca.IdEvento = Evento.IdEvento
inner join Instituicao on Evento.IdInstituicao = Instituicao.IdInstituicao
inner join AcessoLivre on Evento.IdAcessoLivre = AcessoLivre.IdAcessoLivre
where (Usuario.Nome = 'Carol') and (Situacao = 'Confirmado');
