create table dispositivos(
	id_disp int not null, 	/* ID do dispositivo*/
	nome varchar(50),	/* nome referencia tomada*/
	estado int not null,	/* 1 ligado - 0 desligado*/
	primary key (id_disp)
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



select *from CURRENT_TIME(1)

insert into dispositivos (id_disp,nome,estado) values (001,'Tomada Teste IoT',1);

insert into dados (id_disp,voltagem,corrente,potencia)values(001,210,0.32,67.2);


select *from dispositivos where id_disp = 001

select *from dados

delete from dados

drop table dados