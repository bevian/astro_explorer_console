
-- Inserção de dados na tabela Planeta
INSERT INTO Planeta VALUES ('Terra', 365, 0, 288, 'Sistema Solar', 12742, 'Azul');
INSERT INTO Planeta VALUES ('Marte', 687, 0.08, 210, 'Sistema Solar', 6779, 'Vermelho');
INSERT INTO Planeta VALUES ('Kepler-186f', 130, 490, 180, 'Kepler-186', 11175, 'Verde');
INSERT INTO Planeta VALUES ('GJ 1214b', 1.58, 42, 500, 'Sistema GJ 1214', 25000, 'Azul Escuro');
INSERT INTO Planeta VALUES ('Proxima Centauri b', 11.2, 4.24, 234, 'Sistema Proxima Centauri', 11950, 'Marrom');
INSERT INTO Planeta VALUES ('TRAPPIST-1d', 4, 39.5, 288, 'Sistema TRAPPIST-1', 9700, 'Laranja');


-- Inserção de dados na tabela Traje
INSERT INTO Traje VALUES (1001, 'Prata', 'Alumínio', 'Terra');
INSERT INTO Traje VALUES (1002, 'Preto', 'Fibra de Carbono', 'Marte');
INSERT INTO Traje VALUES (1003, 'Branco', 'Kevlar', 'Kepler-186f');
INSERT INTO Traje VALUES (1004, 'Azul Profundo', 'Material Hidrorrepelente', 'GJ 1214b');
INSERT INTO Traje VALUES (1005, 'Marrom Escuro', 'Tecido Resistente ao Calor', 'Proxima Centauri b');
INSERT INTO Traje VALUES (1006, 'Laranja Vibrante', 'Tecido com Isolamento Térmico', 'TRAPPIST-1d');

-- Inserção de dados na tabela Tamanhos
INSERT INTO Tamanhos VALUES (1001, 'G');
INSERT INTO Tamanhos VALUES (1001, 'P');
INSERT INTO Tamanhos VALUES (1001, 'M');
INSERT INTO Tamanhos VALUES (1001, 'GG');
INSERT INTO Tamanhos VALUES (1002, 'P');
INSERT INTO Tamanhos VALUES (1002, 'G');
INSERT INTO Tamanhos VALUES (1002, 'M');
INSERT INTO Tamanhos VALUES (1002, 'GG');
INSERT INTO Tamanhos VALUES (1003, 'M');
INSERT INTO Tamanhos VALUES (1004, 'GG'); 
INSERT INTO Tamanhos VALUES (1005, 'M'); 
INSERT INTO Tamanhos VALUES (1005, 'G');
INSERT INTO Tamanhos VALUES (1005, 'P');
INSERT INTO Tamanhos VALUES (1005, 'GG');
INSERT INTO Tamanhos VALUES (1006, 'P');  

-- Inserção de dados na tabela Foguete
INSERT INTO Foguete VALUES (2001, 'Falcon Heavy', 'SpaceX', 'FH01', 64000, 'Terra');
INSERT INTO Foguete VALUES (2002, 'Starship', 'SpaceX', 'SN15', 100000, 'Marte');
INSERT INTO Foguete VALUES (2003, 'Voyager', 'NASA', 'VY01', 5000, 'Kepler-186f');
INSERT INTO Foguete VALUES (2004, 'Aqua Explorer', 'Blue Origin', 'AE01', 30000, 'GJ 1214b');
INSERT INTO Foguete VALUES (2005, 'Solar Voyager', 'Boeing', 'SV02', 75000, 'Proxima Centauri b');
INSERT INTO Foguete VALUES (2006, 'Galaxy Pioneer', 'Lockheed Martin', 'GP03', 55000, 'TRAPPIST-1d');


