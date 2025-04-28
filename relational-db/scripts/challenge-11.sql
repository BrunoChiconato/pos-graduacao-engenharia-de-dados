-- 1 - Listar a quantidade de empregados com idade média por supervisor
SELECT
	e.nom_empregado AS nome_supervisor,
	COUNT(*) AS quantidade_empregados,
	AVG(DATEDIFF(YEAR, e2.dat_nascimento, GETDATE())) AS idade_media_empregados
FROM
	bd_empresa.dbo.empregado e
INNER JOIN
	bd_empresa.dbo.empregado e2
ON
	e.num_matricula = e2.num_matricula_supervisor
GROUP BY
	e.nom_empregado

-- 2 - Listar nome dos departamentos com nomes dos empregados e a quantidade de dependentes, se houver.
SELECT
	d.nom_depto,
	e.nom_empregado,
	COUNT(d2.nom_dependente) AS quantidade_dependentes
FROM
	bd_empresa.dbo.departamento d
INNER JOIN
	bd_empresa.dbo.empregado e
ON
	d.cod_depto = e.cod_depto
LEFT JOIN
	bd_empresa.dbo.dependente d2
ON
	e.num_matricula = d2.num_matricula
GROUP BY
	d.nom_depto,
	e.nom_empregado

-- 3 - Listar somente os locais e a quantidade de projetos onde houver mais de 2 projetos alocados
SELECT
	nom_local,
	COUNT(cod_projeto) AS quantidade_projetos
FROM
	bd_empresa.dbo.projeto
GROUP BY
	nom_local
HAVING
	COUNT(cod_projeto) > 2
	
	
	
	
	