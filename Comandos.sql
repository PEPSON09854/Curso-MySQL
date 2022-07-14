-- Criando uma tabela
CREATE TABLE pessoas (
    -- Criando colunas
    id INT NOT PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE
)

-- Inserindo dados na tabela
INSERT INTO pessoas (nome, nascimento) VALUES ('João', '1997 06 18'); -- Inseriu nas colunas (nome) o valor 'João' e na coluna(nascimento) o valor da dada 
INSERT INTO pessoas (nome, nascimento) VALUES ('Nathally', '1990 05 22'); -- Inseriu nas colunas (nome) o valor 'Nathally' e na coluna(nascimento) o valor da dada
INSERT INTO pessoas (nome, nascimento) VALUES ('Pedro', '1995 07 03'); -- Inseriu nas colunas (nome) o valor 'Pedro' e na coluna(nascimento) o valor da dada

-- Selecionando dados da tabela
SELECT * FROM pessoas;--Seleciona tudo da tabela pessoas
SELECT nome FROM pessoas;--Seleciona a coluna nome
SELECT nome, nascimento FROM pessoas;--Seleciona a coluna nascimento

-- Atualizando dados da tabela
UPDATE pessoas SET nome="Nathally Souza";--Dessa forma irá atualizar todos os registro da coluna nome para Nathally Souza.
-- Utilizando a cláusula WHERE para definir uma condição ao comando UPDATE.
UPDATE pessoas SET nome="João Paulo" WHERE id=1;
UPDATE pessoas SET nome="Nathally Souza" WHERE id=2;
UPDATE pessoas SET nome="Pedro Daniel" WHERE id=3;

-- Ordenando dados de forma crescente ou decrescente com o comando ORDER BY
SELECT * FROM pessoas ORDER BY nome; --Por padrão o ORDER BY ordena dados de forma crescente
SELECT * FROM pessoas ORDER BY nome DESC;--Ordenação de forma descrescente

--Alterando uma tabela com o comando ALTER TABLE, adicionado nova coluna
ALTER TABLE "pessoas" ADD "genero" VARCHAR(1) NOT NULL AFTER "nascimento";
UPDATE pessoas SET genero="M" WHERE id=1;
UPDATE pessoas SET genero="F" WHERE id=2;
UPDATE pessoas SET genero="M" WHERE id=3;

-- Agrupando informaçães de dados de uma tabela com o comando GROUP BY
SELECT COUNT(id), genero FROM pessoas GROUP BY genero;


-- Deletando dados da tabela
DELETE FROM pessoas;--Deleta a tabela
DELETE FROM pessoas WHERE id=3;--Deleta por id
DELETE FROM pessoas WHERE nome="João Paulo";--Deleta por nome
DELETE FROM pessoas WHERE nascimento="1990 05 22";--Deleta por data de nascimento




