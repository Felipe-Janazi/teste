USE vortex;

CREATE TABLE Empresa (
    idEmpresa INT PRIMARY KEY,
    nome VARCHAR(45),
    cnpj VARCHAR(45),
    cep VARCHAR(45),
    cidade VARCHAR(45),
    bairro VARCHAR(45),
    numero VARCHAR(45)
);

CREATE TABLE Usuarios (
    idUsuarios INT PRIMARY KEY,
    nome VARCHAR(45),
    email VARCHAR(45),
    senha VARCHAR(45)
);

CREATE TABLE Funcionarios (
    idFuncionarios INT PRIMARY KEY,
    cpf VARCHAR(45),
    cargo VARCHAR(45),
    fkUsuario INT,
    fkGerente INT,
    fkEmpresa INT,
    FOREIGN KEY (fkUsuario) REFERENCES Usuarios(idUsuarios),
    FOREIGN KEY (fkEmpresa) REFERENCES Empresa(idEmpresa)
);

CREATE TABLE DadosInseridos (
    idDadosInseridos INT PRIMARY KEY,
    bairro VARCHAR(45),
    cidade VARCHAR(45),
    valorM2 VARCHAR(45),
    densidade VARCHAR(45),
    dtInsercao VARCHAR(45),
    idh  INT
);

CREATE TABLE Simulacao (
    idSimulacao INT PRIMARY KEY,
    dtSimulacao VARCHAR(45),
    zona VARCHAR(45),
    bairro VARCHAR(45),
    fkFuncionario INT,
    fkDadosInseridos INT,
    FOREIGN KEY (fkFuncionario) REFERENCES Funcionarios(idFuncionarios),
    FOREIGN KEY (fkDadosInseridos) REFERENCES DadosInseridos(idDadosInseridos)
);
