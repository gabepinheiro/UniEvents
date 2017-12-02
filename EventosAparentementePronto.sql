--Criação Tabelas de Dados do Evento, Cronograma e Ingressos
create table tEventos(
	id int NOT NULL IDENTITY(1,1),
	id_item int NOT NULL IDENTITY(1,1),
	id_ing int NOT NULL IDENTITY(1,1),
	nome varchar(255) NOT NULL,
	categoria varchar(255) NOT NULL,
	tema varchar(255) NOT NULL,
	dataInicio date NOT NULL,
	dataFim date NOT NULL,
	localizacao varchar(255) NOT NULL,
	descricao varchar(255) NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(id_item) REFERENCES tItens_Cronograma(id_item),
	FOREIGN KEY(id_ing) REFERENCES tIngressos(id_ing)
 );

create table tItens_Cronograma(
	id_item int NOT NULL IDENTITY(1,1),
	nome_item varchar(255) NOT NULL,
	descricao varchar(255) NOT NULL,
	dataInicio_item date NOT NULL,
	dataFim_item date NOT NULL,
	PRIMARY KEY(id_item)		
);

create table tIngressos(
	id_ing int NOT NULL IDENTITY(1,1),
	preco real(7,2) NOT NULL,
	tipo varchar(255) NOT NULL,
	qtd_disponivel int NOT NULL,
	datainicio_venda date NOT NULL,
	datafim_venda date NOT NULL,
	qtdperm_compra int NOT NULL,
	privacidade varchar(255) NOT NULL,
	PRIMARY KEY(id_ing) 	
);

--Criar evento
insert into tEventos
values('Nome do Evento', 'Categoria do Evento', 'Tema do Evento', 'Data Início YYYY-MM-DD HH:MM:SS', 'Data Fim YYYY-MM-DD HH:MM:SS', 'Localização do Evento', 'Descrição do Evento');

--Adicionar Item ao Cronograma
insert into tItens_Cronograma
values('Nome Item', 'Descrição Item', 'Data Início YYYY-MM-DD HH:MM:SS', 'Data Fim YYYY-MM-DD HH:MM:SS');

--Adicionar Ingresso Preço, Tipo, Quantidade Disponível, Data Início Venda, Data Fim Venda, Quantidade Permitida por compra, Privacidade
insert into tIngressos
values(7.00, 'Tipo Ingresso', 300, 'Data Início Venda YYYY-MM-DD HH:MM:SS', 'Data Fim Venda YYYY-MM-DD HH:MM:SS', 10, 'Privacidade Ingresso');

--Criação Tabela Usuário
create table Usuario(
	id int NOT NULL IDENTITY(1,1),
	id_evento int NOT NULL IDENTITY(1,1),
	login varchar(255) NOT NULL,
	nome varchar(255) NOT NULL,
	senha varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	endereco varchar(255),
	PRIMARY KEY(id),
	FOREIGN KEY(id_evento) REFERENCES tEventos(id)
);

--Cadastrar Usuário
insert into Usuario
values('Login Usuário', 'Nome Usuário', 'Senha', 'Email', 'Endereço');


