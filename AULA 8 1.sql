-- BANCO DE DADOS II - MISSOES SQL
-- Base didatica com uma unica tabela, sem necessidade de JOIN
-- Compatibilidade: MySQL 8.0+
 
CREATE DATABASE IF NOT EXISTS bd_missoes_loja;
USE bd_missoes_loja;
 
DROP TABLE IF EXISTS produtos;
 
CREATE TABLE produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL
);
 
-- Os dados contemplam produtos sem estoque, estoques criticos,
-- quantidades nao divisiveis por 4 e 6, precos decimais e categorias
-- com diferentes volumes e valores de estoque.
INSERT INTO produtos (nome, categoria, preco, estoque) VALUES
('Notebook Pro 15', 'Eletronicos', 4299.90, 2),
('Smartphone Max', 'Eletronicos', 2199.99, 8),
('Tablet 10', 'Eletronicos', 899.50, 0),
('Monitor 27', 'Eletronicos', 1299.90, 15),
('Smart TV 43', 'Eletronicos', 1899.00, 23),
('Caixa de Som Bluetooth', 'Eletronicos', 149.99, 45),
('Mouse Gamer', 'Perifericos', 89.90, 0),
('Teclado Mecanico', 'Perifericos', 259.90, 4),
('Webcam Full HD', 'Perifericos', 179.50, 7),
('Headset USB', 'Perifericos', 129.99, 12),
('Mousepad XL', 'Perifericos', 49.90, 25),
('Hub USB-C', 'Perifericos', 119.90, 36),
('Cabo HDMI', 'Acessorios', 29.90, 80),
('Cabo USB-C', 'Acessorios', 24.50, 60),
('Carregador Rapido', 'Acessorios', 99.90, 40),
('Suporte de Celular', 'Acessorios', 39.90, 22),
('Adaptador USB', 'Acessorios', 19.99, 18),
('Power Bank', 'Acessorios', 199.90, 13),
('Cadeira Ergonomica', 'Moveis', 899.90, 3),
('Mesa de Escritorio', 'Moveis', 649.99, 5),
('Estante Compacta', 'Moveis', 329.50, 0),
('Gaveteiro', 'Moveis', 249.90, 10),
('Controle Sem Fio', 'Games', 299.90, 1),
('Jogo de Corrida', 'Games', 199.90, 4),
('Console Portatil', 'Games', 1599.90, 8),
('Headset Gamer', 'Games', 399.99, 12),
('Caderno Universitario', 'Papelaria', 29.90, 0),
('Caneta Kit 10', 'Papelaria', 18.50, 2),
('Agenda Executiva', 'Papelaria', 59.90, 4),
('Organizador de Mesa', 'Papelaria', 79.99, 6);
 
-- Conferencia inicial (nao e gabarito das missoes)
SELECT * FROM produtos ORDER BY id_produto;
SELECT COUNT(*) AS total_produtos FROM produtos;
 
select * from produtos;
 
-- Missão 1 — Arredondamentos com FLOOR
 
# 1. Liste o nome e o preço de cada produto, acrescentando uma coluna que apresente o preço arredondado para baixo.
 
SELECT
	nome,
    preco,
	FLOOR(preco) as preco_arredondado
FROM produtos;
 
# 2. Cada caixa comporta 6 unidades de um mesmo produto. Mostre o nome, o estoque e quantas caixas completas podem ser preenchidas com a quantidade disponível.
 
SELECT
	nome,
    estoque,
    FLOOR(estoque / 6) as caixas_completas
FROM produtos;
 
# 3. A loja pretende organizar os produtos em kits com 4 unidades do mesmo produto. Apresente quantos kits completos podem ser montados para cada produto.
 
SELECT 
	nome,
    estoque,
    FLOOR(estoque / 4) as kits_completos
FROM produtos;
 
# 4. Calcule o preço médio dos produtos de cada categoria. Mostre a média original e seu valor arredondado para baixo.
 
SELECT
	categoria,
	AVG(preco) as preco_medio,
    FLOOR(AVG(preco)) as media_arredondada
FROM produtos
GROUP BY categoria;
 
-- Missão 2 — Arredondamentos com CEILING
 
# 5. Liste o nome e o preço de cada produto, acrescentando uma coluna que apresente o preço arredondado para cima.
 
SELECT
	nome,
    preco,
    CEILING(preco)
FROM produtos;
 
# 6. Para transportar todo o estoque, cada caixa comporta 6 unidades de um mesmo produto. Mostre quantas caixas serão necessárias para cada produto, incluindo uma eventual caixa incompleta.
 
SELECT
	nome,
    estoque,
    CEILING(estoque / 6) as caixas_necessarias
FROM produtos;
 
# 7. A empresa precisa comprar 25 unidades de cada produto, mas o fornecedor vende somente pacotes com 8 unidades. Calcule quantos pacotes devem ser comprados por produto para atingir ou ultrapassar essa quantidade.
 
SELECT
    nome,
    estoque,
    CEILING((25 - estoque) / 8) AS pacotes_necessarios
FROM produtos;
 
