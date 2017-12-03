--Criando Tabelas
create table Usuario(
	idUsu int not null IDENTITY,
    nome varchar(255) not null,
    sobrenome varchar(255) not null,
    email varchar(255) not null, 
    dataNasc date not null,
    senha varchar(255) not null,
    PRIMARY KEY(idUsu)
);

create table checklist(
	idcc int not null IDENTITY,
    idUsu int not null,
    descricao varchar(255),
    prazo date not null,
    situacao bit not null,
    PRIMARY KEY(idcc),
    FOREIGN KEY(idUsu) REFERENCES Usuario(idUsu)
);

create table eventos(
	idEvento int not null IDENTITY,
    idUsu int not null,
    nome varchar(255) not null,
    categoria varchar(255) not null,
    tema varchar(255) not null,
    descricao varchar(255) not null,
    localizacao varchar(255) not null,
    data date not null,
    PRIMARY KEY(idEvento),
    FOREIGN KEY(idUsu) REFERENCES Usuario(idUsu)
);

create table receitas(
	idrec int not null IDENTITY,
    idEvento int not null,
    nome varchar(255) not null,
    valor decimal(7,2) not null,
    data date not null,
    situacao bit not null,
    PRIMARY KEY(idrec),
    FOREIGN KEY(idEvento) REFERENCES eventos(idEvento)
);

create table despesas(
	iddesp int not null IDENTITY,
    idEvento int not null,
    nome varchar(255) not null,
    valor decimal(7,2) not null,
    data date not null,
    situacao bit not null,
    PRIMARY KEY(iddesp),
    FOREIGN KEY(idEvento) REFERENCES eventos(idEvento)
);

--Criando Usuário
insert into usuario(nome, sobrenome, senha, dataNasc, email)
values('William', 'Hoffmann', 'GuerreiroGostoso6969', '1955-01-25', 'hoffmann_22cm@hotmail.com');

--Criando Evento
insert into eventos(idUsu, nome, categoria, tema, descricao, localizacao, data)
values(1, 'Baile do Hoffmann', 'Poocharia Total', 'Funknejo Sensação', 'Pra liberar geral', 'Mansão dos Hoffmann', '2017-12-22');