
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
SELECT pg_size_pretty(pg_database_size('DadosTomadaPhantonIoT'));
SELECT pg_size_pretty(pg_total_relation_size('dados'));


insert into usuario(USUARIO) values(1);
insert into dispositivos (USUARIO,id_disp,IP_disp,nome,estado) values (1,001,'http://192.168.90.119','Ar Condicionado UFSM-CP-F207',2);
update dispositivos set estado=2 where id_disp = 1;
delete from dados where corrente > 20.0
select *from dados order by id_dado
delete *from dispositivos
select *from dispositivos where usuario = 1 order by id_disp