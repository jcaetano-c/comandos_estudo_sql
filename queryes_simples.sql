-- SELECT TOP 100 Id, Nome, CategoriaId
-- SELECT *
--     FROM Categoria
--         -- WHERE CategoriaId = 1
--             -- ORDER BY Nome DESC
--     UPDATE Categoria SET Nome = 'Mobile'
--         WHERE Id = 3

SELECT *
    FROM Categoria

BEGIN TRANSACTION
    UPDATE Categoria
    SET Nome = 'Mobal'
    WHERE Id = 3
-- Vai exibir o retorno da transaction e então desfazê-la
-- ROLLBACK
-- Vai executar as ações da transaction e aplicá-las
COMMIT