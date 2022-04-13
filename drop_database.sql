-- CREATE DATABASE [Curso]

-- O script abaixo mata os processos do banco que está sendo utilizado e então exclui ele.

-- Manda utilizar a master
USE [master];

-- Declara uma variavel kill
DECLARE @kill varchar(8000) = '';

-- A váriavel kill recebe o resultado da seleção dos processos cujo db_id == 'Curso'
SELECT @kill = @kill + 'kill ' + CONVERT(varchar(5), session_id)
    FROM sys.dm_exec_sessions
        WHERE database_id = db_id('balta')

-- Executa o conteúdo da váriavel kill
EXEC(@kill);

-- Deleta o banco de dados
DROP DATABASE [balta]