-- Inserção de dados na tabela Treinamento
INSERT INTO Treinamento VALUES (3001, 'Treinamento Espacial Básico', 120, 'Centro de Treinamento Espacial', 'Procedimentos Espaciais');
INSERT INTO Treinamento VALUES (3002, 'Treinamento de Sobrevivência em Marte', 72, 'Base Marciana', 'Adaptação Ambiental');
INSERT INTO Treinamento VALUES (3003, 'Treinamento de Navegação Estelar', 96, 'Centro de Controle Espacial', 'Orientação no Espaço');
INSERT INTO Treinamento VALUES (3004, 'Operações Aquáticas em GJ 1214b', 150, 'Academia de Treinamento Subaquático', 'Téc. Exploração Subaquática');
INSERT INTO Treinamento VALUES (3005, 'Sobrevivência em Ambientes Extremos', 80, 'Centro de Treinamento de Proxima Centauri', 'Adaptação a Ambientes Hostis');
INSERT INTO Treinamento VALUES (3006, 'Biologia Extraterrestre em TRAPPIST-1d', 110, 'Laboratório de Astrobiologia', 'Estudo de Vida em Exoplanetas');


-- Inserção de dados na tabela Viagem com formato DD-MM-YYYY
INSERT INTO Viagem VALUES (4001, 'Missão Lunar', 2001, TO_DATE('10-03-2023', 'DD-MM-YYYY'));
INSERT INTO Viagem VALUES (4002, 'Missão Terra-Marte', 2002, TO_DATE('15-05-2024', 'DD-MM-YYYY'));
INSERT INTO Viagem VALUES (4003, 'Exploração de Kepler-186f', 2003, TO_DATE('20-08-2026', 'DD-MM-YYYY'));
INSERT INTO Viagem VALUES (4004, 'Missão GJ 1214b', 2004, TO_DATE('12-09-2025', 'DD-MM-YYYY'));
INSERT INTO Viagem VALUES (4005, 'Expedição Proxima Centauri b', 2005, TO_DATE('18-07-2026', 'DD-MM-YYYY'));
INSERT INTO Viagem VALUES (4006, 'Pesquisa TRAPPIST-1d', 2006, TO_DATE('22-11-2027', 'DD-MM-YYYY'));

-- Inserção de dados na tabela Treinamento_Viagem
INSERT INTO Treinamento_Viagem VALUES (3001, 4001);
INSERT INTO Treinamento_Viagem VALUES (3002, 4002);
INSERT INTO Treinamento_Viagem VALUES (3002, 4005);
INSERT INTO Treinamento_Viagem VALUES (3003, 4003);
INSERT INTO Treinamento_Viagem VALUES (3001, 4003);
INSERT INTO Treinamento_Viagem VALUES (3002, 4003);
INSERT INTO Treinamento_Viagem VALUES (3004, 4003);
INSERT INTO Treinamento_Viagem VALUES (3005, 4003);
INSERT INTO Treinamento_Viagem VALUES (3004, 4004); 
INSERT INTO Treinamento_Viagem VALUES (3005, 4005); 
INSERT INTO Treinamento_Viagem VALUES (3006, 4003);
INSERT INTO Treinamento_Viagem VALUES (3006, 4006); 

-- Inserção de dados na tabela Pessoa
INSERT INTO Pessoa VALUES (12345678901, 'João Silva', TO_DATE('15-02-1990', 'DD-MM-YYYY'), 33, 1, 0, 1);
INSERT INTO Pessoa VALUES (23456789012, 'Maria Santos',  TO_DATE('20-07-1985', 'DD-MM-YYYY'), 38, 0, 1, 1);
INSERT INTO Pessoa VALUES (34567890123, 'Carlos Oliveira',  TO_DATE('15-05-1995', 'DD-MM-YYYY'), 28, 1, 1, 0);
INSERT INTO Pessoa VALUES (45678901234, 'Ana Pereira', TO_DATE('05-10-1988', 'DD-MM-YYYY'), 35, 0, 1, 0);
INSERT INTO Pessoa VALUES (56789012345, 'Ricardo Gomes', TO_DATE('22-01-1992', 'DD-MM-YYYY'), 31, 1, 0, 0);
INSERT INTO Pessoa VALUES (67890123456, 'Luisa Fernandes', TO_DATE('30-08-1987', 'DD-MM-YYYY'), 36, 0, 0, 1);

