DROP TABLE Pessoa CASCADE;
DROP TABLE Curso CASCADE;

DROP TABLE OutroEmail CASCADE;
DROP TABLE Projeto CASCADE;
DROP TABLE ProjetoPessoa CASCADE;

CREATE TABLE Curso (
    CodCurso integer NOT NULL UNIQUE,
    NomeCurso varchar(200)
);

CREATE TABLE Pessoa (
    NumeroCartao integer NOT NULL UNIQUE,
    NomePess varchar(200) NOT NULL,
    Sexo char(1) CHECK (Sexo in ('M', 'F')) NOT NULL,
    EmailPref varchar(200) NOT NULL UNIQUE,
    CodCurso integer,
    PRIMARY KEY(NumeroCartao),
    FOREIGN KEY(CodCurso) REFERENCES Curso (CodCurso)
);

CREATE TABLE OutroEmail (
    NumeroCartao integer NOT NULL,
    Email varchar(200) NOT NULL,
    PRIMARY KEY(Email, NumeroCartao),
    FOREIGN KEY (NumeroCartao) REFERENCES Pessoa(NumeroCartao)
);

CREATE TABLE Projeto (
    CodProj integer NOT NULL UNIQUE,
    NomeProj varchar(200) NOT NULL,
    AnoInicio integer NOT NULL,
    AnoFim integer NOT NULL,
    CodProjAnte integer, 
    PRIMARY KEY(CodProj),
    FOREIGN KEY(CodProjAnte) REFERENCES Projeto(CodProj)
);

CREATE TABLE ProjetoPessoa (
    CodProj int NOT NULL,
    NumeroCartao int NOT NULL,
    PapelPessProj VARCHAR(8) CHECK (PapelPessProj in ('Líder', 'Membro', 'Bolsista')),
    PRIMARY KEY(CodProj, NumeroCartao),
    FOREIGN KEY(CodProj) references Projeto(CodProj),
    FOREIGN KEY(NumeroCartao) references Pessoa(NumeroCartao)
);
