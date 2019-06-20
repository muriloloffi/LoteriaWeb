-- Base:
CREATE DATABASE loteria;
USE loteria;

/*Tabela na criação da aposta*/

CREATE TABLE apostas (
bet_id longint auto_increment,
player_id int not null,
coin numeric(4) not null,
bet_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
arr_bets varchar(100) NOT NULL,
primary key (bet_id)
FOREIGN KEY (player_id) REFERENCES users(internal_id)
);

/*Tabela que armazena os usuários cadastrados*/

CREATE TABLE users (
internal_id int AUTO_INCREMENT,
login NOT NULL Varchar(30),
pswd NOT NULL Varchar(40),
birthdate NOT NULL DATE,
docid NOT NULL numeric(11),
emailAddress NOT NULL varchar(100),
phone_number NOT NULL numeric(14),
Primary Key (INTERNAL_ID));

/*tabela que armazena concursos*/

CREATE TABLE concursos (
jackpot_id smallint AUTO_INCREMENT,
jackpot_result smallint NOT NULL,
jackpot_start TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
jackpot_finish TIMESTAMP,
primary key (jackpot_id),
FOREIGN KEY (jackpot_result) REFERENCES jackpot_numbers(jack_id)
)

/*tabela que armazena os resultados sorteados*/

CREATE TABLE jackpot_numbers (
jack_id smallint auto_increment,
arr_jackpot VARCHAR(40) NOT NULL,
Primary KEY (jack_id)
)



-- how to store an array
-- https://makitweb.com/how-to-store-array-in-mysql-with-php/
-- Regras da aposta lotomania
-- https://www.terra.com.br/noticias/loterias/lotomania/regras-do-jogo-da-lotomania,1ee94d8366972240978cdddb625784bcqfytswib.html
