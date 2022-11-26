CREATE DATABASE ultimate;

USE ultimate;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

create table preferencia (
idPref INT PRIMARY KEY auto_increment,
bodytype varchar(15),
accelerate varchar(15));

create table quiz (
idQuiz int primary key auto_increment,
lean int,
average int,
stocky int,
explosive int,
controlled int,
lengthy int);

select * from usuario;

delete from usuario where id between 1 and 10;