-- Inserção de dados na tabela Treinamentos
INSERT INTO Treinamentos VALUES (12345678901, 3001);
INSERT INTO Treinamentos VALUES (23456789012, 3002);
INSERT INTO Treinamentos VALUES (34567890123, 3003);
INSERT INTO Treinamentos VALUES (45678901234, 3004); -- Ana Pereira para 'Operações Aquáticas em GJ 1214b'
INSERT INTO Treinamentos VALUES (56789012345, 3005); -- Ricardo Gomes para 'Sobrevivência em Ambientes Extremos'
INSERT INTO Treinamentos VALUES (67890123456, 3006); -- Luisa Fernandes para 'Biologia Extraterrestre em TRAPPIST-1d'
INSERT INTO Treinamentos VALUES (23456789012, 3003); -- ...
INSERT INTO Treinamentos VALUES (23456789012, 3004);
INSERT INTO Treinamentos VALUES (56789012345, 3001);
INSERT INTO Treinamentos VALUES (67890123456, 3002);


-- Inserção de dados na tabela Equipamentos
INSERT INTO Equipamentos VALUES (12345678901, 'Traje Espacial');
INSERT INTO Equipamentos VALUES (23456789012, 'Comunicador Espacial');
INSERT INTO Equipamentos VALUES (34567890123, 'GPS Estelar');
INSERT INTO Equipamentos VALUES (45678901234, 'Kit de Exploração Arqueológica');
INSERT INTO Equipamentos VALUES (56789012345, 'Conjunto de Ferramentas Biológicas');
INSERT INTO Equipamentos VALUES (67890123456, 'Analisador de Composição Geológica');
INSERT INTO Equipamentos VALUES (67890123456,  'GPS Estelar');
INSERT INTO Equipamentos VALUES (23456789012, 'Traje Espacial');

-- Inserção de dados na tabela Item
INSERT INTO Item VALUES (5001, 'Equipamento', 'NASA', 'Comunicador Espacial X', 9001, TO_DATE('31-12-2025', 'DD-MM-YYYY'));
INSERT INTO Item VALUES (5002, 'Instrumento Científico', 'ExplorationTech', 'Espectrômetro Planetário', 8500, TO_DATE('15-10-2024', 'DD-MM-YYYY'));
INSERT INTO Item VALUES (5003, 'Traje Espacial', 'SpaceWear', 'SpaceSuit Pro', 9200, TO_DATE('20-05-2026', 'DD-MM-YYYY'));
INSERT INTO Item VALUES (5004, 'Navegação', 'GalaxyNav', 'Navegador Estelar', 9500, TO_DATE('30-06-2027', 'DD-MM-YYYY'));
INSERT INTO Item VALUES (5005, 'Comunicação', 'DeepCom', 'Satélite Com', 8800, TO_DATE('01-03-2025', 'DD-MM-YYYY'));
INSERT INTO Item VALUES (5006, 'Análise Científica', 'QuantumTech', 'Detector Quântico', 9700, TO_DATE('25-08-2026', 'DD-MM-YYYY'));

