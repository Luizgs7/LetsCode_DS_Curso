--#####
-- 1)
--#####
ALTER TABLE enderecos
ADD rua VARCHAR(100),
ADD numero INT,
ADD complemento VARCHAR(100),
ADD bairro VARCHAR(80),
ADD cidade VARCHAR(80),
ADD estado VARCHAR(80);

ALTER TABLE cliente_enderecos 
ADD rua VARCHAR(100),
ADD numero INT,
ADD complemento VARCHAR(100),
ADD bairro VARCHAR(80),
ADD cidade VARCHAR(80),
ADD estado VARCHAR(80);

--#####
-- 2)
--#####
UPDATE cliente_enderecos SET estado = 'SP' WHERE cliente_id between 100 and 125;
UPDATE cliente_enderecos SET estado = 'RJ' WHERE cliente_id between 126 and 150;
UPDATE cliente_enderecos SET estado = 'MG' WHERE cliente_id between 151 and 175;
UPDATE cliente_enderecos SET estado = 'ES' WHERE cliente_id between 176 and 199;

select 
	estado,
	COUNT(DISTINCT cpf) as qtd_clientes
FROM clientes c 
INNER JOIN cliente_enderecos ce 
ON c.cliente_id = ce.cliente_id
GROUP BY estado;

--#####
-- 3)
--#####
SELECT cc.cliente_id
INTO clientes_dependentes
FROM clientes_conta cc
INNER JOIN contas c
ON cc.nro_agencia = c.nro_agencia AND cc.nro_conta = c.nro_conta
WHERE c.tipo_conta_id = 2 -- conta empresa
AND cc.titular = false;

DELETE 
FROM clientes_conta 
WHERE cliente_id IN (SELECT cliente_id FROM clientes_dependentes);


--#####
-- 4)
--#####
ALTER TABLE clientes
ADD dt_nascimento date;

