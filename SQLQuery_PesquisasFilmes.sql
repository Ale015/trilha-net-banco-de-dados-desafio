-- 1 - Buscar o nome e ano dos filmes --
SELECT Nome,Ano FROM dbo.Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano --
SELECT Nome,Ano,Duracao FROM dbo.Filmes ORDER BY Ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração --
SELECT Nome,Ano,Duracao FROM dbo.Filmes WHERE Nome = 'De Volta para o Futuro'

-- 4 - Buscar os filmes lançados em 1997 --
SELECT Nome,Ano,Duracao FROM dbo.Filmes WHERE Ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000 --
SELECT Nome,Ano,Duracao FROM dbo.Filmes  WHERE Ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente --
SELECT Nome,Ano,Duracao FROM dbo.Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente --
SELECT Ano,COUNT(*) Quantidade FROM dbo.Filmes GROUP BY Ano ORDER BY 
-- MAX(Duracao) DESC -- Requisitado pelo enunciado
Quantidade DESC -- Conforme imagem

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome --
SELECT PrimeiroNome,UltimoNome FROM dbo.Atores WHERE Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome --
SELECT PrimeiroNome, UltimoNome FROM dbo.Atores WHERE Genero = 'F' ORDER BY PrimeiroNome ASC

-- 10 - Buscar o nome do filme e o gênero --
SELECT F.Nome, G.Genero FROM dbo.FilmesGenero FG 
JOIN dbo.Filmes F ON F.Id = FG.IdFilme
JOIN dbo.Generos G ON G.Id = FG.IdGenero


-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério" --
SELECT F.Nome, G.Genero FROM dbo.FilmesGenero FG
JOIN dbo.Filmes F ON F.Id = FG.IdFilme
JOIN dbo.Generos G ON G.Id = FG.IdGenero
WHERE Genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM ElencoFilme EF
JOIN dbo.Filmes F ON F.Id = EF.IdFilme
JOIN dbo.Atores A ON A.Id = EF.IdAtor
