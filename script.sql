-- Criação das Tabelas

CREATE TABLE clientes (
    id_cliente INTEGER PRIMARY KEY,
    nome TEXT,
    cpf TEXT,
    data_nascimento DATE,
    data_cadastro DATE
);

CREATE TABLE emprestimos (
    id_emprestimo INTEGER PRIMARY KEY,
    id_cliente INTEGER,
    valor_total REAL,
    juros REAL,
    parcelas INTEGER,
    status TEXT,
    data_inicio DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE parcelas (
    id_parcela INTEGER PRIMARY KEY,
    id_emprestimo INTEGER,
    numero_parcela INTEGER,
    valor_parcela REAL,
    vencimento DATE,
    data_pagamento DATE,
    status TEXT,
    FOREIGN KEY (id_emprestimo) REFERENCES emprestimos(id_emprestimo)
);

-- Consultas (SELECTs) Realizadas

-- 1. Índice de inadimplência
SELECT
    ROUND(
        (SELECT SUM(valor_total) FROM emprestimos WHERE status = 'inadimplente') * 100.0 /
        (SELECT SUM(valor_total) FROM emprestimos), 2
    ) AS indice_inadimplencia_percent;

-- 2. Clientes com parcelas em atraso
SELECT DISTINCT c.id_cliente, c.nome
FROM clientes c
JOIN emprestimos e ON e.id_cliente = c.id_cliente
JOIN parcelas p ON p.id_emprestimo = e.id_emprestimo
WHERE p.status = 'atrasada';

-- 3. Quantidade total de clientes inadimplentes
SELECT COUNT(DISTINCT c.id_cliente) AS total_clientes_inadimplentes
FROM clientes c
JOIN emprestimos e ON e.id_cliente = c.id_cliente
JOIN parcelas p ON p.id_emprestimo = e.id_emprestimo
WHERE p.status = 'atrasada';

-- 4. Média de dias de atraso
SELECT
    ROUND(AVG(
        JULIANDAY(data_pagamento) - JULIANDAY(vencimento)
    ), 1) AS media_dias_atraso
FROM parcelas
WHERE status = 'atrasada' AND data_pagamento IS NOT NULL;

-- 5. Segmentação de inadimplência por faixa etária
SELECT
    CASE
        WHEN idade < 25 THEN '18-24'
        WHEN idade BETWEEN 25 AND 34 THEN '25-34'
        WHEN idade BETWEEN 35 AND 44 THEN '35-44'
        WHEN idade BETWEEN 45 AND 54 THEN '45-54'
        ELSE '55+'
    END AS faixa_etaria,
    COUNT(DISTINCT c.id_cliente) AS qtd_inadimplentes
FROM (
    SELECT
        id_cliente,
        CAST((JULIANDAY('now') - JULIANDAY(data_nascimento)) / 365.25 AS INTEGER) AS idade
    FROM clientes
) AS c
JOIN emprestimos e ON e.id_cliente = c.id_cliente
WHERE e.status = 'inadimplente'
GROUP BY faixa_etaria;

-- 6. Histórico de pagamentos por cliente
SELECT
    c.nome,
    e.id_emprestimo,
    p.numero_parcela,
    p.valor_parcela,
    p.vencimento,
    p.data_pagamento,
    p.status
FROM clientes c
JOIN emprestimos e ON e.id_cliente = c.id_cliente
JOIN parcelas p ON p.id_emprestimo = e.id_emprestimo
ORDER BY c.nome, e.id_emprestimo, p.numero_parcela;
