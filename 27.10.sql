# Parte 1 – Criação do Ambiente

CREATE database aula10;

USE aula10;

CREATE TABLE tb_livros (
	id INT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    ano_publicacao INT,
    disponivel BOOLEAN DEFAULT true
);

# Parte 2 – Inserção de Dados

INSERT INTO tb_livros (id, titulo, autor, ano_publicacao, disponivel) 
VALUES
    (1, 'Dom Casmurro', 'Machado de Assis', 1899, true),
    (2, 'Memórias Póstumas de Brás Cubas', 'Machado de Assis', 1881, true),
    (3, 'O Cortiço', 'Aluísio Azevedo', 1890, false),
    (4, 'Iracema', 'José de Alencar', 1865, true),
    (5, 'Grande Sertão: Veredas', 'João Guimarães Rosa', 1956, true),
    (6, 'Vidas Secas', 'Graciliano Ramos', 1938, false),
    (7, 'Capitães da Areia', 'Jorge Amado', 1937, true),
    (8, 'O Guarani', 'José de Alencar', 1857, false),
    (9, 'A Hora da Estrela', 'Clarice Lispector', 1977, true),
    (10, 'O Primo Basílio', 'Eça de Queirós', 1878, true),
    (11, 'Os Maias', 'Eça de Queirós', 1888, false),
    (12, 'Cem Anos de Solidão', 'Gabriel García Márquez', 1967, true),
    (13, 'O Amor nos Tempos do Cólera', 'Gabriel García Márquez', 1985, false),
    (14, '1984', 'George Orwell', 1949, true),
    (15, 'A Revolução dos Bichos', 'George Orwell', 1945, true),
    (16, 'O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 1943, false),
    (17, 'O Hobbit', 'J.R.R. Tolkien', 1937, true),
    (18, 'O Senhor dos Anéis', 'J.R.R. Tolkien', 1954, false),
    (19, 'Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 1997, true),
    (20, 'Harry Potter e o Prisioneiro de Azkaban', 'J.K. Rowling', 1999, false),
    (21, 'Dom Quixote', 'Miguel de Cervantes', 1605, true),
    (22, 'A Divina Comédia', 'Dante Alighieri', 1320, false),
    (23, 'Ilíada', 'Homero', -750, true),
    (24, 'Odisséia', 'Homero', -725, true),
    (25, 'Orgulho e Preconceito', 'Jane Austen', 1813, false),
    (26, 'Frankenstein', 'Mary Shelley', 1818, true),
    (27, 'Drácula', 'Bram Stoker', 1897, false),
    (28, 'O Nome da Rosa', 'Umberto Eco', 1980, true),
    (29, 'As Crônicas de Nárnia', 'C.S. Lewis', 1950, false),
    (30, 'O Código Da Vinci', 'Dan Brown', 2003, true),
    (31, 'A Menina que Roubava Livros', 'Markus Zusak', 2005, false),
    (32, 'A Sombra do Vento', 'Carlos Ruiz Zafón', 2001, true),
    (33, 'O Caçador de Pipas', 'Khaled Hosseini', 2003, true),
    (34, 'A Cidade e as Serras', 'Eça de Queirós', 1901, false),
    (35, 'Ensaio sobre a Cegueira', 'José Saramago', 1995, true),
    (36, 'O Processo', 'Franz Kafka', 1925, false),
    (37, 'A Metamorfose', 'Franz Kafka', 1915, true),
    (38, 'Os Miseráveis', 'Victor Hugo', 1862, false),
    (39, 'O Corcunda de Notre-Dame', 'Victor Hugo', 1831, true),
    (40, 'A Arte da Guerra', 'Sun Tzu', -500, false),
    (41, 'O Príncipe', 'Maquiavel', 1532, true),
    (42, 'Os Três Mosqueteiros', 'Alexandre Dumas', 1844, true),
    (43, 'Vinte Mil Léguas Submarinas', 'Júlio Verne', 1870, false),
    (44, 'A Volta ao Mundo em 80 Dias', 'Júlio Verne', 1873, true),
    (45, 'Admirável Mundo Novo', 'Aldous Huxley', 1932, false),
    (46, 'Os Irmãos Karamázov', 'Fiódor Dostoiévski', 1880, true),
    (47, 'Crime e Castigo', 'Fiódor Dostoiévski', 1866, false),
    (48, 'Guerra e Paz', 'Liev Tolstói', 1869, true),
    (49, 'Anna Kariênina', 'Liev Tolstói', 1877, false),
    (50, 'O Estrangeiro', 'Albert Camus', 1942, true),
    (51, 'O Velho e o Mar', 'Ernest Hemingway', 1952, false),
    (52, 'O Sol é para Todos', 'Harper Lee', 1960, true),
    (53, 'O Apanhador no Campo de Centeio', 'J.D. Salinger', 1951, false),
    (54, 'Neuromancer', 'William Gibson', 1984, true),
    (55, 'Duna', 'Frank Herbert', 1965, false),
    (56, 'Fahrenheit 451', 'Ray Bradbury', 1953, true),
    (57, 'O Silmarillion', 'J.R.R. Tolkien', 1977, false),
    (58, 'O Homem Invisível', 'H.G. Wells', 1897, true),
    (59, 'O Médico e o Monstro', 'Robert Louis Stevenson', 1886, false),
    (60, 'Moby Dick', 'Herman Melville', 1851, true),
    (61, 'Inferno', 'Dan Brown', 2013, false),
    (62, 'O Chamado de Cthulhu', 'H.P. Lovecraft', 1928, true),
    (63, 'O Poderoso Chefão', 'Mario Puzo', 1969, false),
    (64, 'A Ilha do Tesouro', 'Robert Louis Stevenson', 1883, true),
    (65, 'Os Contos de Canterbury', 'Geoffrey Chaucer', 1400, false),
    (66, 'A Máquina do Tempo', 'H.G. Wells', 1895, true),
    (67, 'As Vinhas da Ira', 'John Steinbeck', 1939, false),
    (68, 'O Peregrino', 'John Bunyan', 1678, true),
    (69, 'A Insustentável Leveza do Ser', 'Milan Kundera', 1980, true),
    (70, 'O Livro do Desassossego', 'Fernando Pessoa', 1980, false),
    (71, 'O Cortiço', 'Aluísio Azevedo', 1890, false);
    
SELECT * FROM tb_livros;

# Parte 3 – Atualizações (UPDATE)

# Nível 1 – Básico

-- 01. Atualize o título do livro com id = 1 para 'Dom Casmurro - Edição Comentada'.

UPDATE tb_livros
SET titulo = "Dom Casmurro - Edição Comentada"
WHERE id = 1;

-- 02. Altere o nome do autor 'Machado de Assis' para 'Machado Assis'

UPDATE tb_livros
SET autor = "Machado Assis"
WHERE autor = "Machado de Assis";

-- 03. Corrija o nome do autor 'Machado Assis' para 'Machado de Assis'

UPDATE tb_livros
SET autor = "Machado de Assis"
WHERE autor = "Machado Assis";

-- 04. Atualize o ano de publicação do livro 'O Cortiço' para 1891.

UPDATE tb_livros
SET ano_publicacao = 1891
WHERE titulo = "O Cortiço";

-- 05. Marque como indisponível o livro 'Iracema'.

UPDATE tb_livros
SET disponivel = FALSE
WHERE titulo = "Iracema";

-- 06. Corrija o título do livro 'Odisséia' para 'Odisseia' (sem acento).

UPDATE tb_livros
SET titulo = "Odisseia"
WHERE titulo = "Odisséia";

# Nível 2 – Intermediário

-- 07. Marque como disponível todos os livros do autor 'George Orwell'.

UPDATE tb_livros
SET disponivel = TRUE
WHERE autor = "George Orwell";

-- 08. Atualize o ano de publicação para 2000 nos livros do autor 'J.K. Rowling'.

UPDATE tb_livros
SET ano_publicacao = 2000
WHERE autor = "J.K. Rowling";

-- 09. Marque como indisponíveis todos os livros publicados antes do ano 1900.

UPDATE tb_livros
SET disponivel = FALSE
WHERE ano_publicacao < 1900;

-- 10. Atualize todos os livros do autor 'J.R.R. Tolkien' para estarem indisponíveis.

UPDATE tb_livros
SET disponivel =  FALSE
WHERE autor = "J.R.R. Tolkien";

-- 11. Corrija o título 'A Hora da Estrela' para 'A Hora da Estrela - Edição Definitiva'.

UPDATE tb_livros
SET titulo = "A Hora da Estrela - Edição Definitiva"
WHERE titulo = "A Hora da Estrela";

# Nível 3 – Avançado

-- 12. Marque como disponível todos os livros com título que contenha 'Harry Potter'.

UPDATE tb_livros
SET disponivel = TRUE
WHERE titulo LIKE "%Harry Potter%";

-- 13. Adicione ' - Volume Único' ao final de todos os títulos dos livros do autor 'Victor Hugo'.

UPDATE tb_livros
SET titulo = CONCAT(titulo, " - Volume Único")
WHERE autor = "Victor Hugo";

-- 14. Atualize os títulos dos livros de 'Franz Kafka' para iniciarem com '[Kafka] '.

UPDATE tb_livros
SET titulo = CONCAT("[Kafka] ", titulo)
WHERE autor = "Franz Kafka";

-- 15. Marque como indisponíveis todos os livros entre os anos de 1940 e 1980 (inclusive).

UPDATE tb_livros
SET disponivel = FALSE
WHERE ano_publicacao BETWEEN 1940 AND 1980;

-- 16. Atualize o autor 'H.G. Wells' para aparecer em letras maiúsculas.

UPDATE tb_livros
SET autor = UPPER(autor)
WHERE autor = "H.G. Wells";

# Parte 4 – Consultas (SELECT)

-- 17. Liste todos os autores e a quantidade de livros que possuem na tabela.

SELECT
autor,
COUNT(*) AS quantidade_livros
FROM tb_livros
GROUP BY autor;

-- 18. Mostre os autores que possuem mais de 2 livros cadastrados.

SELECT
autor,
COUNT(*) AS quantidade_livros
FROM tb_livros
GROUP BY autor
HAVING quantidade_livros > 2;

-- 19. Apresente a média do ano de publicação dos livros disponíveis.

SELECT
AVG(ano_publicacao) AS media_publicacao
FROM tb_livros
WHERE disponivel = TRUE;

-- 20. Liste os livros publicados antes da média geral de ano de publicação.

SELECT
titulo,
ano_publicacao
FROM tb_livros
WHERE ano_publicacao < (SELECT AVG(ano_publicacao) FROM tb_livros);

-- 21. Liste os autores e a média de ano de publicação de seus livros, ordenados do mais novo para o mais antigo.

SELECT
autor,
AVG(ano_publicacao) AS media_publicacao
FROM tb_livros
GROUP BY autor
ORDER BY media_publicacao DESC;

-- 22. Liste os livros com título contendo a letra 'e' ordenados alfabeticamente.

SELECT
*
FROM tb_livros
WHERE titulo LIKE "%e%"
ORDER BY titulo ASC;

-- 23. Conte quantos livros estão disponíveis e quantos estão indisponíveis.

SELECT
DISTINCT
(SELECT COUNT(*) FROM tb_livros WHERE disponivel = TRUE) AS livros_disponiveis,
(SELECT COUNT(*) FROM tb_livros WHERE disponivel = FALSE) AS livros_indisponiveis
FROM tb_livros;

-- ------------------------- OUTRA MANEIRA ---------------------------------

SELECT
disponivel,
COUNT(*)
FROM tb_livros
GROUP BY disponivel;

-- 24. Liste os livros agrupados por século (ano_publicacao/100), e a quantidade de livros por século. <---- IA

SELECT
    *,
    FLOOR(ano_publicacao / 100) AS seculo,
    (
        SELECT COUNT(*)
        FROM tb_livros AS l2
        WHERE FLOOR(l2.ano_publicacao / 100) =
              FLOOR(l1.ano_publicacao / 100)
    ) AS quantidade_livros
FROM tb_livros AS l1;


-- 25. Liste os livros que foram publicados no mesmo ano de algum outro livro (ano com mais de um título).

SELECT
*
FROM tb_livros
WHERE ano_publicacao IN (
    SELECT ano_publicacao
    FROM tb_livros
    GROUP BY ano_publicacao
    HAVING COUNT(*) > 1
);

-- 26. Liste os autores que só têm livros indisponíveis.

SELECT
autor
FROM tb_livros
GROUP BY autor
HAVING SUM(disponivel = TRUE) = 0;