CREATE TABLE pessoa (
    ID INT PRIMARY KEY,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    idade INT CHECK (idade >= 0)
);

ALTER TABLE pessoa
ADD CONSTRAINT unique_pessoa_id_nome_sobrenome
UNIQUE (ID, nome, sobrenome);

ALTER TABLE pessoa
ALTER COLUMN idade INT NOT NULL;

CREATE TABLE endereco (
    ID INT PRIMARY KEY,
    rua VARCHAR(100)
);

ALTER TABLE pessoa
ADD endereco_id INT;

ALTER TABLE pessoa
ADD CONSTRAINT fk_endereco
FOREIGN KEY (endereco_id) REFERENCES endereco(ID);

CREATE SCHEMA avaliacaocontinua AUTHORIZATION dbo;