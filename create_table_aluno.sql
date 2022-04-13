USE [Curso]

-- DROP TABLE [Aluno]
CREATE TABLE [Aluno](
    -- Info da tabela são colocadas aqui
    -- coluna tipo
    [Id] INT NOT NULL,
    [Nome] NVARCHAR(80) NOT NULL,
    [Email] NVARCHAR(80) NOT NULL,
    [Nascimento] DATETIME NULL,
    [Active] BIT NOT NULL DEFAULT(0),

    -- Dá um nome a um campo especial
    CONSTRAINT [UQ_Aluno_Email] UNIQUE([Email]),
    -- Define qual campo representa a PK
    CONSTRAINT [PK_Aluno] PRIMARY KEY([Id]),

)
