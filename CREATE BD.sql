create database aps_emissoes_co2;
use aps_emissoes_co2;

create table emissoes(
id_emissao int auto_increment primary key,
ano_emissao varchar(4),
mes_emissao varchar(50),
total_bruto_emissao float,
val_compensado float,
total_liquido_emissao float,
data_hora_cadastro datetime
);

create table consumo_eletrico(
id_consumo int auto_increment primary key,
id_emissao int not null,
ano_consumo varchar(4),
mes_consumo varchar(50),
consumo_kw float,
CONSTRAINT fk_id_emissao foreign key (id_emissao)  references emissoes (id_emissao)
);


create table consumo_combustivel(
id_consumo int auto_increment primary key,
id_emissao int not null,
ano_consumo varchar(4),
mes_consumo varchar(50),
consumo_litros float,
CONSTRAINT fk_id_emissao_comb foreign key (id_emissao)  references emissoes (id_emissao)
);

select * from emissoes;
select * from consumo_combustivel;
select * from consumo_eletrico;