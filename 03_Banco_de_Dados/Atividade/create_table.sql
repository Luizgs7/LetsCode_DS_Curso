drop table if exists agencias cascade;
drop table if exists cliente_enderecos cascade;
drop table if exists clientes cascade;
drop table if exists clientes_conta cascade;
drop table if exists contas cascade;
drop table if exists enderecos cascade;
drop table if exists tipos_conta cascade;
drop table if exists tipos_transacao cascade;
drop table if exists transacoes cascade;

create table clientes (
  cliente_id int not null unique,
  nome varchar(100) not null,
  cpf char(11) not null unique,
  created_at timestamp not null default now(),     -- valor padrao para campo
  modified_at timestamp,
  deleted_at timestamp,
  primary key (cliente_id)
);


create table enderecos ( 
	endereco_id serial not null,   -- auto incremento 
	cep char(8) not null, 
	created_at timestamp not null default now(),     -- valor padrao para campo
	modified_at timestamp,
	deleted_at timestamp,
	primary key (endereco_id)
);


create table cliente_enderecos (
	cliente_id int not null,
	endereco_id int not null, 
	principal bool default false,
	created_at timestamp not null default now(),     -- valor padrao para campo
	modified_at timestamp,
	deleted_at timestamp,
	primary key (cliente_id, endereco_id),
	foreign key (cliente_id) references clientes(cliente_id),
	foreign key (endereco_id) references enderecos(endereco_id)
);


create table agencias ( 
  nro_agencia serial not null, 
  nome varchar(100) not null, 
  endereco_id int,
	created_at timestamp not null default now(),     -- valor padrao para campo
	modified_at timestamp,
	deleted_at timestamp,
	primary key ( nro_agencia ) ,
	foreign key ( endereco_id ) references enderecos (endereco_id)
);


create table tipos_conta (
  tipo_conta_id int not null,
  identificacao varchar not null,
  created_at timestamp not null default now(),     -- valor padrao para campo
  modified_at timestamp,
  deleted_at timestamp,
  primary key (tipo_conta_id) 
);


create table contas (
 nro_agencia int not null, 
 nro_conta int not null,
 tipo_conta_id int not null,
 created_at timestamp not null default now(),     -- valor padrao para campo
 modified_at timestamp,
 deleted_at timestamp,
 primary key (nro_agencia, nro_conta),
 foreign key ( nro_agencia ) references agencias (nro_agencia),
 foreign key ( tipo_conta_id ) references tipos_conta (tipo_conta_id)
);

create table clientes_conta (
  nro_agencia int not null,
  nro_conta int not null,
  cliente_id int not null,
  titular bool, 
  created_at timestamp not null default now(),     -- valor padrao para campo
  modified_at timestamp,
  deleted_at timestamp,
  primary key ( nro_agencia, nro_conta, cliente_id ),
  foreign key ( nro_conta, nro_agencia ) references contas (nro_conta, nro_agencia),
  foreign key ( cliente_id ) references clientes (cliente_id)
);

create table tipos_transacao ( 
  tipo_transacao_id int not null,
  identificacao varchar not null,
  created_at timestamp not null default now(),     -- valor padrao para campo
  modified_at timestamp,
  deleted_at timestamp,
  primary key  (tipo_transacao_id)  
);

create table transacoes ( 
  transacao_id serial not null,
  nro_agencia int not null,
  nro_conta int not null,
  tipo_transacao_id int not null,
  valor decimal(10,2) not null,
  "data" timestamp,
  created_at timestamp not null default now(),     -- valor padrao para campo
  modified_at timestamp,
  deleted_at timestamp,
  primary key  (transacao_id,nro_agencia,nro_conta),
  foreign key ( nro_conta, nro_agencia ) references contas (nro_conta, nro_agencia),
  foreign key ( tipo_transacao_id ) references tipos_transacao (tipo_transacao_id)
);
