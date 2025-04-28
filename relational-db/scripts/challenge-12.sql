/*1 - Listar o nome do empregado e o nome do respectivo departamento para todos os empregados que não estão alocados em projetos, resolver com:

a) NOT EXISTS

b) NOT IN

c) LEFT JOIN*/

-- a)
SELECT
	e.nom_empregado,
	d.nom_depto
FROM
	bd_empresa.dbo.empregado e
INNER JOIN
	bd_empresa.dbo.departamento d 
ON
	e.cod_depto = d.cod_depto
WHERE NOT EXISTS (
	SELECT
		1
	FROM
		bd_empresa.dbo.alocacao a
	WHERE
		e.num_matricula = a.num_matricula
)

-- b)
SELECT
	e.nom_empregado,
	d.nom_depto
FROM
	bd_empresa.dbo.empregado e
INNER JOIN
	bd_empresa.dbo.departamento d 
ON
	e.cod_depto = d.cod_depto
WHERE e.num_matricula NOT IN (
	SELECT
		a.num_matricula
	FROM
		bd_empresa.dbo.alocacao a
	WHERE
		e.num_matricula = a.num_matricula
)

-- c)
SELECT
	e.nom_empregado,
	d.nom_depto 
FROM
	bd_empresa.dbo.empregado e
INNER JOIN
	bd_empresa.dbo.departamento d 
ON
	e.cod_depto = d.cod_depto
LEFT JOIN
	bd_empresa.dbo.alocacao a
ON
	e.num_matricula = a.num_matricula
WHERE
	a.num_matricula IS NULL

-- 2 - Listar o empregado, o número de horas e o projeto cuja alocação de horas no projeto é maior do que a média de alocação do referido projeto
SELECT
	e.nom_empregado,
	a.num_horas,
	sub.nom_projeto,
	sub.media_horas
FROM
	bd_empresa.dbo.empregado e
INNER JOIN
	bd_empresa.dbo.alocacao a
ON
	e.num_matricula = a.num_matricula
INNER JOIN
	bd_empresa.dbo.projeto p 
ON
	p.cod_projeto = a.cod_projeto
INNER JOIN (
	SELECT
		p.nom_projeto,
		AVG(a.num_horas) AS media_horas
	FROM
		bd_empresa.dbo.alocacao a 
	INNER JOIN
		bd_empresa.dbo.projeto p
	ON
		p.cod_projeto = a.cod_projeto
	GROUP BY
		p.nom_projeto
) sub
ON
	sub.nom_projeto = p.nom_projeto
WHERE
	a.num_horas > sub.media_horas