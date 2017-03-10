create table usuario(
	USUARIO int not null,
	primary key (USUARIO)
);

create table dispositivos(
	USUARIO int not null,
	id_disp int not null, 	/* ID do dispositivo*/
	IP_disp varchar(50),
	nome varchar(50),	/* nome referencia tomada*/
	estado int not null,	/* 1 ligado - 0 desligado*/
	primary key (id_disp),
	foreign key (USUARIO) references usuario (USUARIO)
);

create table dados(
	id_disp int not null,
	id_dado serial,
	voltagem int not null,
	corrente float not null,
	potencia float not null,
	data date,
	hora time,
	data_hora timestamp(0),
	foreign key (id_disp) references dispositivos (id_disp)
);


select *from usuario

select *from dispositivos where usuario = 1 order by id_disp

DELETE FROM dispositivos where id_disp = 5

update dispositivos set ip_disp='192.168.90.119' where id_disp = 1

update dispositivos set estado=1 where id_disp = 1;

select *from CURRENT_TIME(1)
insert into usuario(USUARIO) values(1);
insert into usuario(USUARIO) values(2);
insert into usuario(USUARIO) values(3);

insert into dispositivos (USUARIO,id_disp,IP_disp,nome,estado) values (1,001,'http://192.168.90.119','Tomada Teste IoT',1);
insert into dispositivos (USUARIO,id_disp,IP_disp,nome,estado) values (1,004,'http://','Tomada 2 Teste IoT',1);
insert into dispositivos (USUARIO,id_disp,IP_disp,nome,estado) values (1,005,'http://','Tomada 3 Teste IoT',1);

insert into dispositivos (USUARIO,id_disp,IP_disp,nome,estado) values (2,002,'http://','Tomada Teste IoT 2',1);
insert into dispositivos (USUARIO,id_disp,IP_disp,nome,estado) values (3,003,'http://','Tomada Teste IoT 3',1);

insert into dados (id_disp,voltagem,corrente,potencia)values(001,210,0.32,67.2);


select *from dispositivos where id_disp = 001

select *from dados 

select *from dispositivos


drop table dados
drop table dispositivos
drop table usuario