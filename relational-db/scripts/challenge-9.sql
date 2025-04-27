-- 1 - Liste o número de matrícula e nome dos empregados e seus dependentes, exibindo a coluna 'dependentes' com nome do dependente e o parentesco entre parêntesis . Exemplo: Zezinho (filho)
SELECT
	e.num_matricula,
	e.nom_empregado,
	CONCAT(d.nom_dependente, ' (', TRIM(d.dsc_parentesco), ')') AS nom_dependente
FROM
	bd_empresa.dbo.empregado e 
INNER JOIN
	bd_empresa.dbo.dependente d 
ON
	e.num_matricula = d.num_matricula

-- 2 - Liste os departamentos, com seu respectivos gerentes e a data de início da gerência no formato dia-mês-ano
SELECT
	d.nom_depto,
	e.nom_empregado,
	CONVERT(VARCHAR(10), d.dat_inicio_gerente, 105) AS dat_inicio_gerente
FROM
	bd_empresa.dbo.empregado e 
INNER JOIN
	bd_empresa.dbo.departamento d 
ON
	e.num_matricula = d.num_matricula_gerente

/* 3 - Liste os empregados e horas de alocação em cada projeto no formato abaixo:
       Nome: Rodrigo Moreira Projeto: Migração para SQL 2005 - 10 horas
       Considere todos os funcionários, incluindo os que não tem projeto*/
SELECT
	CONCAT('Nome: ', TRIM(e.nom_empregado), ' Projeto: ', TRIM(p.nom_projeto), ' - ', a.num_horas, ' horas')
FROM
	bd_empresa.dbo.empregado e
LEFT JOIN
	bd_empresa.dbo.alocacao a
ON
	e.num_matricula = a.num_matricula
LEFT JOIN
	bd_empresa.dbo.projeto p
ON
	a.cod_projeto = p.cod_projeto