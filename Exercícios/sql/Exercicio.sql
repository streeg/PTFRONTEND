-- Questão 1: Alterar o salário do empregado de código 3 para 28000. --

UPDATE empresa.empregado SET salario = 28000 WHERE codEmp = 3;


-- Questão 2: Obter nomes de empregados com salario > 30000. --

SELECT nome FROM empresa.empregado WHERE salario > 30000;

-- Questão 3: Obter nomes de empregados que trabalham no projeto 'Transmogrifador'. --

SELECT nome FROM empresa.empregado JOIN empresa.trabalhaEm ON empresa.empregado.codEmp = empresa.trabalhaEm.codEmp WHERE codProj = 1;

-- Questão 4:  Obter nomes e endereços de todos os empregados que trabalham no
-- departamento de 'Pesquisa'. Use INNER JOIN para esta consulta. --

SELECT empresa.empregado.nome,endereco FROM empresa.empregado INNER JOIN empresa.departamento ON empresa.empregado.codDepto = empresa.departamento.codDepto WHERE empresa.departamento.nome LIKE 'Pesquisa%';

-- Questão 5: Obter nomes de empregados que começam com a letra 'A'. Dica: use LIKE. --

SELECT nome FROM empresa.empregado WHERE nome LIKE 'A%';

-- Questão 6: Obter nome dos empregados em letra maiuscula --

SELECT upper(nome) FROM empresa.empregado;

-- Questão 7:  Obter nome dos empregados em letra maiuscula --

SELECT upper(nome) FROM empresa.empregado;

-- Questão 8: Alterar no nome dos empregados para letra maiuscula --

UPDATE empresa.empregado SET nome = upper(nome);

-- Questão 9: Obter o nome dos empregados com a letra inicial em maiusculo e as demais
--em minusculo --

SELECT initcap(nome) FROM empresa.empregado;

-- Questão 10: Obter o empregado mais velho --

SELECT nome FROM empresa.empregado WHERE dataNasc = (SELECT min(dataNasc) from empresa.empregado);

-- Questão 11: Obter o empregado mais novo  --


SELECT nome FROM empresa.empregado WHERE dataNasc = (SELECT max(dataNasc) from empresa.empregado);

-- Questão 12: Obter os nomes e datas de nascimento dos empregados que fazem aniversário
-- no mês de outubro. --

SELECT nome,dataNasc FROM empresa.empregado where (SELECT EXTRACT(MONTH FROM empresa.empregado.dataNasc)) = 10;

-- Questão 13: Obter os nomes dos empregados nascidos entre as datas 1950-01-01 e
--1970-01-01. Dica: use BETWEEN. --

SELECT nome FROM empresa.empregado where (dataNasc BETWEEN '1950-01-01' AND '1970-01-01');

-- Questão 14: Listar os títulos de projetos em ordem alfabética. Dica: use ORDER BY. --

SELECT titulo FROM empresa.projeto ORDER BY titulo;

-- Questão 15:Listar nomes e horas trabalhadas por empregados no projeto de código 3,
-- em ordem decrescente de horas trabalhadas. --

SELECT empresa.empregado.nome, empresa.trabalhaEm.horas FROM empresa.empregado JOIN empresa.trabalhaEm ON empresa.empregado.codEmp = empresa.trabalhaEm.codEmp WHERE codProj = 3 ORDER BY horas;

-- Questão 16: Obter códigos de empregados que trabalham mais de 10 horas em algum projeto.
-- O resultado da consulta não deve ter repetições de códigos de empregados.
-- Dica: use DISTINCT. --

SELECT DISTINCT empresa.empregado.codEmp FROM empresa.empregado JOIN empresa.trabalhaEm ON empresa.empregado.codEmp = empresa.trabalhaEm.codEmp WHERE horas > 10;

-- Questão 17: Obter a quantidade de empregados pertencentes ao departamento 4.
-- Dica: consulte funções agregadas do SQL. --

SELECT COUNT (empresa.empregado.nome) FROM empresa.empregado JOIN empresa.departamento ON empresa.empregado.codDepto = empresa.departamento.codDepto WHERE empresa.empregado.codDepto = 4;