-- Inserção de dados na tabela Pesquisa
INSERT INTO Pesquisa VALUES (6000, 4001, 'Geologia Lunar', TO_DATE('05-09-2023', 'DD-MM-YYYY'), 'Análise geológica da Lua', '1.234,-5.678', 'Geológica');
INSERT INTO Pesquisa VALUES (6001, 4001, 'Ecologia Lunar', TO_DATE('10-10-2023', 'DD-MM-YYYY'), 'Estudo de potenciais microecossistemas na Lua', '1.235,-5.678', 'Ecológica');
INSERT INTO Pesquisa VALUES (6002, 4002, 'Geologia Marciana', TO_DATE('12-06-2024', 'DD-MM-YYYY'), 'Estudo das formações rochosas de Marte', '-12.345,67.890', 'Geológica');
INSERT INTO Pesquisa VALUES (6003, 4002, 'Ecologia de Marte', TO_DATE('25-07-2024', 'DD-MM-YYYY'), 'Pesquisa sobre possíveis habitats em Marte', '-12.346,67.890', 'Ecológica');
INSERT INTO Pesquisa VALUES (6004, 4003, 'Geologia de Kepler-186f', TO_DATE('03-09-2026', 'DD-MM-YYYY'), 'Análise do solo e rochas em Kepler-186f', '78.901,-32.123', 'Geológica');
INSERT INTO Pesquisa VALUES (6005, 4003, 'Ecologia de Kepler-186f', TO_DATE('15-11-2026', 'DD-MM-YYYY'), 'Estudo de ecossistemas potenciais em Kepler-186f', '78.902,-32.123', 'Ecológica');
INSERT INTO Pesquisa VALUES (6006, 4004, 'Estudos Hidrológicos de GJ 1214b', TO_DATE('20-09-2025', 'DD-MM-YYYY'), 'Pesquisa das propriedades da água em GJ 1214b', '37.111,-15.222', 'Hidrológica');
INSERT INTO Pesquisa VALUES (6007, 4005, 'Radiologia de Proxima Centauri b', TO_DATE('05-06-2026', 'DD-MM-YYYY'), 'Análise da radiação em Proxima Centauri b', '67.333,-35.444', 'Radiológica');
INSERT INTO Pesquisa VALUES (6008, 4006, 'Estudo Atmosférico de TRAPPIST-1d', TO_DATE('07-02-2028', 'DD-MM-YYYY'), 'Avaliação da atmosfera de TRAPPIST-1d', '89.555,-45.666', 'Atmosférica');
INSERT INTO Pesquisa VALUES (6009, 4004, 'Química de GJ 1214b', TO_DATE('16-04-2027', 'DD-MM-YYYY'), 'Estudo da composição química de GJ 1214b', '38.888,-16.999', 'Química');
INSERT INTO Pesquisa VALUES (6010, 4005, 'Astronomia de Proxima Centauri b', TO_DATE('10-12-2026', 'DD-MM-YYYY'), 'Observações astronômicas a partir de Proxima Centauri b', '68.000,-36.000', 'Astronômica');


-- Inserção de dados na tabela Observacoes
INSERT INTO Observacoes VALUES (6000, 'Descoberta de rochas lunares ricas em minerais');
INSERT INTO Observacoes VALUES (6001, 'Evidências de microorganismos na superfície lunar');
INSERT INTO Observacoes VALUES (6002, 'Formações de dunas marcianas');
INSERT INTO Observacoes VALUES (6003, 'Potenciais sinais de água subterrânea em Marte');
INSERT INTO Observacoes VALUES (6004, 'Análise de amostras de solo de Kepler-186f');
INSERT INTO Observacoes VALUES (6005, 'Florações algal possíveis em Kepler-186f');
INSERT INTO Observacoes VALUES (6006, 'Medições de pH da água em GJ 1214b');
INSERT INTO Observacoes VALUES (6007, 'Níveis de radiação acima do esperado em Proxima Centauri b');
INSERT INTO Observacoes VALUES (6008, 'Variações inesperadas na atmosfera de TRAPPIST-1d');
INSERT INTO Observacoes VALUES (6009, 'Compostos orgânicos complexos encontrados em GJ 1214b');
INSERT INTO Observacoes VALUES (6010, 'Padrões de luz estelar incomuns em Proxima Centauri b');