# 8. Apresente o nome, o preço original, o preço arredondado para baixo e o preço arredondado para cima. Acrescente a diferença entre os dois valores arredondados.
 
SELECT
	nome,
    preco,
    FLOOR(preco) as preco_arredondado_baixo,
    CEILING(preco) as preco_arredondado_cima,
    CEILING(preco) - FLOOR(preco) AS diferenca
FROM produtos;
    
-- Missão 3 — Filtros de grupos com HAVING
 
# 9. Mostre as categorias que possuem mais de 3 produtos cadastrados. Apresente a categoria e a quantidade de produtos.
 
SELECT
	categoria,
	COUNT(*) as quantidade
FROM produtos
GROUP BY categoria
HAVING quantidade > 3;
 
# 10. Mostre as categorias cuja soma das unidades em estoque seja superior a 50.

SELECT
	categoria,
    SUM(estoque) as estoque_total
FROM produtos
GROUP BY categoria
HAVING estoque_total > 50;
 
# 11. Apresente as categorias cujo preço médio seja maior que R$ 100,00.

SELECT
	categoria,
    AVG(preco) as preco_medio
FROM produtos
GROUP BY categoria
HAVING preco_medio > 100;
 
# 12. Considere somente os produtos com estoque maior que zero. Entre eles, mostre as categorias cujo valor total do estoque ultrapasse R$ 5.000,00. Apresente a categoria e o valor calculado.
 
SELECT
	categoria,
    SUM(preco * estoque) as preco_total
FROM produtos
WHERE estoque > 0
GROUP BY categoria
HAVING preco_total > 5000;
 
-- Missão 4 — Classificações com CASE
 
/* 13. Liste o nome e o estoque de cada produto, acrescentando uma classificação:
Condição	Classificação
Estoque igual a zero	Fora de estoque
Estoque maior que zero	Disponível
*/

SELECT
	nome,
    estoque,
    CASE
		WHEN estoque = 0 THEN "Fora de Estoque"
        ELSE "Disponível"
	END AS classificação
FROM produtos;
 
/* 14. Classifique os produtos conforme a quantidade disponível:
Quantidade em estoque	Classificação
0 unidades	Esgotado
De 1 a 5 unidades	Estoque crítico
De 6 a 20 unidades	Estoque moderado
Acima de 20 unidades	Estoque adequado
*/

SELECT
	nome,
    estoque,
    CASE
		WHEN estoque = 0 THEN "Fora de Estoque"
        WHEN estoque BETWEEN 1 AND 5 THEN "Estoque crítico"
        WHEN estoque BETWEEN 6 AND 20 THEN "Estoque moderado"
        ELSE "Estoque Adequado"
	END AS classificacao
FROM produtos;
 
/* 15. Liste o nome e o preço dos produtos, classificando-os nas seguintes faixas:
Preço	Classificação
Abaixo de R$ 100,00	Econômico
De R$ 100,00 até R$ 500,00, inclusive	Intermediário
Acima de R$ 500,00	Premium
*/
 
SELECT
	nome,
    preco,
    CASE
		WHEN preco < 100 THEN "Econômico"
        WHEN preco BETWEEN 100 AND 500 THEN "Intermediário"
        ELSE "Premium"
	END AS classificacao
FROM produtos;
 
# 16. A loja deseja manter pelo menos 20 unidades de cada produto. Mostre o nome, o estoque atual e a quantidade que precisa ser comprada. Produtos que já atingiram essa quantidade devem apresentar zero na coluna de reposição.

SELECT
	nome,
    estoque,
    CASE
		WHEN estoque >= 20 THEN 0
        ELSE 20 - estoque
	END AS reposicao
FROM produtos;

/*Desafio final — Relatório de reposição
A gerência solicitou um relatório para identificar as categorias que precisam de atenção.
Crie uma consulta que apresente, por categoria:
Quantidade de produtos cadastrados.
Quantidade total de unidades em estoque.
Preço médio original e arredondado para cima.
Valor total do estoque.
Classificação do estoque total: “Reposição urgente” quando houver menos de 20 unidades; “Atenção” entre 20 e 50 unidades, inclusive; “Estoque confortável” acima de 50 unidades.
O relatório deve apresentar somente categorias com pelo menos 2 produtos cadastrados, ordenadas pelo total de unidades em estoque, do menor para o maior.
Análise: escreva de 3 a 5 linhas explicando qual categoria deve receber prioridade de reposição e quais resultados sustentam essa decisão.*/

SELECT
	categoria,
    COUNT(*) as quantidade_produtos,
    SUM(estoque) as estoque_total,
    AVG(preco) as preco_medio,
    CEILING(AVG(preco)) as medio_arredondado_cima,
    SUM(preco * estoque) as valor_total,
    CASE
		WHEN SUM(estoque) < 20 THEN "Reposição urgente"
        WHEN SUM(estoque) BETWEEN 20 AND 50 THEN "Atenção"
        ELSE "Estoque confortável"
	END AS classificacao
FROM produtos
GROUP BY categoria
HAVING quantidade_produtos >= 2
ORDER BY estoque_total ASC;