-- Criação da tabela
CREATE TABLE Sensores (
    id INTEGER PRIMARY KEY,
    nome TEXT,
    leitura DECIMAL
);

-- Inserção de dados com nomes descritivos
INSERT INTO Sensores (nome, leitura) VALUES
('Temperatura Sala 1', 16.0),
('Temperatura Sala 2', 25.0),
('Pressão Tanque A', -9.0),
('Vibração Motor 3', 100.0),
('Fluxo de Água', 0.0),
('Nível Reservatório 1', 64.0),
('Corrente Painel Solar', -36.0),
('Umidade Solo Zona 1', 49.0),
('Ruído Ambiente', 81.0),
('Velocidade Esteira 2', 121.0),
('PH Tanque Químico', -4.0),
('Luminosidade Interna', 1.0),
('Concentração Gás CO2', 2.5),
('Tensão Gerador Diesel', 3.3),
('Temperatura Subsolo', -0.5),
('Vibração Eixo Principal', 10.0),
('Nível Caixa d’Água', 0.7),
('Velocidade Vento', 144.0),
('Corrente Alternador', -16.0),
('Temperatura Externa', 200.0);

-- Liste o nome do sensor e o valor da leitura elevado ao quadrado.
SELECT nome, ROUND(POWER(leitura, 2), 2) AS leitura_ao_quadrado
FROM Sensores;

-- Liste os sensores cuja raiz quadrada da leitura seja maior que 5.
SELECT nome, leitura, SQRT(leitura) AS raiz_quadrada
FROM Sensores
WHERE raiz_quadrada > 5;

-- Liste o nome do sensor e o valor absoluto da leitura.
SELECT nome, leitura, ABS(leitura)
FROM Sensores;

-- Para cada sensor, gere um número aleatório entre -100 e 100 e adicione à leitura original.
SELECT 
	nome,
    leitura, 
    (RANDOM() % 201) - 100 + leitura AS novo_valor
FROM Sensores;

-- Mostre o nome do sensor e o valor da leitura convertido para inteiro e depois para hexadecimal.
SELECT nome, CAST(leitura AS INTEGER) AS inteiro, HEX(leitura) AS hexadecimal
FROM Sensores;

-- Mostre os sensores onde POWER(leitura, 0.5) é igual a SQRT(leitura) (pense em tipos e precisão).
SELECT nome, leitura
FROM Sensores
WHERE POWER(leitura, 0.5) = SQRT(leitura);

-- Liste os sensores em ordem aleatória usando RANDOM().
SELECT nome, leitura
FROM Sensores
ORDER BY RANDOM();