-- Inserção de dados na tabela Geologia
INSERT INTO Geologia VALUES (6000, 'Formações de Basalto Lunar', 'Rochas Lunares');
INSERT INTO Geologia VALUES (6002, 'Sedimentos de Ferro Marciano', 'Solo Ferruginoso');
INSERT INTO Geologia VALUES (6004, 'Estrutura do Solo de Kepler-186f', 'Rico em Silicatos');
INSERT INTO Geologia VALUES (6006, 'Composição Aquática de GJ 1214b', 'Águas Ricas em Minerais');
INSERT INTO Geologia VALUES (6008, 'Camadas Atmosféricas de TRAPPIST-1d', 'Estratos Diversos');
INSERT INTO Geologia VALUES (6009, 'Solo Ácido de GJ 1214b', 'Alta Acidez');


-- Inserção de dados na tabela Ecologia
INSERT INTO Ecologia VALUES (6001, 'Biodiversidade Lunar', 'Microorganismos', 'Astrobiologia', 'Desconhecido', 'Possível vida microbiana');
INSERT INTO Ecologia VALUES (6003, 'Ecossistema Marciano', 'Bactérias Extremófilas', 'Microbiologia', 'Autótrofo', 'Adaptado a condições extremas');
INSERT INTO Ecologia VALUES (6005, 'Flora de Kepler-186f', 'Plantas Exóticas', 'Botânica', 'Fotossintético', 'Adaptação a luz infravermelha');
INSERT INTO Ecologia VALUES (6007, 'Fauna Marinha de GJ 1214b', 'Espécies Aquáticas', 'Marine Biology', 'Heterotrófico', 'Adaptado a altas pressões');
INSERT INTO Ecologia VALUES (6010, 'Microbiologia de Proxima Centauri b', 'Microorganismos', 'Microbiologia', 'Desconhecido', 'Potencial vida adaptada à radiação');

-- Inserção de dados na tabela Geo_Eco
INSERT INTO Geo_Eco VALUES (6000, 6001); -- Associando 'Geologia Lunar' com 'Ecologia Lunar'
INSERT INTO Geo_Eco VALUES (6002, 6003); -- Associando 'Geologia Marciana' com 'Ecologia de Marte'
INSERT INTO Geo_Eco VALUES (6004, 6005); -- Associando 'Geologia de Kepler-186f' com 'Ecologia de Kepler-186f'
INSERT INTO Geo_Eco VALUES (6006, 6007); -- Associando 'Composição Aquática de GJ 1214b' com 'Fauna Marinha de GJ 1214b'
INSERT INTO Geo_Eco VALUES (6008, 6010); -- Associando 'Camadas Atmosféricas de TRAPPIST-1d' com 'Microbiologia de Proxima Centauri b'

-- Inserção de dados na tabela Fauna
INSERT INTO Fauna VALUES (6001, 'Microorganismos');  -- Associado a 'Ecologia Lunar'
INSERT INTO Fauna VALUES (6003, 'Bactérias');        -- Associado a 'Ecossistema Marciano'
INSERT INTO Fauna VALUES (6005, 'Plantae');          -- Associado a 'Flora de Kepler-186f'
INSERT INTO Fauna VALUES (6007, 'Animalia');         -- Associado a 'Fauna Marinha de GJ 1214b'
INSERT INTO Fauna VALUES (6010, 'Microorganismos');  -- Associado a 'Microbiologia de Proxima Centauri b'

-- Inserção de dados na tabela Comportamentos
INSERT INTO Comportamentos VALUES (6003, 'Adaptação a ambientes áridos'); -- Bactérias em Marte
INSERT INTO Comportamentos VALUES (6005, 'Fotossíntese em luz infravermelha'); -- Plantas em Kepler-186f
INSERT INTO Comportamentos VALUES (6007, 'Nado em altas pressões'); -- Fauna Marinha de GJ 1214b

-- Inserção de dados na tabela Flora
INSERT INTO Flora VALUES (6005, 'Folhas Vermelhas', 'Plantae'); -- Associado à 'Flora de Kepler-186f'
INSERT INTO Flora VALUES (6007, 'Algas Aquáticas', 'Algae');    -- Associado à 'Fauna Marinha de GJ 1214b'
INSERT INTO Flora VALUES (6010, 'Musgos Resistentes', 'Bryophyta'); -- Associado à 'Microbiologia de Proxima Centauri b'


