-------------------------------------------------------------------

-- Objetivo 1 --
SELECT Id, Nome, Ano 
FROM Filmes
---------------------

-- Objetivo 2 --
SELECT Nome, Ano 
FROM Filmes 
ORDER BY Ano
-----------------

-- Objetivo 3 --
SELECT nome, ano, Duracao 
FROM Filmes 
WHERE Nome LIKE '%de volta%'
----------------------------

-- Objetivo 4 --
SELECT *
FROM Filmes
WHERE ano = 1997
----------------

-- Objetivo 5 --
SELECT *
FROM Filmes
WHERE ano > 2000
----------------

-- Objetivo 6 --
SELECT *
FROM Filmes
WHERE Duracao > 100 AND Duracao <150
ORDER BY Duracao
------------------------------------

-- Objetivo 7 --
SELECT Ano, COUNT(Ano) AS [Quantidade]
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC
--------------------------------------

-- Objetivo 8 --
SELECT *
FROM Atores
WHERE Genero = 'M'
------------------

-- Objetivo 9 --
SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome
---------------------

-- Objetivo 10 --
SELECT a.Nome, 
		b.Genero
FROM Filmes AS a
INNER JOIN FilmesGenero AS c ON a.Id = c.IdFilme
INNER JOIN Generos AS b ON b.id = c.IdGenero
------------------------------------------------

-- Objetivo 11 --
SELECT a.Nome, 
		b.Genero
FROM Filmes AS a
INNER JOIN FilmesGenero AS c ON a.Id = c.IdFilme
INNER JOIN Generos AS b ON b.id = c.IdGenero
WHERE Genero = 'Mistério'
------------------------------------------------

-- Objetivo 12 --
SELECT a.Nome,
		b.PrimeiroNome, b.UltimoNome,
		c.Papel
FROM Filmes AS a
INNER JOIN ElencoFilme AS c ON a.id = c.IdFilme
INNER JOIN Atores AS b ON b.id = c.IdAtor
-------------------------------------------------------------------