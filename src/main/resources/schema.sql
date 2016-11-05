drop table if exists usuario_grupo;
drop table if exists usuario_permissao;
drop table if exists grupo_permissao;
drop table if exists permissao;
drop table if exists grupo;
drop table if exists usuario;

create table if not exists usuario (
	id bigint not null auto_increment,
	nome varchar(100) not null,
	login varchar(50) not null,
	senha varchar(100) not null,
	ativo boolean default false,
	primary key (id),
	unique key un_usuario_login (login)
);

create table if not exists permissao (
	id bigint not null auto_increment,
	nome varchar(100) not null,
	primary key (id)
);

create table if not exists usuario_permissao (
	usuario_id bigint not null,
	permissao_id varchar(50) not null,
	primary key (usuario_id, permissao_id),
	constraint fk_usuariopermissao_usuario foreign key (usuario_id) references usuario(id),
	constraint fk_usuariopermissao_permissao foreign key (permissao_id) references permissao(id)
);

create table if not exists grupo (
	id bigint not null auto_increment,
	nome varchar(100) not null,
	primary key (id),
	unique key un_grupo_nome (nome)
);

create table if not exists usuario_grupo (
	usuario_id bigint not null,
	grupo_id bigint not null,
	primary key(usuario_id, grupo_id),
	constraint fk_usuariogrupo_usuario foreign key (usuario_id) references usuario(id),
	constraint fk_usuariogrupo_grupo foreign key (grupo_id) references grupo(id)
);

create table if not exists grupo_permissao (
	grupo_id bigint not null,
	permissao_id varchar(50) not null,
	primary key (grupo_id, permissao_id),
	constraint fk_grupopermissao_grupo foreign key (grupo_id) references grupo(id),
	constraint fk_grupopermissao_permissao foreign key (permissao_id) references permissao(id)
);