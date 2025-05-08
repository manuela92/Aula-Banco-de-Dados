CREATE DATABASE universidade;
USE universidade;

CREATE TABLE cursos (
	id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(250)
);

CREATE TABLE alunos (
	id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(250),
    curso INT,
    salario DOUBLE,
    idade INT,
    FOREIGN KEY (curso) REFERENCES cursos (id_curso)
    );
    
    INSERT INTO cursos (nome) VALUES ('Matemática'), ('Física'), ('Química');
    INSERT INTO alunos (nome, curso, salario, idade) VALUES
    ('João Silva', 1, 1500.00, 20),
    ('Maria oliveira', 2, 1800.00, 22),
    ('Pedro Santos', 1, 1600.00, 21),
    ('Ana Costa', 3, 1700.00, 19);
    
    SELECT
		alunos.id_aluno AS alunoID,
        alunos.nome AS alunoNome,
        cursos.nome AS cursoNome,
        alunos.salario,
        alunos.idade
	FROM
		alunos
	JOIN
		cursos ON alunos.curso = cursos.id_curso;