-- 1) Listar o id_filme, dsc_filme, qtd_votos e num_nota_media do filme Matrix 
SELECT
	id_filme,
	dsc_filme,
	qtd_votos,
	num_nota_media
FROM
	filmes
WHERE
	dsc_filme = 'Matrix'

-- 2) Listar o id_filme, dsc_filme, qtd_votos e num_nota_media dos filmes com nota media maior que 80 e quantidade de votos menor que 1000
SELECT
	id_filme,
	dsc_filme,
	qtd_votos,
	num_nota_media
FROM
	filmes
WHERE
	num_nota_media > 80
	AND qtd_votos < 1000

-- 3) Listar todos os dados das tabelas empregado, departamento e projeto
SELECT
	*
FROM
	empregado

SELECT
	*
FROM
	departamento

SELECT
	*
FROM
	projeto

-- 4) Listar os projetos que acontecem em BH
SELECT
	*
FROM
	projeto
WHERE
	nom_local = 'BH'

-- 5) Listar todos os empregados do sexo masculino que moram em MG
SELECT
	*
FROM
	empregado
WHERE
	sex_empregado = 'M'
	AND sig_uf = 'MG'
