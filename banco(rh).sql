CREATE DATABASE rh;
USE rh;

CREATE TABLE funcionarios(
id  INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nomecompleto VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL UNIQUE,
cargo VARCHAR(50) NOT NULL,
departamento VARCHAR(50) 
);

SELECT * FROM funcionarios;

SELECT email 
FROM funcionarios
WHERE email LIKE '%M';

SELECT nomecompleto
FROM funcionarios
WHERE cargo='Analista';

SELECT nomecompleto, cargo
FROM funcionarios
WHERE cargo='Analista';

SELECT nomecompleto
FROM funcionarios
WHERE cargo='Analista';

SELECT COUNT(*)
FROM funcionarios;

SELECT COUNT(departamento)
FROM funcionarios;

SELECT nomecompleto, email
FROM funcionarios
ORDER BY nomecompleto DESC, email;

SELECT nomecompleto
FROM funcionarios
ORDER BY nomecompleto;