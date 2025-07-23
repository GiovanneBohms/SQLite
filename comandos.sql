-- database: ./db.sqli

CREATE TABLE cursos (
  id INTEGER NOT NULL,
  nome TEXT NOT NULL,
  aulas INTEGER
);

-- Exercício
CREATE TABLE produtos (
id INTEGER NOT NULL,
nome TEXT NOT NULL,
preco DECIMAL NOT NULL
);
CREATE TABLE clientes(
  id INTEGER NOT NULL,
  nome TEXT NOT NULL,
  email TEXT NOT NULL
);
CREATE TABLE compras(
  id INTEGER NOT NULL,
  cliente_id INTEGER NOT NULL,
  produto_id INTEGER NOT NULL,
  data TEXT NOT NULL
);

INSERT INTO produtos (id, nome, preco) VALUES
(1,'Notebook',1000),
(2,'Smartphone', 500),
(3,'Tablet',300);

INSERT INTO clientes (id, nome,email) VALUES 
(1,'Maria','maria@email.com'),
(2,'Joao', 'joao@email.com');

INSERT INTO compras (id, cliente_id,produto_id,data) VALUES
(1,2,1,'2049-01-01'),
(2,1,2,'2049-01-05'),
(3,2,2,'2049-01-01');


SELECT * FROM produtos;

SELECT nome FROM produtos;

SELECT "nome" FROM "produtos" WHERE "preco" >400;
SELECT * FROM "compras" WHERE "cliente_id" = 2;

SELECT * FROM clientes;
SELECT * FROM compras;

PRAGMA TABLE_INFO ('produtos');
