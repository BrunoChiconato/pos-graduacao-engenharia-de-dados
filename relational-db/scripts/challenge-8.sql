-- 1 - Liste o número de matrícula e nome dos empregados e nome e parentesco dos seus dependentes. Considere também os funcionários que não tem dependentes.
SELECT
	e.num_matricula,
	e.nom_empregado,
	d.nom_dependente,
	d.dsc_parentesco
FROM
	bd_empresa.dbo.empregado e
LEFT JOIN
	bd_empresa.dbo.dependente d
ON
	e.num_matricula = d.num_matricula

-- 2 - Liste o número de matrícula e nome dos empregados que não tem dependentes cadastrados.
SELECT
	e.num_matricula,
	e.nom_empregado
FROM
	bd_empresa.dbo.empregado e
LEFT JOIN
	bd_empresa.dbo.dependente d
ON
	e.num_matricula = d.num_matricula
WHERE
	d.num_matricula IS NULL

-- 3 - Listar os nomes dos projetos, os locais de execução, o departamento, e os gerentes responsáveis. Considere também os departamentos sem projeto e sem gerente.
SELECT
	p.nom_projeto,
	p.nom_local,
	d.nom_depto,
	e.nom_empregado
FROM
	bd_empresa.dbo.departamento d
LEFT JOIN
	bd_empresa.dbo.empregado e
ON
	d.num_matricula_gerente = e.num_matricula
LEFT JOIN
	bd_empresa.dbo.projeto p
ON
	p.cod_depto = d.cod_depto