UPDATE clientes SET dt_nascimento = '1965-02-22' WHERE cliente_id = 100;
UPDATE clientes SET dt_nascimento = '1999-05-28' WHERE cliente_id = 101;
UPDATE clientes SET dt_nascimento = '2000-12-06' WHERE cliente_id = 102;
UPDATE clientes SET dt_nascimento = '1952-01-02' WHERE cliente_id = 103;
UPDATE clientes SET dt_nascimento = '2002-01-14' WHERE cliente_id = 104;
UPDATE clientes SET dt_nascimento = '1977-06-23' WHERE cliente_id = 105;
UPDATE clientes SET dt_nascimento = '1982-03-23' WHERE cliente_id = 106;
UPDATE clientes SET dt_nascimento = '1951-12-07' WHERE cliente_id = 107;
UPDATE clientes SET dt_nascimento = '1997-03-08' WHERE cliente_id = 108;
UPDATE clientes SET dt_nascimento = '1966-01-15' WHERE cliente_id = 109;
UPDATE clientes SET dt_nascimento = '1961-06-13' WHERE cliente_id = 110;
UPDATE clientes SET dt_nascimento = '1987-08-21' WHERE cliente_id = 111;
UPDATE clientes SET dt_nascimento = '1980-10-01' WHERE cliente_id = 112;
UPDATE clientes SET dt_nascimento = '1983-01-29' WHERE cliente_id = 113;
UPDATE clientes SET dt_nascimento = '1965-04-19' WHERE cliente_id = 114;
UPDATE clientes SET dt_nascimento = '1960-03-02' WHERE cliente_id = 115;
UPDATE clientes SET dt_nascimento = '1965-07-03' WHERE cliente_id = 116;
UPDATE clientes SET dt_nascimento = '1953-07-09' WHERE cliente_id = 117;
UPDATE clientes SET dt_nascimento = '1957-06-21' WHERE cliente_id = 118;
UPDATE clientes SET dt_nascimento = '1985-02-23' WHERE cliente_id = 119;
UPDATE clientes SET dt_nascimento = '2000-02-14' WHERE cliente_id = 120;
UPDATE clientes SET dt_nascimento = '1978-06-27' WHERE cliente_id = 121;
UPDATE clientes SET dt_nascimento = '1961-05-04' WHERE cliente_id = 122;
UPDATE clientes SET dt_nascimento = '2004-01-18' WHERE cliente_id = 123;
UPDATE clientes SET dt_nascimento = '1951-03-05' WHERE cliente_id = 124;
UPDATE clientes SET dt_nascimento = '1957-04-17' WHERE cliente_id = 125;
UPDATE clientes SET dt_nascimento = '1986-07-13' WHERE cliente_id = 126;
UPDATE clientes SET dt_nascimento = '1994-01-11' WHERE cliente_id = 127;
UPDATE clientes SET dt_nascimento = '1987-10-02' WHERE cliente_id = 128;
UPDATE clientes SET dt_nascimento = '1991-12-30' WHERE cliente_id = 129;
UPDATE clientes SET dt_nascimento = '1965-09-02' WHERE cliente_id = 130;
UPDATE clientes SET dt_nascimento = '1984-12-15' WHERE cliente_id = 131;
UPDATE clientes SET dt_nascimento = '1952-01-06' WHERE cliente_id = 132;
UPDATE clientes SET dt_nascimento = '2003-01-23' WHERE cliente_id = 133;
UPDATE clientes SET dt_nascimento = '1997-07-03' WHERE cliente_id = 134;
UPDATE clientes SET dt_nascimento = '1990-11-23' WHERE cliente_id = 135;
UPDATE clientes SET dt_nascimento = '1955-01-16' WHERE cliente_id = 136;
UPDATE clientes SET dt_nascimento = '1999-08-20' WHERE cliente_id = 137;
UPDATE clientes SET dt_nascimento = '1990-08-05' WHERE cliente_id = 138;
UPDATE clientes SET dt_nascimento = '1999-01-04' WHERE cliente_id = 139;
UPDATE clientes SET dt_nascimento = '1955-06-06' WHERE cliente_id = 140;
UPDATE clientes SET dt_nascimento = '1951-11-01' WHERE cliente_id = 141;
UPDATE clientes SET dt_nascimento = '1984-07-11' WHERE cliente_id = 142;
UPDATE clientes SET dt_nascimento = '1995-09-08' WHERE cliente_id = 143;
UPDATE clientes SET dt_nascimento = '1967-06-19' WHERE cliente_id = 144;
UPDATE clientes SET dt_nascimento = '1971-11-24' WHERE cliente_id = 145;
UPDATE clientes SET dt_nascimento = '1969-05-01' WHERE cliente_id = 146;
UPDATE clientes SET dt_nascimento = '2004-06-26' WHERE cliente_id = 147;
UPDATE clientes SET dt_nascimento = '1973-07-20' WHERE cliente_id = 148;
UPDATE clientes SET dt_nascimento = '2004-11-02' WHERE cliente_id = 149;
UPDATE clientes SET dt_nascimento = '2004-04-17' WHERE cliente_id = 150;
UPDATE clientes SET dt_nascimento = '2005-05-03' WHERE cliente_id = 151;
UPDATE clientes SET dt_nascimento = '1997-09-12' WHERE cliente_id = 152;
UPDATE clientes SET dt_nascimento = '2004-08-04' WHERE cliente_id = 153;
UPDATE clientes SET dt_nascimento = '1952-06-30' WHERE cliente_id = 154;
UPDATE clientes SET dt_nascimento = '1966-05-08' WHERE cliente_id = 155;
UPDATE clientes SET dt_nascimento = '1952-02-04' WHERE cliente_id = 156;
UPDATE clientes SET dt_nascimento = '1974-01-19' WHERE cliente_id = 157;
UPDATE clientes SET dt_nascimento = '2004-12-19' WHERE cliente_id = 158;
UPDATE clientes SET dt_nascimento = '1970-04-07' WHERE cliente_id = 159;
UPDATE clientes SET dt_nascimento = '1951-10-24' WHERE cliente_id = 160;
UPDATE clientes SET dt_nascimento = '2003-08-19' WHERE cliente_id = 161;
UPDATE clientes SET dt_nascimento = '1950-02-02' WHERE cliente_id = 162;
UPDATE clientes SET dt_nascimento = '1972-10-07' WHERE cliente_id = 163;
UPDATE clientes SET dt_nascimento = '1957-05-08' WHERE cliente_id = 164;
UPDATE clientes SET dt_nascimento = '1976-04-15' WHERE cliente_id = 165;
UPDATE clientes SET dt_nascimento = '1978-12-01' WHERE cliente_id = 166;
UPDATE clientes SET dt_nascimento = '1950-01-20' WHERE cliente_id = 167;
UPDATE clientes SET dt_nascimento = '1955-09-12' WHERE cliente_id = 168;
UPDATE clientes SET dt_nascimento = '1974-02-16' WHERE cliente_id = 169;
UPDATE clientes SET dt_nascimento = '1989-10-08' WHERE cliente_id = 170;
UPDATE clientes SET dt_nascimento = '1978-12-18' WHERE cliente_id = 171;
UPDATE clientes SET dt_nascimento = '1998-02-02' WHERE cliente_id = 172;
UPDATE clientes SET dt_nascimento = '1968-03-25' WHERE cliente_id = 173;
UPDATE clientes SET dt_nascimento = '1950-12-04' WHERE cliente_id = 174;
UPDATE clientes SET dt_nascimento = '2001-11-04' WHERE cliente_id = 175;
UPDATE clientes SET dt_nascimento = '1995-08-06' WHERE cliente_id = 176;
UPDATE clientes SET dt_nascimento = '1960-11-08' WHERE cliente_id = 177;
UPDATE clientes SET dt_nascimento = '1959-07-13' WHERE cliente_id = 178;
UPDATE clientes SET dt_nascimento = '1999-01-06' WHERE cliente_id = 179;
UPDATE clientes SET dt_nascimento = '1988-03-07' WHERE cliente_id = 180;
UPDATE clientes SET dt_nascimento = '1994-04-08' WHERE cliente_id = 181;
UPDATE clientes SET dt_nascimento = '1970-01-11' WHERE cliente_id = 182;
UPDATE clientes SET dt_nascimento = '1993-04-07' WHERE cliente_id = 183;
UPDATE clientes SET dt_nascimento = '1961-08-25' WHERE cliente_id = 184;
UPDATE clientes SET dt_nascimento = '1998-03-06' WHERE cliente_id = 185;
UPDATE clientes SET dt_nascimento = '1980-09-17' WHERE cliente_id = 186;
UPDATE clientes SET dt_nascimento = '1982-06-06' WHERE cliente_id = 187;
UPDATE clientes SET dt_nascimento = '1971-06-10' WHERE cliente_id = 188;
UPDATE clientes SET dt_nascimento = '1976-08-03' WHERE cliente_id = 189;
UPDATE clientes SET dt_nascimento = '1969-06-17' WHERE cliente_id = 190;
UPDATE clientes SET dt_nascimento = '1952-02-04' WHERE cliente_id = 191;
UPDATE clientes SET dt_nascimento = '2004-09-08' WHERE cliente_id = 192;
UPDATE clientes SET dt_nascimento = '1974-01-18' WHERE cliente_id = 193;
UPDATE clientes SET dt_nascimento = '1994-08-24' WHERE cliente_id = 194;
UPDATE clientes SET dt_nascimento = '1969-06-22' WHERE cliente_id = 195;
UPDATE clientes SET dt_nascimento = '1991-04-10' WHERE cliente_id = 196;
UPDATE clientes SET dt_nascimento = '1984-10-03' WHERE cliente_id = 197;
UPDATE clientes SET dt_nascimento = '1957-02-27' WHERE cliente_id = 198;
UPDATE clientes SET dt_nascimento = '1974-10-15' WHERE cliente_id = 199;

