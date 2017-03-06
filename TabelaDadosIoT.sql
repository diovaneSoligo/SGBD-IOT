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
	hota time,
	data_hora timestamp(0),
	foreign key (id_disp) references dispositivos (id_disp)
);

