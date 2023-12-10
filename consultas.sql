-- Viagens que possuem todos os treinamentos
SELECT V.Id, V.Nome
FROM Viagem V
WHERE NOT EXISTS (
    (SELECT T.Num_Serie FROM Treinamento T)
    MINUS
    (SELECT TV.Treinamento FROM Treinamento_Viagem TV WHERE TV.Viagem = V.Id)
);


-- Detalhes de Todas as Pesquisas Ecológicas e Suas Observações
SELECT PS.Nome AS Pesquisa, E.Nome AS Ecologia, O.Observacao
FROM Pesquisa PS
JOIN Ecologia E ON PS.Id = E.Pesquisa
LEFT JOIN Observacoes O ON PS.Id = O.Pesquisa
WHERE PS.Tipo = 'Ecológica';

-- Trajes Utilizados em Explorações com Temperaturas Extremas
SELECT T.Num_Serie, T.Cor, T.Material
FROM Traje T
WHERE EXISTS (
    SELECT 1 
    FROM Exploracao E
    JOIN Pesquisa PS ON E.Pesquisa = PS.Id
    JOIN Viagem V ON PS.Viagem = V.Id
    JOIN Foguete F ON V.Foguete = F.Num_Serie
    JOIN Planeta P ON F.Planeta = P.Nome
    WHERE (P.Temperatura < 200 OR P.Temperatura > 300) AND T.Planeta = P.Nome
);

-- Média de Distância dos Planetas por Sistema Planetário
SELECT Sistema_Planetario, AVG(Distancia) AS Media_Distancia
FROM Planeta
GROUP BY Sistema_Planetario;

-- Pessoas e os Equipamentos Usados em Explorações em Marte
SELECT DISTINCT P.Nome, I.Nome AS Equipamento
FROM Pessoa P
JOIN Pessoa_Exploracao PE ON P.CPF = PE.Pessoa
JOIN Exploracao E ON PE.Pesquisa = E.Pesquisa
JOIN Pesquisa PS ON E.Pesquisa = PS.Id
JOIN Viagem V ON PS.Viagem = V.Id
JOIN Foguete F ON V.Foguete = F.Num_Serie
JOIN Item_Exploracao IE ON E.Pesquisa = IE.Pesquisa
JOIN Item I ON IE.Item = I.Num_Serie
WHERE F.Planeta = 'Marte';

