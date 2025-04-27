-- 1 - Gerar a lista de aniversariantes da empresa com mês, dia e nome do empregado ordem cronológica
SELECT
	nom_empregado,
	MONTH(dat_nascimento) AS mes_aniversario,
	DAY(dat_nascimento) AS dia_aniversario
FROM
	bd_empresa.dbo.empregado
ORDER BY
	MONTH(dat_nascimento),
	DAY(dat_nascimento)

-- 2 - Listar os departamentos e seus gerentes com tempo de gerência em anos ordenando pelo mais antigo
SELECT
	d.nom_depto,
	e.nom_empregado,
	DATEDIFF(YEAR, d.dat_inicio_gerente, GETDATE()) AS tempo_gerencia
FROM
	bd_empresa.dbo.empregado e
INNER JOIN
	bd_empresa.dbo.departamento d 
ON
	e.num_matricula = d.num_matricula_gerente
ORDER BY
	DATEDIFF(YEAR, d.dat_inicio_gerente, GETDATE()) DESC

-- 3 - Listar os funcionários que terão mais que 65 a partir de 2021
SELECT
	nom_empregado
FROM
	bd_empresa.dbo.empregado
WHERE
	DATEDIFF(YEAR, dat_nascimento, '2021') > 65	