-- Inserção de dados na tabela Agua
INSERT INTO Agua VALUES (6000, 'Transparente', 'Depósitos Lunares', 'Baixa Mineralização');  -- Associado à 'Geologia Lunar'
INSERT INTO Agua VALUES (6002, 'Oxidada', 'Solo Marciano', 'Rica em Ferro');                  -- Associado à 'Geologia Marciana'
INSERT INTO Agua VALUES (6004, 'Desconhecida', 'Solo de Kepler-186f', 'Silicatos');           -- Associado à 'Geologia de Kepler-186f'
INSERT INTO Agua VALUES (6006, 'Azulada', 'Oceanos de GJ 1214b', 'Compostos Orgânicos');       -- Associado à 'Composição Aquática de GJ 1214b'
INSERT INTO Agua VALUES (6008, 'Incolor', 'Atmosfera de TRAPPIST-1d', 'Vapor de Água');        -- Associado à 'Camadas Atmosféricas de TRAPPIST-1d'


-- Inserção de dados na tabela Solo
INSERT INTO Solo VALUES (6000, 'Cinzento', 'Superfície Lunar', 'Poeira e Regolito');   -- Associado à 'Geologia Lunar'
INSERT INTO Solo VALUES (6002, 'Vermelho', 'Planalto Marciano', 'Óxidos de Ferro');    -- Associado à 'Geologia Marciana'
INSERT INTO Solo VALUES (6004, 'Escuro', 'Terreno de Kepler-186f', 'Rico em Carbono'); -- Associado à 'Geologia de Kepler-186f'
INSERT INTO Solo VALUES (6006, 'Salmão', 'Margens de GJ 1214b', 'Sais Minerais');      -- Associado à 'Composição Aquática de GJ 1214b'
INSERT INTO Solo VALUES (6008, 'Incolor', 'Nuvens de TRAPPIST-1d', 'Compostos Gelados'); -- Associado à 'Camadas Atmosféricas de TRAPPIST-1d'

-- Inserção de dados na tabela Formacao_Rochosa
INSERT INTO Formacao_Rochosa VALUES (6000, 'Crateras de Impacto');      -- Associado ao Solo Lunar
INSERT INTO Formacao_Rochosa VALUES (6002, 'Vales Secos de Marte');     -- Associado ao Solo Marciano
INSERT INTO Formacao_Rochosa VALUES (6004, 'Planaltos de Silicato');    -- Associado ao Solo de Kepler-186f
-- Nenhum registro específico de formação rochosa para GJ 1214b (6006) e TRAPPIST-1d (6008) no momento

-- Inserção de dados na tabela Intensidade_Luminosa
INSERT INTO Intensidade_Luminosa VALUES (6000, '1361 W/m2');  -- Intensidade luminosa na Lua
INSERT INTO Intensidade_Luminosa VALUES (6002, '589 W/m2');   -- Intensidade luminosa em Marte
INSERT INTO Intensidade_Luminosa VALUES (6004, '900 W/m2');   -- Estimativa para Kepler-186f
INSERT INTO Intensidade_Luminosa VALUES (6006, '1200 W/m2');  -- Estimativa para GJ 1214b
INSERT INTO Intensidade_Luminosa VALUES (6008, '400 W/m2');   -- Estimativa para TRAPPIST-1d


