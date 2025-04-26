--1 - Liste o número de matrícula e nome dos empregados e nome e parentesco de todos os dependentes
SELECT
	e.num_matricula,
	e.nom_empregado,
	d.nom_dependente,
	d.dsc_parentesco
FROM
	bd_empresa.dbo.empregado e
INNER JOIN
	bd_empresa.dbo.dependente d 
ON
	e.num_matricula = d.num_matricula

--2 - Liste nome dos departamentos com número de matrícula e nome de todos os funcionário. Ordene o resultado por departamento e nome do empregado.
SELECT
	d.nom_depto,
	e.num_matricula,
	e.nom_empregado
FROM
	bd_empresa.dbo.departamento d
INNER JOIN
	bd_empresa.dbo.empregado e
ON
	d.cod_depto = e.cod_depto
ORDER BY
	d.nom_depto,
	e.nom_empregado

--3 - Para cada departamento um dos funcionários tem a função de gerência. Liste nome dos departamentos com número de matrícula e nome do gerente responsável.
SELECT
	d.nom_depto,
	e.num_matricula,
	e.nom_empregado
FROM
	bd_empresa.dbo.departamento d
INNER JOIN
	bd_empresa.dbo.empregado e
ON
	d.num_matricula_gerente = e.num_matricula

--4 - Liste o número de matrícula e nome dos supervisores e número de matrícula e nome dos funcionários sob sua supervisão. Ordene os supervisores e empregados em ordem alfabética
SELECT
	e.num_matricula AS matricula_supervisor,
	e.nom_empregado AS supervisor,
	e2.num_matricula AS matricula_funcionario,
	e2.nom_empregado AS funcionario
FROM
	bd_empresa.dbo.empregado e
INNER JOIN
	bd_empresa.dbo.empregado e2
ON
	e.num_matricula = e2.num_matricula_supervisor
ORDER BY
	e.nom_empregado,
	e2.nom_empregado
	
--5 - Liste os funcionários dos projetos de BH com o total de horas alocado.  Exibir nome e local do projeto, número de matrícula e nome do empregado e o total de horas alocado.
SELECT
	p.nom_projeto,
	p.nom_local,
	e.num_matricula,
	e.nom_empregado,
	a.num_horas
FROM
	bd_empresa.dbo.alocacao a
INNER JOIN
	bd_empresa.dbo.projeto p
ON
	a.cod_projeto = p.cod_projeto
INNER JOIN
	bd_empresa.dbo.empregado e 
ON
	a.num_matricula = e.num_matricula
WHERE
	p.nom_local = 'BH'
