SELECT Nome, Ano From Filmes;

SELECT Nome, Ano FROM Filmes
ORDER BY ANO ASC;

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

SELECT * FROM Filmes
WHERE Ano = 1997;

SELECT * FROM Filmes
WHERE Ano > 2000;

SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

SELECT Ano , COUNT(Ano) Quantidade From Filmes
GROUP BY Ano
ORDER BY SUM(Duracao) DESC;

SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'M';

SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

SELECT f.Nome AS Nome, g.Genero AS Genero FROM Filmes f 
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;

SELECT f.Nome AS Nome, g.Genero AS Genero FROM Filmes f 
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

SELECT f.Nome AS Nome, a.PrimeiroNome AS PrimeiroNome, a.UltimoNome AS UltimoNome, ef.Papel AS Papel
FROM Filmes f
JOIN Elencofilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id;
	
