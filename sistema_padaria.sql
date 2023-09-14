use sistema_padaria;

-- Criação da tabela Cursos
CREATE TABLE Cursos (
    CursoID INT PRIMARY KEY,
    Nome NVARCHAR(255),
    Duracao INT,
    Valor DECIMAL(10, 2)
);

-- Criação da tabela Alunos
CREATE TABLE Alunos (
    AlunoID INT PRIMARY KEY,
    Nome NVARCHAR(255),
    DataNascimento DATE,
    Email NVARCHAR(255)
);

-- Criação da tabela Matriculas
CREATE TABLE Matriculas (
    MatriculaID INT PRIMARY KEY,
    AlunoID INT,
	FOREIGN KEY (AlunoID) REFERENCES Alunos(AlunoID),

    CursoID INT FOREIGN KEY REFERENCES Cursos(CursoID),
    DataMatricula DATE
);

-- Alteração da tabela Cursos para adicionar uma nova coluna
ALTER TABLE Cursos ADD Descricao NVARCHAR(MAX);