CREATE VIEW aniversariantes_mes_atual as (
SELECT 
	cliente_id
FROM clientes
WHERE DATE_PART('month', dt_nascimento) = DATE_PART('month', now())
);


--#####
-- 5)
--#####
SELECT SUM(valor) FROM transacoes;


--#####
-- 6)
--#####
SELECT
	c.tipo_conta_id ,
	AVG(ABS(valor)) AS volume_transacionado
FROM transacoes t 
	INNER JOIN contas c 
	ON t.nro_agencia = c.nro_agencia 
	AND t.nro_conta = c.nro_conta 
WHERE DATE_PART('month', data) BETWEEN  DATE_PART('month', now())-2 and DATE_PART('month', now())-1 -- filtra 2 últimos meses
GROUP BY c.tipo_conta_id 

--#####
-- 7)
--#####
SELECT 
	nro_agencia,
	nro_conta,
	SUM(valor) AS saldo_conta
FROM transacoes
GROUP BY nro_agencia , nro_conta
HAVING SUM(valor) < 0 ;


--#####
-- 8)
--#####
-- TOP 10 clientes que se tornarão premium
SELECT 
	nro_agencia,
	nro_conta,
	SUM(valor) AS saldo
FROM transacoes t 
GROUP BY nro_agencia , nro_conta
ORDER BY saldo DESC
LIMIT 10;


