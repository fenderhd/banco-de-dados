CREATE DATABASE db_faculdade;

USE db_faculdade;

CREATE TABLE professores(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL,
valor_hora INTEGER UNSIGNED NULL
);

CREATE TABLE cursos( 
id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
nome VARCHAR(50) NOT NULL, 
requisito VARCHAR(255) NULL, 
carga_horaria SMALLINT UNSIGNED NULL, 
preco DOUBLE UNSIGNED NULL
);

CREATE TABLE alunos( 
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
cpf CHAR(11) NOT NULL, 
nome VARCHAR(50) NOT NULL, 
email VARCHAR(50) NOT NULL, 
fone CHAR(14) NOT NULL, 
data_nascimento DATE NULL
);

CREATE TABLE turmas( 
id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
professores_id INT NOT NULL, 
cursos_id INTEGER UNSIGNED NOT NULL, 
data_inicio DATE NULL, 
data_final DATE NULL, 
carga_horaria SMALLINT UNSIGNED NULL,
periodo_aluno INT NOT NULL,
INDEX turmas_FKIndex1(cursos_id), 
INDEX turmas_FKIndex2(professores_id), 
FOREIGN KEY(cursos_id) REFERENCES cursos(id), 
FOREIGN KEY(professores_id) REFERENCES professores(id) 
);

CREATE TABLE matriculas( 
id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT, 
turmas_id INTEGER UNSIGNED NOT NULL, 
alunos_id INT NOT NULL, 
data_matricula DATE NULL, 
PRIMARY KEY(id), INDEX matriculas_FKIndex1(alunos_id), 
INDEX matriculas_FKIndex3(turmas_id), 
FOREIGN KEY(alunos_id) REFERENCES alunos(id), 
FOREIGN KEY(turmas_id) REFERENCES turmas(id) 
);