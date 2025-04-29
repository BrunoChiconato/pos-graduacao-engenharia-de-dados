-- 1 - Listar os filmes que são do gênero Guerra ou do Gênero Ação
SELECT
	f.dsc_filme
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
	g.dsc_genero = 'Guerra'

UNION ALL

SELECT
	f.dsc_filme
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
	g.dsc_genero = 'Ação'

-- 2 - Listar os filmes que são do gênero Guerra e também do Gênero Ação
SELECT
	f.dsc_filme
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
	g.dsc_genero = 'Guerra'

INTERSECT

SELECT
	f.dsc_filme
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
	g.dsc_genero = 'Ação'

-- 3 - Listar os filmes que são do gênero Guerra e não são do Gênero Ação
SELECT
	f.dsc_filme
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
	g.dsc_genero = 'Guerra'

EXCEPT

SELECT
	f.dsc_filme
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
	g.dsc_genero = 'Ação'