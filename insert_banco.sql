/* 1 - Alunos Matriculados neste periodo*/
SELECT COUNT(1) FROM turmas WHERE periodo_inicial AND periodo_final = 2020; 

/* 2 - Alunos matriculados neste periodo do curso de Sistemas de Informação*/
SELECT nome FROM alunos INNER JOIN matriculas WHERE turmas.cursos_id = 6 AND turmas.periodo = 8 and turmas.ano = 2020;

/* 3 - Professor com o maior salario*/
SELECT professores.nome FROM cursos ORDER BY valor_horas DESC;

/* 4 - Professor que ministra mais aulas*/
SELECT professores.nome, COUNT(cursos.id_curso) FROM professores GROUP BY professores.nome ORDER BY count(professores.id_curso) DESC;

/* 5 - Aluno com maior média do curso de Sistemas de Informação */
SELECT alunos AVG (nota) FROM alunos INNER JOIN matriculas GROUP BY alunos.nome ORDER BY AVG(alunos.nota) DESC LIMIT 1;