--Criação Tabelas de Dados do Evento, Cronograma e Ingressos
create table tEventos(
	id int NOT NULL IDENTITY(1,1),
	nome nvarchar2(255) NOT NULL,
	categoria nvarchar2(255) NOT NULL,
	tema nvarchar2(255) NOT NULL,
	dataInicio date NOT NULL,
	dataFim date NOT NULL,
	localizacao nvarchar2(255) NOT NULL,
	descricao nvarchar2(255) NOT NULL,
	PRIMARY KEY(id)
 );

create table tItens_Cronograma(
	id_item int NOT NULL IDENTITY(1,1),
	nome_item nvarchar2(255) NOT NULL,
	descricao nvarchar2(255) NOT NULL,
	dataInicio_item date NOT NULL,
	dataFim_item date NOT NULL,
	PRIMARY KEY(id_item)		
);

create table tIngressos(
	id_ing int NOT NULL IDENTITY(1,1),
	preco real(7,2) NOT NULL,
	tipo nvarchar2(255) NOT NULL,
	qtd_disponivel int NOT NULL,
	datainicio_venda date NOT NULL,
	datafim_venda date NOT NULL,
	qtdperm_compra int NOT NULL,
	privacidade nvarchar2(255) NOT NULL,
	PRIMARY KEY(id_ing) 	
);

--Procedure para criar evento
create procedure sp_cria_evento(in p_nome nvarchar2, in p_categoria nvarchar2, in p_tema nvarchar2, in p_dataInicio date,
in p_dataFim date, in p_localizacao nvarchar2, in p_descricao varchar2) is
	Begin
		insert into tEventos
		values(p_nome, p_categoria, p_tema, p_dataInicio, p_dataFim, p_localizacao, p_descricao);
		select 'Evento Criado com Sucesso!';
end;
--Exemplo execução procedure criar evento
call sp_cria_evento('Baile do William Hoffmann', 'Baile Funknejo', 'Sexy sem ser vulgar', '2017-12-2 02:00:00', '2017-12-2 12:00:00', 'Mansão dos Hoffmann', 'Festa de total Putaria');

--Procedure Adicionar item ao cronograma
create procedure sp_add_item(in p_nome_item nvarchar2, in p_descricao nvarchar2, in p_dataInicio_item date, in p_dataFim_item date) is
	Begin
		insert into tItens_Cronograma
		values(p_nome_item, p_descricao, p_dataInicio_item, p_dataFim_item);
		select 'Item adicionado com Sucesso!';
end;

--Exemplo execução procedure adicionar item
call sp_cria_evento('Show do Anderson DJ', 'As melhores músicas do do Anderson DJ', '2017-12-2 04:00:00', '2017-12-2 6:00:00');