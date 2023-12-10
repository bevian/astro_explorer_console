CREATE TABLE Planeta (
    Nome VARCHAR(30) PRIMARY KEY,
    Periodo_Rotacao NUMBER(10), 
    Distancia NUMBER(10),
    Temperatura NUMBER(10), 
    Sistema_Planetario VARCHAR(40),
    Tamanho NUMBER(10), 
    Cor VARCHAR(20)
);

CREATE TABLE Traje (
    Num_Serie NUMBER(9) PRIMARY KEY,
    Cor VARCHAR(20),
    Material VARCHAR(40),
    Planeta VARCHAR(30) NOT NULL,
    UNIQUE(Planeta),
    CONSTRAINT FK_Planeta_Traje FOREIGN KEY (Planeta) REFERENCES Planeta(Nome) ON DELETE CASCADE
);

CREATE TABLE Tamanhos (
    Traje NUMBER(9),
    Tamanho VARCHAR(3),
    PRIMARY KEY (Traje, Tamanho),
    CONSTRAINT FK_Tamanho_Traje FOREIGN KEY (Traje) REFERENCES Traje(Num_Serie) ON DELETE CASCADE,
    CONSTRAINT CH_tamanho CHECK(Tamanho = 'PP' or Tamanho = 'P' or Tamanho = 'M' or Tamanho = 'G' or Tamanho = 'GG')
);

CREATE TABLE Foguete (
    Num_Serie NUMBER(9) PRIMARY KEY,
    Nome VARCHAR(30),
    Marca VARCHAR(20),
    Modelo VARCHAR(20),
    Capacidade NUMBER(7),
    Planeta VARCHAR(30) NOT NULL,
    UNIQUE(Planeta),
    CONSTRAINT FK_Planeta_Foguete FOREIGN KEY (Planeta) REFERENCES Planeta(Nome) ON DELETE CASCADE
);

CREATE TABLE Treinamento (
    Num_Serie NUMBER(9) PRIMARY KEY,
    Nome VARCHAR(40),
    Duracao NUMBER(6),
    Localidade VARCHAR(45),
    Assunto VARCHAR(35)
);

CREATE TABLE Viagem (
    Id NUMBER(9) PRIMARY KEY,
    Nome VARCHAR(30) NOT NULL,
    Foguete NUMBER(9),
    Data_Viagem DATE,
    UNIQUE(Foguete, Data_Viagem),
    CONSTRAINT FK_Viagem_Foguete FOREIGN KEY (Foguete) REFERENCES Foguete(Num_Serie) ON DELETE CASCADE
);

CREATE TABLE Treinamento_Viagem (
    Treinamento NUMBER(9),
    Viagem NUMBER(9),
    PRIMARY KEY (Treinamento, Viagem),
    CONSTRAINT FK_Treinamento_Treinamento_Viagem FOREIGN KEY (Treinamento) REFERENCES Treinamento(Num_Serie) ON DELETE CASCADE,
    CONSTRAINT FK_Viagem_Treinamento_Viagem FOREIGN KEY (Viagem) REFERENCES Viagem(Id) ON DELETE CASCADE
);


CREATE TABLE Pessoa (
    CPF NUMBER(11) PRIMARY KEY,
    Nome VARCHAR(30),
    Data_Nascimento DATE,
    Idade NUMBER(3),
    BBiologo NUMBER(1), 
    BHistoriador NUMBER(1), 
    BGeologo NUMBER(1),
    CONSTRAINT CH_biologo CHECK(BBiologo=1 or BBiologo = 0),
    CONSTRAINT CH_historiador CHECK(BHistoriador=1 or BHistoriador = 0),
    CONSTRAINT CH_geologo CHECK(BGeologo=1 or BGeologo = 0)
);

CREATE TABLE Treinamentos (
    Pessoa NUMBER(11),
    Treinamento VARCHAR(40),
    PRIMARY KEY (Pessoa, Treinamento),
    CONSTRAINT FK_Pessoa_Treinamentos FOREIGN KEY (Pessoa) REFERENCES Pessoa(CPF) ON DELETE CASCADE
);

CREATE TABLE Equipamentos (
    Pessoa NUMBER(11),
    Equipamento VARCHAR(40),
    PRIMARY KEY (Pessoa, Equipamento),
    CONSTRAINT FK_Pessoa_Equipamento FOREIGN KEY (Pessoa) REFERENCES Pessoa(CPF) ON DELETE CASCADE
);

CREATE TABLE Item (
    Num_Serie NUMBER(9) PRIMARY KEY,
    Tipo VARCHAR(30) NOT NULL,
    Marca VARCHAR(20),
    Nome VARCHAR(30),
    Certificacao_Qualidade NUMBER(7),
    Validade DATE
);

CREATE TABLE Pesquisa (
    Id NUMBER(9) PRIMARY KEY,
    Viagem NUMBER(9),
    Nome VARCHAR(35),
    Data_Inicio DATE,
    Objetivo VARCHAR(100) NOT NULL,
    Coordenadas VARCHAR(30) NOT NULL, 
    Tipo VARCHAR(20) NOT NULL,
    UNIQUE (Viagem, Nome, Data_Inicio),
    CONSTRAINT FK_Viagem_Pesquisa FOREIGN KEY (Viagem) REFERENCES Viagem(Id) ON DELETE CASCADE    
);

CREATE TABLE Observacoes (
    Pesquisa NUMBER(9),
    Observacao VARCHAR(300),
    PRIMARY KEY (Pesquisa, Observacao),
    CONSTRAINT FK_Pesquisa_Obsercavoes FOREIGN KEY (Pesquisa) REFERENCES Pesquisa(Id) ON DELETE CASCADE
);

