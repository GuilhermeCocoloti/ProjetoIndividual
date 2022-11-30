CREATE DATABASE ultimate;

USE ultimate;


CREATE TABLE usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

create table preferencia (
idPref INT PRIMARY KEY auto_increment,
bodytype varchar(15),
constraint chkbodytype check (bodytype in ('Lean','Average','Stocky')),
accelerate varchar(15),
constraint chkaccelerate check (accelerate in ('Explosive','Controlled','Lengthy')),
fkUsuario int,
foreign key (fkUsuario) references usuario (idUsuario));


create table questionario (
idQuest int primary key auto_increment,
lean int,
average int,
stocky int,
explosive int,
controlled int,
lengthy int);




select * from usuario;
select * from preferencia;

desc Preferencia;


select * from usuario 
join preferencia where 
fkUsuario = idUsuario;


delete from usuario where id between 1 and 10;

drop table usuario;
drop table preferencia;
drop table questionario