UPDATE contas
SET modified_at = current_date, tipo_conta_id = 3
WHERE cast(nro_agencia as varchar(255)) || cast(nro_conta as varchar(255))  IN (
	SELECT 
		cast(nro_agencia as varchar(255)) || cast(nro_conta as varchar(255))  
	FROM (
		SELECT 
			nro_agencia , nro_conta , SUM(valor) as saldo
		FROM transacoes t 
		GROUP BY nro_agencia , nro_conta
		ORDER BY saldo desc
		LIMIT 10
	) AS upg
)


--#####
-- 9)
--#####
CREATE TABLE gerentes(
	gerente_id INT NOT NULL,
	nome VARCHAR(100),
	created_at TIMESTAMP NOT NULL DEFAULT now(),
	modified_at TIMESTAMP,
	deleted_at TIMESTAMP,
	PRIMARY KEY (gerente_id)
);

CREATE TABLE gerente_conta (
	gerente_id INT NOT NULL,
	nro_conta INT NOT NULL,
	nro_agencia INT NOT NULL,
	PRIMARY KEY (gerente_id, nro_conta, nro_agencia),
	FOREIGN KEY (gerente_id) REFERENCES gerentes (gerente_id),
	FOREIGN KEY ( nro_conta, nro_agencia) REFERENCES contas ( nro_conta, nro_agencia)
);

--#####
-- 10)
--#####

-- A query abaixo nos mostra que 98% dos clientes fica no máxima um dia sem transacionar. Com isso, vamos considerar que o relatório irá alertar sobre clientes a 2 ou mais dias sem transação 
WITH dias_entre_ultimas_transacaos as (
	SELECT 
		t.nro_agencia ,
		t.nro_conta ,
		t.data,
		LAG(t.data,1) OVER (PARTITION BY t.nro_agencia , t.nro_conta  ORDER BY t.data) as transacao_anterior,
		DATE_PART('day', data - LAG(t.data,1) OVER (PARTITION BY t.nro_agencia , t.nro_conta  ORDER BY t.data)) as date_diff
	from transacoes t
)
SELECT
date_diff, COUNT(0) 
FROM dias_entre_ultimas_transacaos
GROUP BY date_diff;

-- Além disso, definimos como regra de negócio que no relatório devem constar clientes cujo saldo das duas últimas transações seja negativa.
CREATE VIEW clientes_tendencia_churn as (
WITH dias_entre_ultimas_transacaos as (
	SELECT 
		t.nro_agencia ,
		t.nro_conta ,
		t.data,
		LAG(t.data,1) OVER (PARTITION BY t.nro_agencia , t.nro_conta  ORDER BY t.data) as dt_transacao_anterior,
		DATE_PART('day', data - LAG(t.data,1) OVER (partition by t.nro_agencia , t.nro_conta  ORDER BY t.data)) as date_diff,
		t.valor,
		LAG(t.valor,1) OVER (PARTITION BY t.nro_agencia , t.nro_conta  ORDER BY t.data) as valor_transacao_anterior,
		t.valor + LAG(t.valor,1) OVER (PARTITION BY t.nro_agencia , t.nro_conta  ORDER BY t.data) as valor_diff,
		ROW_NUMBER() OVER(PARTITION BY t.nro_agencia , t.nro_conta ORDER BY t.data DESC) as ordem_transacao
	from transacoes t
)
SELECT *
FROM dias_entre_ultimas_transacaos as t
WHERE ordem_transacao = 1
AND (date_diff >= 2 OR valor_diff < 0) -- 2 dias ou mais sem transação OU saldo das duas últimas transações negativa.
);