-- Inserção de dados na tabela Exploracao
INSERT INTO Exploracao VALUES (6000, 'Exploração Lunar', 1);      -- Exploração geológica da Lua
INSERT INTO Exploracao VALUES (6002, 'Missão Marte', 0);          -- Exploração geológica de Marte
INSERT INTO Exploracao VALUES (6004, 'Kepler-186f Recon', 0);     -- Exploração geológica de Kepler-186f
INSERT INTO Exploracao VALUES (6006, 'GJ 1214b Hidro', 1);        -- Exploração hidrológica de GJ 1214b
INSERT INTO Exploracao VALUES (6008, 'TRAPPIST-1d Atmos', 0);     -- Exploração atmosférica de TRAPPIST-1d
INSERT INTO Exploracao VALUES (6001, 'Estudo Lunar Eco', 1);      -- Exploração ecológica da Lua
INSERT INTO Exploracao VALUES (6003, 'Marte Ecologia', 0);        -- Exploração ecológica de Marte
INSERT INTO Exploracao VALUES (6005, 'Flora Kepler-186f', 1);     -- Exploração da flora em Kepler-186f
INSERT INTO Exploracao VALUES (6007, 'Radiação Proxima b', 0);    -- Exploração radiológica de Proxima Centauri b
INSERT INTO Exploracao VALUES (6010, 'Astro Proxima b', 1);       -- Exploração astronômica de Proxima Centauri b


-- Inserção de dados na tabela Pessoa_Exploracao
INSERT INTO Pessoa_Exploracao VALUES (12345678901, 6000, 'Exploração Lunar');
INSERT INTO Pessoa_Exploracao VALUES (23456789012, 6002, 'Missão Marte');
INSERT INTO Pessoa_Exploracao VALUES (34567890123, 6004, 'Kepler-186f Recon');
INSERT INTO Pessoa_Exploracao VALUES (12345678901, 6006, 'GJ 1214b Hidro');
INSERT INTO Pessoa_Exploracao VALUES (23456789012, 6008, 'TRAPPIST-1d Atmos');
INSERT INTO Pessoa_Exploracao VALUES (34567890123, 6001, 'Estudo Lunar Eco');
INSERT INTO Pessoa_Exploracao VALUES (12345678901, 6003, 'Marte Ecologia');
INSERT INTO Pessoa_Exploracao VALUES (23456789012, 6005, 'Flora Kepler-186f');
INSERT INTO Pessoa_Exploracao VALUES (34567890123, 6007, 'Radiação Proxima b');
INSERT INTO Pessoa_Exploracao VALUES (12345678901, 6010, 'Astro Proxima b');



-- Inserção de dados na tabela Item_Exploracao
INSERT INTO Item_Exploracao VALUES (5001, 6000, 'Exploração Lunar');       -- Comunicador Espacial X usado na Exploração Lunar
INSERT INTO Item_Exploracao VALUES (5002, 6002, 'Missão Marte');           -- Espectrômetro Planetário usado na Missão Marte
INSERT INTO Item_Exploracao VALUES (5003, 6004, 'Kepler-186f Recon');      -- SpaceSuit Pro usado na Exploração de Kepler-186f
INSERT INTO Item_Exploracao VALUES (5001, 6006, 'GJ 1214b Hidro');         -- Comunicador Espacial X usado na Exploração Hidrológica de GJ 1214b
INSERT INTO Item_Exploracao VALUES (5002, 6008, 'TRAPPIST-1d Atmos');      -- Espectrômetro Planetário usado na Exploração Atmosférica de TRAPPIST-1d
INSERT INTO Item_Exploracao VALUES (5003, 6001, 'Estudo Lunar Eco');       -- SpaceSuit Pro usado no Estudo Ecológico Lunar
INSERT INTO Item_Exploracao VALUES (5001, 6003, 'Marte Ecologia');         -- Comunicador Espacial X usado na Exploração Ecológica de Marte
INSERT INTO Item_Exploracao VALUES (5002, 6005, 'Flora Kepler-186f');      -- Espectrômetro Planetário usado na Exploração da Flora em Kepler-186f
INSERT INTO Item_Exploracao VALUES (5003, 6007, 'Radiação Proxima b');     -- SpaceSuit Pro usado na Exploração Radiológica de Proxima Centauri b
INSERT INTO Item_Exploracao VALUES (5001, 6010, 'Astro Proxima b');        -- Comunicador Espacial X usado na Exploração Astronômica de Proxima Centauri b