CREATE TABLE Geologia (
    Pesquisa NUMBER(9) PRIMARY KEY,
    Relevo VARCHAR(40),
    SubTema VARCHAR(40),
    CONSTRAINT FK_Pesquisa_Geologia FOREIGN KEY (Pesquisa) REFERENCES Pesquisa(Id) ON DELETE CASCADE
);

CREATE TABLE Ecologia (
    Pesquisa NUMBER(9) PRIMARY KEY,
    Nome VARCHAR(35),
    Genero VARCHAR(25),
    Ramo VARCHAR(30),
    Habito_Alimentar VARCHAR(20),
    Descricao_Visual VARCHAR(50),
    CONSTRAINT FK_Pesquisa_Ecologia FOREIGN KEY (Pesquisa) REFERENCES Pesquisa(Id) ON DELETE CASCADE
);

CREATE TABLE Geo_Eco (
    Geologia NUMBER(9),
    Ecologia NUMBER(9),
    PRIMARY KEY (Ecologia, Geologia),
    CONSTRAINT FK_Geologia_Geo_Eco FOREIGN KEY (Geologia) REFERENCES Geologia(Pesquisa) ON DELETE CASCADE,
    CONSTRAINT FK_Ecologia_Geo_Eco FOREIGN KEY (Ecologia) REFERENCES Ecologia(Pesquisa) ON DELETE CASCADE
);

CREATE TABLE Fauna (
    Ecologia NUMBER(9) PRIMARY KEY,
    Reino VARCHAR(20),
    CONSTRAINT FK_Ecologia_Fauna FOREIGN KEY (Ecologia) REFERENCES Ecologia(Pesquisa) ON DELETE CASCADE
);

CREATE TABLE Comportamentos (
    Fauna NUMBER(9),
    Comportamento VARCHAR(200),
    PRIMARY KEY(Fauna, Comportamento),
    CONSTRAINT FK_Fauna_Comportamentos FOREIGN KEY (Fauna) REFERENCES Fauna(Ecologia) ON DELETE CASCADE
);

CREATE TABLE Flora (
    Ecologia NUMBER(9) PRIMARY KEY,
    Folhagem VARCHAR(20),
    SubReino VARCHAR(20),
    CONSTRAINT FK_Ecologia_Flora FOREIGN KEY (Ecologia) REFERENCES Ecologia(Pesquisa) ON DELETE CASCADE
);

CREATE TABLE Agua (
    Geologia NUMBER(9) PRIMARY KEY,
    Cor VARCHAR(15),
    Fonte VARCHAR(25),
    Composicao VARCHAR(30),
    CONSTRAINT FK_Geologia_Agua FOREIGN KEY (Geologia) REFERENCES Geologia(Pesquisa) ON DELETE CASCADE
);

CREATE TABLE Solo (
    Geologia NUMBER(9) PRIMARY KEY,
    Cor VARCHAR(15),
    Fonte VARCHAR(25),
    Composicao VARCHAR(30),
    CONSTRAINT FK_Geologia_Solo FOREIGN KEY (Geologia) REFERENCES Geologia(Pesquisa) ON DELETE CASCADE
);

CREATE TABLE Formacao_Rochosa (
    Solo NUMBER(9),
    Formacao_Rochosa VARCHAR(40),
    PRIMARY KEY(Solo, Formacao_Rochosa),
    CONSTRAINT FK_Solo_Formacao_Rochosa FOREIGN KEY (Solo) REFERENCES Solo(Geologia) ON DELETE CASCADE
);

CREATE TABLE Intensidade_Luminosa (
    Geologia NUMBER(9) PRIMARY KEY,
    Qtd_Luz VARCHAR(15),
    CONSTRAINT FK_Geologia_Intensidade_Luminosa FOREIGN KEY (Geologia) REFERENCES Geologia(Pesquisa) ON DELETE CASCADE
);

CREATE TABLE Exploracao(
    Pesquisa NUMBER(9),
    Nome VARCHAR(20),
    Status_Exploracao NUMBER(1) DEFAULT(0), 
    PRIMARY KEY (Pesquisa, Nome),
    CONSTRAINT FK_Exploracao FOREIGN KEY (Pesquisa) REFERENCES Pesquisa(Id) ON DELETE CASCADE,
    CONSTRAINT CH_Status CHECK (Status_Exploracao = 1 or Status_Exploracao = 0)
);

CREATE TABLE Pessoa_Exploracao(
Pessoa NUMBER(11),
Pesquisa NUMBER(9),
Nome VARCHAR(20),
PRIMARY KEY(Pessoa, Pesquisa, Nome),
CONSTRAINT FK_Pessoa_Exploracao FOREIGN KEY (Pessoa) REFERENCES Pessoa(CPF) ON DELETE CASCADE,
CONSTRAINT FK_Pesquisa_Exploracao FOREIGN KEY (Pesquisa,Nome) REFERENCES Exploracao(Pesquisa,Nome) ON DELETE CASCADE
);


CREATE TABLE Item_Exploracao(
    Item NUMBER(9),
    Pesquisa NUMBER(9),
    Nome VARCHAR(20),
    PRIMARY KEY(Item, Pesquisa, Nome),
    CONSTRAINT FK_Pessoa_Item_Exploracao FOREIGN KEY (Item) REFERENCES Item(Num_Serie) ON DELETE CASCADE,
    CONSTRAINT FK_Item_Exploracao FOREIGN KEY (Pesquisa,Nome) REFERENCES Exploracao(Pesquisa,Nome) ON DELETE CASCADE
);

