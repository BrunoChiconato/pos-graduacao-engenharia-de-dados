-- 1 - Crie uma view com o nome vw_filmes para listar todos os filmes com descrição, gênero e quantidade de votos 
CREATE OR ALTER VIEW 
	dbo.vw_filmes 
AS
	SELECT
		f.dsc_filme,
		g.dsc_genero,
		f.qtd_votos
	FROM
		bd_filmes.dbo.filmes f
	INNER JOIN
		bd_filmes.dbo.filmes_genero fg
	ON
		f.id_filme = fg.id_filme
	INNER JOIN 
		bd_filmes.dbo.generos g
	ON
		fg.id_genero = g.id_genero
	WHERE
		f.dsc_filme IS NOT NULL
		AND g.dsc_genero IS NOT NULL
		AND f.qtd_votos IS NOT NULL

/* 2 - Utilize a view criada para listar:

a) 3 gêneros mais votados
b) 3 gêneros mais votados entre aqueles com menos de 600 mil votos*/

-- a)
SELECT TOP 3
	dsc_genero,
	SUM(qtd_votos) AS quantidade_total_votos
FROM
	bd_filmes.dbo.vw_filmes
GROUP BY
	dsc_genero
ORDER BY
	SUM(qtd_votos) DESC

-- b)
SELECT TOP 3
	dsc_genero,
	SUM(qtd_votos) AS quantidade_total_votos
FROM
	bd_filmes.dbo.vw_filmes
GROUP BY
	dsc_genero
HAVING
	SUM(qtd_votos) < 600000
ORDER BY
	SUM(qtd_votos) DESC