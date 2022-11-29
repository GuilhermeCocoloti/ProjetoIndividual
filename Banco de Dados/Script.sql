CREATE DATABASE ultimate;

USE ultimate;


CREATE TABLE usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
    fkPref int,
    foreign key (fkPref) references preferencia (idPref)
);

create table preferencia (
idPref INT PRIMARY KEY auto_increment,
bodytype varchar(15),
constraint chkbodytype check (bodytype in ('Lean','Average','Stocky')),
accelerate varchar(15),
constraint chkaccelerate check (accelerate in ('Explosive','Controlled','Lengthy')));

create table quiz (
idQuiz int primary key auto_increment,
lean int,
average int,
stocky int,
explosive int,
controlled int,
lengthy int);

insert into usuario values 
(null, 'Guilherme', 'guiiii@gmail.com', '1234', 1);

insert into preferencia values 
(null, 'lean', 'explosive');

select * from usuario;
select * from preferencia;

select * from usuario 
join preferencia where 
fkpref = idPref;


delete from usuario where id between 1 and 10;

drop table usuario;
drop table preferencia;
