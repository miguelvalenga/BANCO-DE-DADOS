# Atividade prática — Manipulação de dados na biblioteca

SELECT * FROM tb_livros;

# Etapa 1 — Exclusão, limpeza e recarga inicial

-- 1. A tabela possui dois cadastros do livro “O Cortiço”. Utilize DELETE para remover somente o registro de id = 71, preservando o registro de id = 3.

DELETE FROM tb_livros
WHERE id = 71;

-- 2. Após a exclusão específica, utilize TRUNCATE para remover todos os registros restantes da tabela tb_livros, preservando sua estrutura.

TRUNCATE tb_livros;

-- 3. Execute o INSERT fornecido pelo professor para cadastrar novamente os 71 registros originais. Consulte a quantidade de registros para confirmar a carga. A partir desta questão, não esvazie nem recarregue a tabela.

INSERT INTO tb_livros (id, titulo, autor, ano_publicacao, disponivel)
VALUES
    (1, 'Dom Casmurro', 'Machado de Assis', 1899, TRUE),
    (2, 'Memórias Póstumas de Brás Cubas', 'Machado de Assis', 1881, TRUE),
    (3, 'O Cortiço', 'Aluísio Azevedo', 1890, FALSE),
    (4, 'Iracema', 'José de Alencar', 1865, TRUE),
    (5, 'Grande Sertão: Veredas', 'João Guimarães Rosa', 1956, TRUE),
    (6, 'Vidas Secas', 'Graciliano Ramos', 1938, FALSE),
    (7, 'Capitães da Areia', 'Jorge Amado', 1937, TRUE),
    (8, 'O Guarani', 'José de Alencar', 1857, FALSE),
    (9, 'A Hora da Estrela', 'Clarice Lispector', 1977, TRUE),
    (10, 'O Primo Basílio', 'Eça de Queirós', 1878, TRUE),
    (11, 'Os Maias', 'Eça de Queirós', 1888, FALSE),
    (12, 'Cem Anos de Solidão', 'Gabriel García Márquez', 1967, TRUE),
    (13, 'O Amor nos Tempos do Cólera', 'Gabriel García Márquez', 1985, FALSE),
    (14, '1984', 'George Orwell', 1949, TRUE),
    (15, 'A Revolução dos Bichos', 'George Orwell', 1945, TRUE),
    (16, 'O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 1943, FALSE),
    (17, 'O Hobbit', 'J.R.R. Tolkien', 1937, TRUE),
    (18, 'O Senhor dos Anéis', 'J.R.R. Tolkien', 1954, FALSE),
    (19, 'Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 1997, TRUE),
    (20, 'Harry Potter e o Prisioneiro de Azkaban', 'J.K. Rowling', 1999, FALSE),
    (21, 'Dom Quixote', 'Miguel de Cervantes', 1605, TRUE),
    (22, 'A Divina Comédia', 'Dante Alighieri', 1320, FALSE),
    (23, 'Ilíada', 'Homero', -750, TRUE),
    (24, 'Odisséia', 'Homero', -725, TRUE),
    (25, 'Orgulho e Preconceito', 'Jane Austen', 1813, FALSE),
    (26, 'Frankenstein', 'Mary Shelley', 1818, TRUE),
    (27, 'Drácula', 'Bram Stoker', 1897, FALSE),
    (28, 'O Nome da Rosa', 'Umberto Eco', 1980, TRUE),
    (29, 'As Crônicas de Nárnia', 'C.S. Lewis', 1950, FALSE),
    (30, 'O Código Da Vinci', 'Dan Brown', 2003, TRUE),
    (31, 'A Menina que Roubava Livros', 'Markus Zusak', 2005, FALSE),
    (32, 'A Sombra do Vento', 'Carlos Ruiz Zafón', 2001, TRUE),
    (33, 'O Caçador de Pipas', 'Khaled Hosseini', 2003, TRUE),
    (34, 'A Cidade e as Serras', 'Eça de Queirós', 1901, FALSE),
    (35, 'Ensaio sobre a Cegueira', 'José Saramago', 1995, TRUE),
    (36, 'O Processo', 'Franz Kafka', 1925, FALSE),
    (37, 'A Metamorfose', 'Franz Kafka', 1915, TRUE),
    (38, 'Os Miseráveis', 'Victor Hugo', 1862, FALSE),
    (39, 'O Corcunda de Notre-Dame', 'Victor Hugo', 1831, TRUE),
    (40, 'A Arte da Guerra', 'Sun Tzu', -500, FALSE),
    (41, 'O Príncipe', 'Maquiavel', 1532, TRUE),
    (42, 'Os Três Mosqueteiros', 'Alexandre Dumas', 1844, TRUE),
    (43, 'Vinte Mil Léguas Submarinas', 'Júlio Verne', 1870, FALSE),
    (44, 'A Volta ao Mundo em 80 Dias', 'Júlio Verne', 1873, TRUE),
    (45, 'Admirável Mundo Novo', 'Aldous Huxley', 1932, FALSE),
    (46, 'Os Irmãos Karamázov', 'Fiódor Dostoiévski', 1880, TRUE),
    (47, 'Crime e Castigo', 'Fiódor Dostoiévski', 1866, FALSE),
    (48, 'Guerra e Paz', 'Liev Tolstói', 1869, TRUE),
    (49, 'Anna Kariênina', 'Liev Tolstói', 1877, FALSE),
    (50, 'O Estrangeiro', 'Albert Camus', 1942, TRUE),
    (51, 'O Velho e o Mar', 'Ernest Hemingway', 1952, FALSE),
    (52, 'O Sol é para Todos', 'Harper Lee', 1960, TRUE),
    (53, 'O Apanhador no Campo de Centeio', 'J.D. Salinger', 1951, FALSE),
    (54, 'Neuromancer', 'William Gibson', 1984, TRUE),
    (55, 'Duna', 'Frank Herbert', 1965, FALSE),
    (56, 'Fahrenheit 451', 'Ray Bradbury', 1953, TRUE),
    (57, 'O Silmarillion', 'J.R.R. Tolkien', 1977, FALSE),
    (58, 'O Homem Invisível', 'H.G. Wells', 1897, TRUE),
    (59, 'O Médico e o Monstro', 'Robert Louis Stevenson', 1886, FALSE),
    (60, 'Moby Dick', 'Herman Melville', 1851, TRUE),
    (61, 'Inferno', 'Dan Brown', 2013, FALSE),
    (62, 'O Chamado de Cthulhu', 'H.P. Lovecraft', 1928, TRUE),
    (63, 'O Poderoso Chefão', 'Mario Puzo', 1969, FALSE),
    (64, 'A Ilha do Tesouro', 'Robert Louis Stevenson', 1883, TRUE),
    (65, 'Os Contos de Canterbury', 'Geoffrey Chaucer', 1400, FALSE),
    (66, 'A Máquina do Tempo', 'H.G. Wells', 1895, TRUE),
    (67, 'As Vinhas da Ira', 'John Steinbeck', 1939, FALSE),
    (68, 'O Peregrino', 'John Bunyan', 1678, TRUE),
    (69, 'A Insustentável Leveza do Ser', 'Milan Kundera', 1980, TRUE),
    (70, 'O Livro do Desassossego', 'Fernando Pessoa', 1980, FALSE),
    (71, 'O Cortiço', 'Aluísio Azevedo', 1890, FALSE);
    
SELECT
COUNT(*)
FROM tb_livros;

# Etapa 2 — Inserção de novos livros

-- 4. Insira o livro “A Montanha Mágica”, de Thomas Mann, publicado em 1924, utilizando o id = 72 e marcando-o como disponível.

INSERT INTO tb_livros (id, titulo, autor, ano_publicacao, disponivel)
VALUE
(72, "A Montanha Mágica", "Thomas Mann", 1924, TRUE);

-- 5. Insira o livro “O Lobo da Estepe”, de Hermann Hesse, publicado em 1927, utilizando o id = 73 e marcando-o como indisponível.

INSERT INTO tb_livros (id, titulo, autor, ano_publicacao, disponivel)
VALUE
(73, "O Lobo da Estepe", "Hermann Hesse", 1927, FALSE);

-- 6. Insira o livro “Solaris”, de Stanisław Lem, publicado em 1961, utilizando o id = 74. Omita a coluna disponivel para utilizar seu valor padrão. Depois, consulte o registro para verificar a disponibilidade.

INSERT INTO tb_livros (id, titulo, autor, ano_publicacao)
VALUE
(74, "Solaris", "Stanisław Lem", 1961);

-- 7. Insira o livro “O Som e a Fúria”, de William Faulkner, publicado em 1929, utilizando o id = 75 e marcando-o como disponível.

INSERT INTO tb_livros (id, titulo, autor, ano_publicacao, disponivel)
VALUE
(75, "O Som e a Fúria", "William Faulkner", 1929, TRUE);

-- 8. Insira um livro fictício do autor Albert Camus, utilizando o id = 76, o título “Horizontes do Amanhã”, o ano de publicação 2020 e a disponibilidade FALSE.

INSERT INTO tb_livros (id, titulo, autor, ano_publicacao, disponivel)
VALUE
(76, "Horizontes do Amanhã", "Albert Camus", 2020, FALSE);

# Etapa 3 — Consultas e análise do catálogo

-- 9. Conte quantos livros estão disponíveis para empréstimo neste momento.

SELECT
	COUNT(*)
FROM tb_livros
WHERE disponivel = TRUE;

-- 10. Liste cada autor e sua quantidade de registros cadastrados. Ordene da maior para a menor quantidade e, em caso de empate, pelo nome do autor em ordem alfabética. Considere os registros duplicados na contagem.

SELECT
	autor,
	COUNT(*) as quantidade_livros
FROM tb_livros
GROUP BY autor
ORDER BY quantidade_livros DESC, autor ASC;

-- 11. Encontre o livro ou os livros com o menor ano de publicação da tabela. Utilize uma subquery com MIN.

SELECT *
FROM tb_livros
WHERE ano_publicacao = (
    SELECT MIN(ano_publicacao)
    FROM tb_livros
);

-- 12. Identifique os autores que possuem mais de dois registros cadastrados. Exiba o nome do autor e a quantidade, utilizando GROUP BY e HAVING.

SELECT
    autor,
    COUNT(*) as quantidade_livros
FROM tb_livros
GROUP BY autor
HAVING quantidade_livros > 2;

# Etapa 4 — Atualizações básicas

-- 13. Marque o livro “Dom Casmurro” como indisponível.

UPDATE tb_livros
set disponivel = FALSE
WHERE titulo = "Dom Casmurro";

-- 14. Corrija para 1891 o ano de publicação de todos os registros cujo título seja “O Cortiço”, incluindo o cadastro duplicado.

UPDATE tb_livros
set ano_publicacao = 1891
WHERE titulo = "O Cortiço";

-- 15. Marque o livro “Vidas Secas”, identificado pelo id = 6, como disponível.

UPDATE tb_livros
set disponivel = TRUE
WHERE id = 6;

-- 16. Atualize o nome do autor “George Orwell” para “George Orwell (Verificado)” em todas as suas obras.

UPDATE tb_livros
SET autor = "George Orwell (Verificado)"
WHERE autor = "George Orwell";

-- 17. Marque todos os livros do autor Fiódor Dostoiévski como disponíveis.

UPDATE tb_livros
SET disponivel = TRUE
WHERE autor = "Fiódor Dostoiévski";

-- 18. Atualize o título do livro com id = 18 para “O Senhor dos Anéis: A Sociedade do Anel”.

UPDATE tb_livros
SET titulo = "O Senhor dos Anéis: A Sociedade do Anel"
WHERE id = 18;

# Etapa 5 — Atualizações com filtros e subqueries

-- 19. Marque como indisponíveis os livros da autora J.K. Rowling publicados antes de 1999.

UPDATE tb_livros
SET disponivel = FALSE
WHERE autor = "J.K. Rowling"
AND ano_publicacao < 1999;

-- 20. Torne disponíveis os livros indisponíveis publicados entre 1950 e 2000, incluindo os limites. Utilize BETWEEN combinado com AND.

UPDATE tb_livros
SET disponivel = TRUE
WHERE ano_publicacao BETWEEN 1950 AND 2000;

-- 21. Marque todos os livros do autor Victor Hugo como indisponíveis. Utilize uma subquery no WHERE para selecionar os IDs dos livros desse autor.

UPDATE tb_livros
SET disponivel = FALSE
WHERE id IN (
    SELECT id FROM (
        SELECT id
        FROM tb_livros
        WHERE autor = "Victor Hugo"
    ) AS livros
);

-- 22. Torne disponíveis os livros indisponíveis publicados entre 1930 e 1950, incluindo os limites. Utilize uma subquery no WHERE para selecionar seus IDs.

UPDATE tb_livros
SET disponivel = TRUE
WHERE id IN (
    SELECT id
    FROM (
        SELECT id
        FROM tb_livros
        WHERE disponivel = FALSE
        AND ano_publicacao BETWEEN 1930 AND 1950
    ) AS livros
);

-- 23. Marque como disponíveis todos os livros de autores cujo nome contenha “Kafka”. Utilize LIKE.

UPDATE tb_livros
SET disponivel = TRUE
WHERE autor LIKE "%Kafka%";

-- 24. Antes do inventário, a equipe solicitou retirar algumas obras de circulação. Marque como indisponíveis todos os livros dos autores Dan Brown, George Orwell (Verificado) e H.G. Wells. Utilize IN, considerando a alteração do nome realizada anteriormente.

UPDATE tb_livros
SET disponivel = FALSE
WHERE autor IN (
    'Dan Brown',
    'George Orwell (Verificado)',
    'H.G. Wells'
);

-- 25. A biblioteca decidiu disponibilizar todas as obras publicadas de 1930 a 1969, incluindo os limites. Utilize BETWEEN para atualizar a disponibilidade para verdadeiro, independentemente do status atual.

UPDATE tb_livros
SET disponivel = TRUE
WHERE ano_publicacao BETWEEN 1930 AND 1969;

-- 26. Atualize para “Autor Revisado” o campo autor de todas as obras cujo nome do autor contenha “Tolstói”. Utilize LIKE.

UPDATE tb_livros
SET autor = "Autor Revisado"
WHERE autor LIKE "%Tolstói%";

-- 27. Algumas obras entrarão em restauração. Marque como indisponíveis os livros publicados antes de 1950 ou cujo título contenha “Mundo”. Utilize OR.

UPDATE tb_livros
SET disponivel = FALSE
WHERE ano_publicacao < 1950
OR titulo LIKE "%Mundo%";

-- 28. Após uma conferência, a equipe solicitou garantir que os livros de IDs 3, 6, 11, 18 e 45 estejam disponíveis. Utilize IN para atualizar esses registros, independentemente da disponibilidade atual.

UPDATE tb_livros
SET disponivel = TRUE
WHERE id IN (3,6,11,18,45);

-- 29. A biblioteca lançará uma edição comemorativa de algumas coleções. Localize os livros cujo título contenha “Senhor” ou “Nárnia” e acrescente “ (Coleção Especial)” ao final do título, preservando o texto original. Utilize LIKE, OR e CONCAT.

UPDATE tb_livros
SET titulo = CONCAT(titulo, " (Coleção Especial)")
WHERE titulo LIKE "%Senhor%"
OR titulo LIKE "%Nárnia%";

# Etapa 6 — Exclusões específicas e com múltiplas condições

-- 30. Exclua o livro “O Código Da Vinci” da base de dados.

DELETE FROM tb_livros
WHERE titulo = "O Código Da Vinci";

-- 31. Exclua todos os livros indisponíveis do autor H.G. Wells. Considere as atualizações realizadas nas questões anteriores.

DELETE FROM tb_livros
WHERE disponivel = FALSE
AND autor = "H.G. Wells";

-- 32. Remova todos os livros do autor Eça de Queirós.

DELETE FROM tb_livros
WHERE autor = "Eça de Queirós";

-- 33. Exclua todos os livros cujo ano de publicação seja menor que zero.

DELETE FROM tb_livros
WHERE ano_publicacao < 0;

-- 34. Remova os livros disponíveis do autor José de Alencar.

DELETE FROM tb_livros
WHERE disponivel = TRUE
AND autor = "José de Alencar";

-- 35. A biblioteca solicitou remover todos os livros indisponíveis dos autores Victor Hugo e Franz Kafka. Utilize IN combinado com AND.

DELETE FROM tb_livros
WHERE disponivel = FALSE
AND autor IN ("Victor Hugo", "Franz Kafka");

-- 36. Remova os livros indisponíveis publicados entre 1800 e 1900, incluindo os limites. Utilize BETWEEN combinado com AND.

DELETE FROM tb_livros
WHERE disponivel = FALSE
AND ano_publicacao BETWEEN 1800 AND 1900;

-- 37. Após a limpeza anterior, exclua todos os registros que ainda estejam indisponíveis e tenham sido publicados antes de 1900.

DELETE FROM tb_livros
WHERE disponivel = FALSE
AND ano_publicacao < 1900;

-- 38. Exclua os livros que estejam indisponíveis e tenham sido publicados a partir do ano 2000. Utilize AND.

DELETE FROM tb_livros
WHERE disponivel = FALSE
AND ano_publicacao >= 2000;

# Etapa 7 — Exclusão com subquery e coleção temática

-- 39. Exclua todos os livros dos autores que, neste momento da atividade, possuem mais de dois registros cadastrados. Utilize uma subquery com GROUP BY e HAVING COUNT(*) > 2. Considere o conteúdo atual da tabela, após todas as operações anteriores.

DELETE FROM tb_livros
WHERE autor IN (
	SELECT autor FROM (
		SELECT autor
		FROM tb_livros
		GROUP BY autor
		HAVING COUNT(*) > 2
        ) AS contagem
    );

-- 40. A biblioteca deseja manter uma coleção temática contendo apenas obras de J.K. Rowling. Exclua todos os registros cujo autor não contenha “J.K. Rowling”, utilizando NOT LIKE. Depois, consulte a tabela e confira se permaneceram somente os dois livros dessa autora.

DELETE FROM tb_livros
WHERE autor NOT LIKE "%J.K. Rowling%";

SELECT * FROM tb_livros;