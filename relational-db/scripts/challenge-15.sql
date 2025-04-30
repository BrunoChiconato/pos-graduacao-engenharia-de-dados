-- 1 - Atualize nome do funcionário "Novo empregado" para  "Gustavo Teixeira" e associe ao departamento "RH"
UPDATE
	bd_empresa.dbo.empregado
SET
	nom_empregado = 'Gustavo Teixeira',
	cod_depto = 4
WHERE
	num_matricula = 9

-- 2 - Faça a alocação do funcionário "Gustavo Teixeira" ao projeto "Montar plano de capacitação" com 10 horas semanais
INSERT INTO
	bd_empresa.dbo.alocacao (num_matricula, cod_projeto, num_horas)
VALUES
	(9, 9, 10)

-- 3 - Excluir do banco os projetos que não tiveram nenhum funcionário alocado
DELETE FROM
	bd_empresa.dbo.projeto
WHERE
	cod_projeto IN (SELECT cod_projeto FROM bd_empresa.dbo.projeto WHERE cod_projeto NOT IN (SELECT cod_projeto FROM bd_empresa.dbo.alocacao))