create database volei;
USE volei;

-- Tabela Selecao
CREATE TABLE Selecao(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
surgimento VARCHAR(50),
nacionalidade VARCHAR(50)
);
INSERT INTO Selecao VALUES (41, "Seleção brasileira", '1951', "Brasil");
INSERT INTO Selecao VALUES (42, "Seleção turca", '2009', "Turquia");
INSERT INTO Selecao VALUES (43, "Seleção italiana", '1951', "Itália");

-- Tabela Time
CREATE TABLE Time (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
surgimento VARCHAR(50),
nacionalidade VARCHAR(50),
imagem TEXT
);

-- 3 ligas
-- LIGA BRASIL(A)
INSERT INTO Time VALUES (1, "ABEL Moda Vôlei", '2012', "Brasil", "https://volleybox.net/media/upload/teams/big_1697079514OJYO2.png");
INSERT INTO Time VALUES (2, "Barueri", '2016', "Brasil", "https://volleybox.net/media/upload/teams/1567658392Oh4qq.png");
INSERT INTO Time VALUES (3, "Batavo Mackenzie", '1943', "Brasil", "https://volleybox.net/media/upload/teams/big_17322782813O2XO.png");
INSERT INTO Time VALUES (4, "Brasília Volei", '2006', "Brasil", "https://volleybox.net/media/upload/teams/big_1666961712vXE7i.png");
INSERT INTO Time VALUES (5, "Praia Clube", '1935', "Brasil", "https://volleybox.net/media/upload/teams/big_1683147171CJi7u.png");
INSERT INTO Time VALUES (6, "Fluminense", '1924', "Brasil", "https://volleybox.net/media/upload/teams/big_1677697577Kmpl8.png");
INSERT INTO Time VALUES (7, "Gerdau Minas Clube", '1930', "Brasil", "https://volleybox.net/media/upload/teams/big_1731043805B9MCc.png");
INSERT INTO Time VALUES (8, "Osasco São Cristovão Saúde", '1996', "Brasil", "https://volleybox.net/media/upload/teams/big_1666833989NG1Zd.png");
INSERT INTO Time VALUES (9, "Pinheiros", '1939', "Brasil", "https://volleybox.net/media/upload/teams/big_1680891118k7nXQ.png");
INSERT INTO Time VALUES (10, "Sesc Flamengo", '2003', "Brasil", "https://volleybox.net/media/upload/teams/big_1666961630SNgK4.png");
INSERT INTO Time VALUES (11, "Sesi Bauru", '2005', "Brasil", "https://volleybox.net/media/upload/teams/big_1691450698vvx9D.png");
INSERT INTO Time VALUES (12, "Unilife Maringa", '2000', "Brasil", "https://volleybox.net/media/upload/teams/big_1729561853JZ94y.png");

-- LIGA TURCA(A)
INSERT INTO Time VALUES (13, "Galatasaray", '1905', "Turquia", "https://volleybox.net/media/upload/teams/big_1728472880VHE6F.png");
INSERT INTO Time VALUES (14, "Fenerbahce", '1907', "Turquia", "https://volleybox.net/media/upload/teams/big_1721222987hBo1h.png");
INSERT INTO Time VALUES (15, "Besiktas", '1903', "Turquia", "https://volleybox.net/media/upload/teams/big_1731925691f1Mze.png");
INSERT INTO Time VALUES (16, "Eczacibasi", '1966', "Turquia", "https://volleybox.net/media/upload/teams/big_1677603180cIuV2.png");
INSERT INTO Time VALUES (17, "Bahcelievler", '2010', "Turquia", "https://volleybox.net/media/upload/teams/big_1668127232uJL4q.png");
INSERT INTO Time VALUES (18, "KuzeyBoru Genclik", '2002', "Turquia", "https://volleybox.net/media/upload/teams/1620248910jad4B.png");
INSERT INTO Time VALUES (19, "THY ", '1979', "Turquia", "https://volleybox.net/media/upload/teams/big_1731570518ZnYA5.png");
INSERT INTO Time VALUES (20, "Vakifbank", '1986', "Turquia", "https://volleybox.net/media/upload/teams/big_1684834812qg2Le.png");
INSERT INTO Time VALUES (21, "Sigorta Shop", '1976', "Turquia", "https://volleybox.net/media/upload/teams/big_1727803516IUNS0.png");
INSERT INTO Time VALUES (22, "Sariyer", '1990', "Turquia", "https://volleybox.net/media/upload/teams/big_17201200577ghMX.png");
INSERT INTO Time VALUES (23, "Zeren Spor", '2022', "Turquia", "https://volleybox.net/media/upload/teams/big_17315735306bi1x.png");
INSERT INTO Time VALUES (24, "Nilufer Bld", '1999', "Turquia", "https://volleybox.net/media/upload/teams/1633067590bzpv4.png");
INSERT INTO Time VALUES (25, "Aras Kargo", '2023', "Turquia", "https://volleybox.net/media/upload/teams/big_17315738162jWKo.png");
INSERT INTO Time VALUES (26, "Aydin B.Sehir Bld", '2014', "Turquia", "https://volleybox.net/media/upload/teams/16153080942M3Lg.png");

-- LIGA ITALIA(A)
INSERT INTO Time VALUES (27, "Conegliano", '2012', "Itália", "https://volleybox.net/media/upload/teams/big_16829558776nkEz.png");
INSERT INTO Time VALUES (28, "Scandicci ", '2012', "Itália", "https://volleybox.net/media/upload/teams/big_1724763438GdB5X.png");
INSERT INTO Time VALUES (29, "Bergamo ", '1991', "Itália", "https://volleybox.net/media/upload/teams/big_1731524761Hng9f.png");
INSERT INTO Time VALUES (30, "Vero Volley", '1981', "Itália", "https://volleybox.net/media/upload/teams/big_1731436100r03Bv.png");
INSERT INTO Time VALUES (31, "Chieri '76", '2009', "Itália", "https://volleybox.net/media/upload/teams/big_1731517850O5PmL.png");
INSERT INTO Time VALUES (32, "Novara", '1984', "Itália", "https://volleybox.net/media/upload/teams/big_1677649383m1Dhh.png");
INSERT INTO Time VALUES (33, "Vallefoglia", '2001', "Itália", "https://volleybox.net/media/upload/teams/big_1700863819eYHw2.png");
INSERT INTO Time VALUES (34, "Roma", '2006', "Itália", "https://volleybox.net/media/upload/teams/big_1731520605UqX2e.png");
INSERT INTO Time VALUES (35, "Firenze ", '1975', "Itália", "https://volleybox.net/media/upload/teams/big_1665468079pp95L.png");
INSERT INTO Time VALUES (36, "Perugia ", '2001', "Itália", "https://volleybox.net/media/upload/teams/big_1730523831P6ldt.png");
INSERT INTO Time VALUES (37, "UYBA Busto Arsizio", '1998', "Itália", "https://volleybox.net/media/upload/teams/big_17249688758pfXH.png");
INSERT INTO Time VALUES (38, "Pinerolo ", '1987', "Itália", "https://volleybox.net/media/upload/teams/big_1700864165W7xyL.png");
INSERT INTO Time VALUES (39, "Talmassons", '1991', "Itália", "https://volleybox.net/media/upload/teams/1560756412uE7YV.png");
INSERT INTO Time VALUES (40, "Cuneo ", '2003', "Itália", "https://volleybox.net/media/upload/teams/big_1700863961lBSs3.png");

-- Tabela Jogadora
CREATE TABLE Jogadora (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
nascimento DATE,
idade INT,
nacionalidade VARCHAR(50),
posicao VARCHAR(50),
tipo ENUM('Profissional', 'Casual'),
selecao INT DEFAULT NULL,
time_id INT DEFAULT NULL,
altura FLOAT DEFAULT NULL,
ranking INT DEFAULT NULL,
FOREIGN KEY (selecao) REFERENCES Selecao(id),
FOREIGN KEY (time_id) REFERENCES Time(id)
);

-- LIGA BRASIL
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(1, 'Nyeme Victória Alexandre Costa Nunes', '1998-10-11', 25, 'Brasileira', 'Líbero', 'Profissional', 41, NULL, 1.75, 500),
(2, 'Diana Duarte Alecrim', '1999-02-22', 25, 'Brasileira', 'Central', 'Profissional', 41, 19, 1.94, NULL),
(3, 'Macris Fernanda Silva Carneiro', '1989-03-03', 35, 'Brasileira', 'Levantadora', 'Profissional', 41, 5, 1.78, 100),
(4, 'Thaísa Daher de Menezes', '1987-05-15', 37, 'Brasileira', 'Central', 'Profissional', 41, 7, 1.96, 5),
(5, 'Rosamaria Montibeller', '1994-04-09', 30, 'Brasileira', 'Oposta/Ponta', 'Profissional', 41, NULL, 1.75, 500),
(6, 'Roberta Silva Ratzke', '1990-04-28', 34, 'Brasileira', 'Levantadora', 'Profissional', 41, 19, 1.86, 200),
(7, 'Gabriela Braga Guimarães', '1994-05-19', 30, 'Brasileira', 'Ponta', 'Profissional', 41, 27, 1.80, 5),
(8, 'Ana Cristina Menezes Oliveira de Souza', '2004-04-07', 20, 'Brasileira', 'Ponta', 'Profissional', 41, 14, 1.83, 100),
(9, 'Natália Pereira de Araújo', '1997-04-10', 27, 'Brasileira', 'Líbero', 'Profissional', 41, 5, 1.62, 1000),
(10, 'Ana Carolina da Silva', '1991-04-08', 33, 'Brasileira', 'Central', 'Profissional', 41, 28, 1.75, 500),
(11, 'Júlia Isabelle Bergmann', '2001-02-21', 23, 'Brasileira', 'Ponta', 'Profissional', 41, 19, 1.92, NULL),
(12, 'Tainara Lemes Santos', '2000-03-09', 24, 'Brasileira', 'Oposta', 'Profissional', 41, NULL, 1.75, 1000),
(13, 'Lorenne Maria Geraldo Teixeira', '1996-01-08', 28, 'Brasileira', 'Oposta', 'Profissional', 41, 11, 1.84, 500);

-- abel moda volei
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(14, 'Karla Goedert', '1993-08-14', 31, 'Brasileira', 'Oposta', 'Profissional', NULL, 1, 1.83, NULL),
(15, 'Sabrina Floriano', '1991-07-23', 33, 'Brasileira', 'Oposta', 'Profissional', NULL, 1, 1.82, NULL),
(16, 'Paula Panno', '2000-01-03', 24, 'Brasileira', 'Líbero', 'Profissional', NULL, 1, 1.80, NULL),
(17, 'Heloisa Brazolim', '2003-04-30', 21, 'Brasileira', 'Oposta', 'Profissional', NULL, 1, 1.95, NULL),
(18, 'Glaucia Ludescher', '2004-05-01', 20, 'Brasileira', 'Central', 'Profissional', NULL, 1, 1.83, NULL),
(19, 'Hellen Lacava', '1996-11-23', 27, 'Brasileira', 'Ponteira', 'Profissional', NULL, 1, 1.82, NULL),
(20, 'Natasha Farinea', '1986-02-08', 38, 'Brasileira', 'Central', 'Profissional', NULL, 1, 1.87, 1000),
(21, 'Camila Leite', '1988-07-25', 36, 'Brasileira', 'Central', 'Profissional', NULL, 1, 1.80, NULL),
(22, 'Emanuelle Moura', '2002-10-08', 22, 'Brasileira', 'Ponteira', 'Profissional', NULL, 1, 1.82, NULL),
(23, 'Ana Paula Nunes', '1999-06-27', 25, 'Brasileira', 'Levantadora', 'Profissional', NULL, 1, 1.73, NULL),
(24, 'Anna Sampaio', '2002-03-09', 22, 'Brasileira', 'Ponteira', 'Profissional', NULL, 1, 1.80, NULL),
(25, 'Mariana Blum', '1983-11-23', 40, 'Brasileira', 'Ponteira', 'Profissional', NULL, 1, 1.78, NULL),
(26, 'Isa Nicolai', '1999-01-31', 25, 'Brasileira', 'Levantadora', 'Profissional', NULL, 1, 1.76, NULL),
(27, 'Gabriela Santin', '2002-11-17', 21, 'Brasileira', 'Líbero', 'Profissional', NULL, 1, 1.75, NULL),
(28, 'Vitória Parise', '2002-05-21', 22, 'Brasileira', 'Ponteira', 'Profissional', NULL, 1, 1.83, NULL),
(29, 'Leticya Franco', '1998-04-26', 26, 'Brasileira', 'Central', 'Profissional', NULL, 1, 1.96, NULL);


-- barueri
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(30, 'Ana Luiza Bento', '2004-03-02', 20, 'Brasileira', 'Líbero', 'Profissional', NULL, 2, 1.67, NULL),
(31, 'Lanna Gomes', '2000-01-04', 24, 'Brasileira', 'Central', 'Profissional', NULL, 2, 1.87, NULL),
(32, 'Milena Souza', '2002-02-14', 22, 'Brasileira', 'Central', 'Profissional', NULL, 2, 1.89, NULL),
(33, 'Ana Cristina Porto', '1982-10-01', 42, 'Brasileira', 'Levantadora', 'Profissional', NULL, 2, 1.74, NULL),
(34, 'Aline Segato', '2005-11-16', 18, 'Brasileira', 'Ponteira', 'Profissional', NULL, 2, 1.87, NULL),
(35, 'Jheovana Emanuele', '2001-10-01', 23, 'Brasileira', 'Oposta', 'Profissional', NULL, 2, 1.92, NULL),
(36, 'Lyara Medeiros', '1996-09-19', 28, 'Brasileira', 'Levantadora', 'Profissional', NULL, 2, 1.85, NULL),
(37, 'Sabrina Groth', '2000-06-07', 24, 'Brasileira', 'Ponteira', 'Profissional', NULL, 2, 1.82, NULL),
(38, 'Luzia Nezzo', '2004-03-17', 20, 'Brasileira', 'Central', 'Profissional', NULL, 2, 1.99, NULL),
(39, 'Letícia Gomes', '1996-02-29', 28, 'Brasileira', 'Líbero', 'Profissional', NULL, 2, 1.61, NULL),
(40, 'Gabriela Carneiro', '2003-04-23', 21, 'Brasileira', 'Oposta', 'Profissional', NULL, 2, 1.88, NULL),
(41, 'Luiza Vicente', '2004-06-22', 20, 'Brasileira', 'Ponteira', 'Profissional', NULL, 2, 1.85, NULL);

-- mackenzie
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(42, 'Giulia Dias', '1999-02-09', 25, 'Brasileira', 'Central', 'Profissional', NULL, 3, 1.90, NULL),
(43, 'Lia Mariano', '2000-05-14', 24, 'Brasileira', 'Central', 'Profissional', NULL, 3, 1.87, NULL),
(44, 'Saraelen Lima', '1994-04-16', 30, 'Brasileira', 'Central', 'Profissional', NULL, 3, 1.87, NULL),
(45, 'Aline Mossmann', '1995-02-24', 29, 'Brasileira', 'Ponteira', 'Profissional', NULL, 3, 1.81, NULL),
(46, 'Fernanda Fernandes', '2007-01-01', 17, 'Brasileira', 'Levantadora', 'Profissional', NULL, 3, 1.75, NULL),
(47, 'Aline Santos', '1986-01-24', 38, 'Brasileira', 'Central', 'Profissional', NULL, 3, 1.96, NULL),
(48, 'Gabrielle Marcondes', '1999-07-01', 25, 'Brasileira', 'Ponteira', 'Profissional', NULL, 3, 1.87, NULL),
(49, 'Rafaella Bonifacio', '1997-01-27', 27, 'Brasileira', 'Ponteira', 'Profissional', NULL, 3, 1.82, NULL),
(50, 'Beatriz Martins', '1995-08-13', 29, 'Brasileira', 'Levantadora', 'Profissional', NULL, 3, 1.80, NULL),
(51, 'Sassá', '1982-09-09', 42, 'Estadunidense', 'Líbero', 'Profissional', NULL, 3, NULL, NULL),
(52, 'Lorena Rezende', '2007-08-09', 17, 'Brasileira', 'Ponteira', 'Profissional', NULL, 3, 1.82, NULL),
(53, 'Gabriella Souza', '1993-12-14', 30, 'Brasileira', 'Ponteira', 'Profissional', NULL, 3, 1.75, 1000),
(54, 'Carla Santos', '1992-01-17', 32, 'Brasileira', 'Ponteira', 'Profissional', NULL, 3, 1.73, NULL),
(55, 'Fabíola', '1983-02-03', 41, 'Brasileira', 'Levantadora', 'Profissional', NULL, 3, 1.84, 100),
(56, 'Kimberlly Gomes', '1999-11-09', 24, 'Brasileira', 'Oposta', 'Profissional', NULL, 3, 1.90, NULL),
(57, 'Ana Júlia Peixoto', '2006-01-01', 18, 'Brasileira', 'Oposta', 'Profissional', NULL, 3, 1.87, NULL),
(58, 'Gabriella Dutra', '1999-03-10', 25, 'Brasileira', 'Líbero', 'Profissional', NULL, 3, 1.69, NULL);


-- brasilia
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(59, 'Nicole Drewnick', '2001-09-08', 23, 'Brasileira', 'Levantadora', 'Profissional', NULL, 4, 1.86, NULL),
(60, 'Marina Sioto', '1999-12-07', 24, 'Brasileira', 'Levantadora', 'Profissional', NULL, 4, 1.83, NULL),
(61, 'Laiza Figueiredo', '1996-02-18', 28, 'Brasileira', 'Oposta', 'Profissional', NULL, 4, 1.83, NULL),
(62, 'Panni Petőváry', '1997-11-12', 26, 'Húngara', 'Oposta', 'Profissional', NULL, 4, 1.90, NULL),
(63, 'Ana Clara Medina', '2000-06-08', 23, 'Brasileira', 'Ponteira', 'Profissional', NULL, 4, 1.83, NULL),
(64, 'Milena Vilela', '2000-06-13', 23, 'Brasileira', 'Ponteira', 'Profissional', NULL, 5, 1.80, NULL),
(65, 'Geovanna Vitória Rodrigues', '2002-12-16', 21, 'Brasileira', 'Ponteira', 'Profissional', NULL, 4, 1.79, NULL),
(66, 'Nayara Felix', '1991-05-23', 33, 'Brasileira', 'Ponteira', 'Profissional', NULL, 4, 1.76, NULL),
(67, 'Marina Oliveira', '2001-08-08', 22, 'Brasileira', 'Central', 'Profissional', NULL, 4, 1.93, NULL),
(68, 'Kate Ferguson', '1998-04-26', 26, 'Canadense', 'Central', 'Profissional', NULL, 4, 1.91, NULL),
(69, 'Lívia Santos', '2003-06-08', 21, 'Brasileira', 'Central', 'Profissional', NULL, 4, 1.87, NULL),
(70, 'Nandyala Gama', '1993-10-01', 30, 'Brasileira', 'Central', 'Profissional', NULL, 4, 1.88, NULL),
(71, 'Victória Cavalli', '2001-03-06', 23, 'Brasileira', 'Líbero', 'Profissional', NULL, 4, 1.67, NULL),
(72, 'Vitória Lage', '1995-05-29', 29, 'Brasileira', 'Líbero', 'Profissional', NULL, 4, 1.70, NULL);

-- Praia Clube
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(73, 'Juliana Carrijo', '1992-02-25', 32, 'Brasileira', 'Levantadora', 'Profissional', NULL, 5, 1.77, NULL),
(74, 'Milla Christie Barbosa', '1992-01-01', 32, 'Brasileira', 'Levantadora', 'Profissional', NULL, 5, 1.75, NULL),
(75, 'Nia Reed', '1996-06-27', 27, 'Estadunidense', 'Oposta', 'Profissional', NULL, 5, 1.89, NULL),
(76, 'Monique Pavão', '1986-10-31', 37, 'Brasileira', 'Oposta', 'Profissional', NULL, 5, 1.79, NULL),
(77, 'Sofya Kuznetsova', '1999-10-31', 24, 'Russas', 'Ponteira', 'Profissional', NULL, 5, 1.85, NULL),
(78, 'Maiara Basso', '1996-01-03', 28, 'Brasileira', 'Ponteira', 'Profissional', NULL, 5, 1.87, NULL),
(79, 'Payton Caffrey', '1998-09-01', 25, 'Estadunidense', 'Ponteira', 'Profissional', NULL, 5, 1.81, NULL),
(80, 'Priscila Souza', '1987-10-29', 36, 'Brasileira', 'Ponteira', 'Profissional', NULL, 5, 1.84, NULL),
(81, 'Adenízia Silva', '1986-12-18', 37, 'Brasileira', 'Central', 'Profissional', NULL, 5, 1.87, NULL),
(82, 'Gabriela Martins', '1996-03-05', 28, 'Brasileira', 'Central', 'Profissional', NULL, 5, 1.85, NULL),
(83, 'Carol Gattaz', '1981-07-27', 42, 'Brasileira', 'Central', 'Profissional', NULL, 5, 1.92, NULL),
(84, 'Milka Marcília', '1994-07-18', 29, 'Brasileira', 'Central', 'Profissional', NULL, 5, 1.91, NULL),
(85, 'Suelen Pinto', '1987-10-04', 36, 'Brasileira', 'Líbero', 'Profissional', NULL, 5, 1.70, NULL);

-- Fluminense
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(86, 'Carolina Donatiello', '2004-05-23', 19, 'Brasileira', 'Levantadora', 'Profissional', NULL, 6, 1.80, NULL),
(87, 'Sofhia Lopes', '2001-01-31', 23, 'Brasileira', 'Levantadora', 'Profissional', NULL, 6, 1.84, NULL),
(88, 'Priscila Heldes', '1992-03-27', 31, 'Brasileira', 'Levantadora', 'Profissional', NULL, 6, 1.78, NULL),
(89, 'Ariane Helena Pinto', '1998-05-04', 26, 'Brasileira', 'Oposta', 'Profissional', NULL, 6, 1.92, NULL),
(90, 'Pietra Jukoski', '1998-04-16', 26, 'Brasileira', 'Ponteira', 'Profissional', NULL, 6, 1.87, NULL),
(91, 'Amanda Campos', '1988-08-16', 36, 'Brasileira', 'Ponteira', 'Profissional', NULL, 6, 1.82, 500),
(92, 'Stephany Gomes Morete', '2003-08-30', 21, 'Brasileira', 'Ponteira', 'Profissional', NULL, 6, 1.80, NULL),
(93, 'Massiel Matos', '1998-04-16', 26, 'Dominicana', 'Ponteira', 'Profissional', NULL, 6, 1.88, NULL),
(94, 'Tamara Abila', '1998-10-10', 25, 'Brasileira', 'Ponteira', 'Profissional', NULL, 6, 1.88, NULL),
(95, 'Vanessa Janke', '1991-03-08', 33, 'Brasileira', 'Ponteira', 'Profissional', NULL, 6, 1.87, NULL),
(96, 'Lara Nobre', '1989-02-11', 35, 'Brasileira', 'Central', 'Profissional', NULL, 6, 1.86, NULL),
(97, 'Daniela Seibt', '2000-04-17', 24, 'Brasileira', 'Central', 'Profissional', NULL, 6, 1.90, NULL),
(98, 'Lays Freitas', '1995-10-13', 28, 'Brasileira', 'Central', 'Profissional', NULL, 6, 1.87, NULL),
(99, 'Camila Monteiro', '1988-01-17', 36, 'Brasileira', 'Central', 'Profissional', NULL, 6, 1.88, NULL),
(100, 'Maila Ribeiro', '2005-05-06', 19, 'Brasileira', 'Líbero', 'Profissional', NULL, 6, 1.71, NULL),
(101, 'Letícia Moura', '2003-05-08', 21, 'Brasileira', 'Líbero', 'Profissional', NULL, 6, 1.61, NULL),
(102, 'Marcelle Silva', '2002-02-02', 22, 'Brasileira', 'Líbero', 'Profissional', NULL, 6, 1.68, NULL);

-- Minas
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(103, 'Fran Tomazoni', '1991-11-05', 32, 'Brasileira', 'Levantadora', 'Profissional', NULL, 7, 1.81, NULL),
(104, 'Giovana Guimarães', '2007-10-18', 17, 'Brasileira', 'Central', 'Profissional', NULL, 7, 1.92, NULL),
(105, 'Victoria Castelloes', '2006-05-30', 18, 'Brasileira', 'Ponteira', 'Profissional', NULL, 7, 1.86, NULL),
(106, 'Pri Daroit', '1988-08-10', 36, 'Brasileira', 'Ponteira', 'Profissional', NULL, 7, 1.84, 200),
(107, 'Amanda Marques', '1999-03-23', 25, 'Brasileira', 'Oposta', 'Profissional', NULL, 7, 1.85, NULL),
(108, 'Júlia Kudiess', '2003-03-02', 21, 'Brasileira', 'Central', 'Profissional', NULL, 7, 1.90, 1000),
(109, 'Kisy', '2000-01-28', 24, 'Brasileira', 'Oposta', 'Profissional', NULL, 7, 1.90, 500),
(110, 'Jenna Gray', '1998-02-28', 26, 'Estadunidense', 'Levantadora', 'Profissional', NULL, 7, 1.86, NULL),
(111, 'Celeste Plak', '1995-10-26', 29, 'Holandesa', 'Ponteira', 'Profissional', NULL, 7, 1.90, 1000),
(112, 'Larissa Fortes', '2004-08-16', 20, 'Brasileira', 'Líbero', 'Profissional', NULL, 7, 1.71, NULL),
(113, 'Kelly Gomes', '2001-10-21', 23, 'Brasileira', 'Central', 'Profissional', NULL, 7, 1.92, NULL),
(114, 'Glayce Kelly', '1998-01-28', 26, 'Brasileira', 'Ponteira', 'Profissional', NULL, 7, 1.87, NULL),
(115, 'Yonkaira Peña', '1993-05-10', 31, 'Dominicana', 'Ponteira', 'Profissional', NULL, 7, 1.90, 100),
(116, 'Rebeca Camile', '2004-04-21', 20, 'Brasileira', 'Central', 'Profissional', NULL, 7, 1.98, NULL),
(117, 'Kika', '1996-05-21', 28, 'Brasileira', 'Líbero', 'Profissional', NULL, 7, 1.66, NULL);

-- Osasco
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(118, 'Maria Clara Carvalhaes', '2003-09-28', 21, 'Brasileira', 'Levantadora', 'Profissional', NULL, 8, 1.75, NULL),
(119, 'Kenya Malachias', '2000-11-29', 23, 'Brasileira', 'Levantadora', 'Profissional', NULL, 8, 1.86, NULL),
(120, 'Giovana Gasparini', '1994-07-05', 30, 'Brasileira', 'Levantadora', 'Profissional', NULL, 8, 1.75, NULL),
(121, 'Tifanny Abreu', '1984-10-29', 39, 'Brasileira', 'Oposta', 'Profissional', NULL, 8, 1.92, NULL),
(122, 'Polina Rahimova', '1990-06-05', 34, 'Azerbaijana', 'Oposta', 'Profissional', NULL, 8, 1.98, 100),
(123, 'Natália Zilio', '1989-04-04', 35, 'Brasileira', 'Ponteira', 'Profissional', NULL, 8, 1.86, 100),
(124, 'Mayara Barcelos', '2001-04-26', 23, 'Brasileira', 'Ponteira', 'Profissional', NULL, 8, 1.80, NULL),
(125, 'Amanda Danielli', '1993-06-22', 31, 'Brasileira', 'Ponteira', 'Profissional', NULL, 8, 1.78, NULL),
(126, 'Valquíria Dullius', '1994-08-19', 30, 'Brasileira', 'Central', 'Profissional', NULL, 8, 1.89, NULL),
(127, 'Larissa Besen', '2001-03-02', 23, 'Brasileira', 'Central', 'Profissional', NULL, 8, 1.90, NULL),
(128, 'Geovana Freitas', '2000-05-20', 24, 'Brasileira', 'Central', 'Profissional', NULL, 8, 1.88, NULL),
(129, 'Callie Schwarzenbach', '1999-08-25', 25, 'Estadunidense', 'Central', 'Profissional', NULL, 8, 1.96, NULL),
(130, 'Silvana Papini', '1988-01-27', 36, 'Brasileira', 'Líbero', 'Profissional', NULL, 8, 1.78, 1000),
(131, 'Camila Brait', '1988-10-20', 36, 'Brasileira', 'Líbero', 'Profissional', NULL, 8, 1.70, 100);

-- Pinheiros
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(132, 'Amanda Sehn', '1998-07-16', 25, 'Brasileira', 'Levantadora', 'Profissional', NULL, 9, 182, NULL),
(133, 'Seleisa Elisaia', '1999-12-12', 24, 'Estadunidense', 'Levantadora', 'Profissional', NULL, 9, 178, NULL),
(134, 'Jackeline Moreno', '1999-12-30', 24, 'Brasileira', 'Levantadora', 'Profissional', NULL, 9, 174, NULL),
(135, 'Carolina Grossi', '2002-06-28', 21, 'Brasileira', 'Oposta', 'Profissional', NULL, 9, 192, NULL),
(136, 'Evelyn Carvalho', '2005-09-29', 18, 'Brasileira', 'Oposta', 'Profissional', NULL, 9, 186, NULL),
(137, 'Franciane Richter', '1997-10-12', 26, 'Brasileira', 'Oposta', 'Profissional', NULL, 9, 184, NULL),
(138, 'Grace McKale', '2000-07-10', 23, 'Canadense', 'Ponteira', 'Profissional', NULL, 9, 181, NULL),
(139, 'Karen Anjos', '2002-02-22', 21, 'Brasileira', 'Ponteira', 'Profissional', NULL, 9, 175, NULL),
(140, 'Talia Costa', '1997-07-10', 26, 'Brasileira', 'Ponteira', 'Profissional', NULL, 9, 178, NULL),
(141, 'Laura Perugini', '2006-02-02', 17, 'Brasileira', 'Ponteira', 'Profissional', NULL, 9, 178, NULL),
(142, 'Letícia Hage', '1990-09-09', 34, 'Brasileira', 'Central', 'Profissional', NULL, 9, 189, NULL),
(143, 'Thaina Kiarele Corrêa', '2003-09-30', 20, 'Brasileira', 'Central', 'Profissional', NULL, 9, 190, NULL),
(144, 'Claudia Dillon', '2000-10-17', 23, 'Estadunidense', 'Central', 'Profissional', NULL, 9, 188, NULL),
(145, 'Katryne Rodrigues', '2005-10-26', 18, 'Brasileira', 'Central', 'Profissional', NULL, 9, 190, NULL),
(146, 'Luana Kuskowski', '2006-04-18', 17, 'Brasileira', 'Central', 'Profissional', NULL, 9, 188, NULL),
(147, 'Juliana Perdigão', '1991-04-05', 32, 'Brasileira', 'Líbero', 'Profissional', NULL, 9, 161, 1000),
(148, 'Maria Eduarda David', '2004-08-12', 20, 'Brasileira', 'Líbero', 'Profissional', NULL, 9, 176, NULL);

-- Flamengo
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(149, 'Rosely Evaristo', '2001-03-06', 23, 'Brasileira', 'Levantadora', 'Profissional', NULL, 10, 1.75, NULL),
(150, 'Clara Rodrigues', '2005-03-24', 19, 'Brasileira', 'Levantadora', 'Profissional', NULL, 10, 1.71, NULL),
(151, 'Brie O\'Reilly', '1998-01-24', 26, 'Canadense', 'Levantadora', 'Profissional', NULL, 10, 1.84, NULL),
(152, 'Edinara Brancher', '1996-02-01', 28, 'Brasileira', 'Oposta', 'Profissional', NULL, 10, 1.86, NULL),
(153, 'Camila Mesquita', '2000-02-27', 24, 'Brasileira', 'Oposta', 'Profissional', NULL, 10, 1.81, NULL),
(154, 'Mikaela Hestmann', '2007-10-11', 17, 'Brasileira', 'Ponteira', 'Profissional', NULL, 10, 1.81, NULL),
(155, 'Michelle Pavão', '1986-10-30', 37, 'Brasileira', 'Ponteira', 'Profissional', NULL, 10, 1.79, 500),
(156, 'Karina Souza', '1998-11-30', 25, 'Brasileira', 'Ponteira', 'Profissional', NULL, 10, 1.78, NULL),
(157, 'Helena Wenk Hoengen', '2005-02-11', 19, 'Brasileira', 'Ponteira', 'Profissional', NULL, 10, 2.00, NULL),
(158, 'Adria Júlia Silva', '2004-08-11', 20, 'Brasileira', 'Central', 'Profissional', NULL, 10, 1.83, NULL),
(159, 'Julliana Gandra', '2004-04-15', 20, 'Brasileira', 'Central', 'Profissional', NULL, 10, 1.92, NULL),
(160, 'Lorena Viezel', '1999-07-21', 25, 'Brasileira', 'Central', 'Profissional', NULL, 10, 1.90, NULL),
(161, 'Jussara Tiago da Silva', '1996-02-12', 28, 'Brasileira', 'Central', 'Profissional', NULL, 10, 1.84, NULL),
(162, 'Victoria Stadler', '2004-04-15', 20, 'Brasileira', 'Líbero', 'Profissional', NULL, 10, 1.64, NULL),
(163, 'Laís Vasques', '1996-06-14', 28, 'Brasileira', 'Líbero', 'Profissional', NULL, 10, 1.72, 1000),
(164, 'Veronica Jones-Perry', '1997-01-20', 27, 'Estadunidense', 'Ponta', 'Profissional', NULL, 10, NULL, NULL),
(165, 'Juciely Barreto', '1980-12-18', 43, 'Brasileira', 'Central', 'Profissional', NULL, 10, NULL, NULL);


-- Bauru
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(166, 'Isis Simonetti', '2003-10-19', 20, 'Brasileira', 'Levantadora', 'Profissional', NULL, 11, 1.73, NULL),
(167, 'Danielle Lins', '1985-01-05', 39, 'Brasileira', 'Levantadora', 'Profissional', NULL, 11, 1.83, 100),
(168, 'Amanda Mutuano', '2005-05-28', 19, 'Brasileira', 'Levantadora', 'Profissional', NULL, 11, 1.79, NULL),
(170, 'Bruna Moraes', '1999-09-13', 25, 'Brasileira', 'Oposta', 'Profissional', NULL, 11, 1.92, NULL),
(171, 'Thais Souza', '1988-04-18', 36, 'Brasileira', 'Ponteira', 'Profissional', NULL, 11, 1.74, NULL),
(172, 'Nicole Fernandes', '2004-10-28', 19, 'Brasileira', 'Ponteira', 'Profissional', NULL, 11, 1.86, NULL),
(173, 'Isabella Rocha', '2005-01-11', 19, 'Brasileira', 'Ponteira', 'Profissional', NULL, 11, 1.87, NULL),
(174, 'Tais Sartori', '2005-01-12', 19, 'Brasileira', 'Ponteira', 'Profissional', NULL, 11, 1.82, NULL),
(175, 'Kasiely Clemente', '1993-12-06', 30, 'Brasileira', 'Ponteira', 'Profissional', NULL, 11, 1.84, 1000),
(176, 'Kátia Machado', '2002-10-04', 22, 'Brasileira', 'Central', 'Profissional', NULL, 11, 1.88, NULL),
(177, 'Mayhara Francini', '1989-04-09', 35, 'Brasileira', 'Central', 'Profissional', NULL, 11, 1.86, 1000),
(178, 'Ana Beatriz Correa', '1992-02-07', 32, 'Brasileira', 'Central', 'Profissional', NULL, 11, 1.88, 500),
(179, 'Mayany Souza', '1996-11-24', 27, 'Brasileira', 'Central', 'Profissional', NULL, 11, 1.87, 1000),
(180, 'Thays Oliveira', '2004-01-07', 20, 'Brasileira', 'Central', 'Profissional', NULL, 11, 1.89, NULL),
(181, 'Keyt Alves', '2000-01-08', 24, 'Brasileira', 'Líbero', 'Profissional', NULL, 11, 1.70, NULL),
(182, 'Léia Silva', '1985-03-01', 39, 'Brasileira', 'Líbero', 'Profissional', NULL, 11, 1.70, 200);

-- Maringá
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(183, 'Vivian Lima', '1999-10-14', 24, 'Brasileira', 'Levantadora', 'Profissional', NULL, 12, 1.82, NULL),
(184, 'Izabelly Siqueira', '2007-05-03', 16, 'Brasileira', 'Levantadora', 'Profissional', NULL, 12, NULL, NULL),
(185, 'Mikaella Costa', '1997-06-14', 26, 'Brasileira', 'Levantadora', 'Profissional', NULL, 12, 1.78, NULL),
(186, 'Jaqueline Schmitz', '2003-02-11', 20, 'Brasileira', 'Oposta', 'Profissional', NULL, 12, 1.87, NULL),
(187, 'Arianne Tolentino', '1989-11-13', 35, 'Brasileira', 'Oposta', 'Profissional', NULL, 12, 1.80, NULL),
(188, 'Natália Danielski', '1999-12-05', 24, 'Brasileira', 'Ponteira', 'Profissional', NULL, 12, 1.81, NULL),
(189, 'Gabriela Cândido', '1996-05-22', 27, 'Brasileira', 'Ponteira', 'Profissional', NULL, 12, 1.86, NULL),
(190, 'Lohayne Endres', '1999-05-27', 24, 'Brasileira', 'Ponteira', 'Profissional', NULL, 12, 1.81, NULL),
(191, 'Karoline Tormena', '1996-03-21', 27, 'Brasileira', 'Ponteira', 'Profissional', NULL, 12, 1.87, NULL),
(192, 'Larissa Gongra', '1991-07-07', 32, 'Brasileira', 'Central', 'Profissional', NULL, 12, 1.88, NULL),
(193, 'Andressa Gelenski', '1989-07-22', 35, 'Brasileira', 'Central', 'Profissional', NULL, 12, 1.94, NULL),
(194, 'Isabela Lessa Dos Santos', '2006-01-01', 17, 'Brasileira', 'Central', 'Profissional', NULL, 12, 1.80, NULL),
(195, 'Ana Paula Roessler', '2007-07-25', 16, 'Brasileira', 'Central', 'Profissional', NULL, 12, 1.87, NULL),
(196, 'Francynne Jacintho', '1993-07-16', 30, 'Brasileira', 'Central', 'Profissional', NULL, 12, 1.90, 1000),
(197, 'Anielly Fernandes', '2005-03-05', 18, 'Brasileira', 'Líbero', 'Profissional', NULL, 12, 1.68, NULL),
(198, 'Victoria Winckler', '2007-10-05', 16, 'Brasileira', 'Líbero', 'Profissional', NULL, 12, NULL, NULL),
(199, 'Paulina Souza', '1999-07-09', 24, 'Brasileira', 'Líbero', 'Profissional', NULL, 12, 1.76, NULL);

-- LIGA TURCA
-- seleção TURQUIA
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id,altura, ranking) VALUES
(200, 'Gizem Örge', '1993-04-26', 31, 'Turca', 'Líbero', 'Profissional', 42, 14, 1.70, 100),
(201, 'Cansu Özbay', '1996-10-17', 27, 'Turca', 'Levantador', 'Profissional', 42, 20, 1.82, 200),
(202, 'Melissa Vargas', '1999-10-16', 24, 'Turca', 'Oposta', 'Profissional', 42, 14, 1.94, 100),
(203, 'Hande Baladin', '1997-09-01', 27, 'Turca', 'Ponteira', 'Profissional', 42, 16, 1.90, 500),
(204, 'Asli Kalaç', '1995-12-13', 28, 'Turca', 'Central', 'Profissional', 42, 14, 1.85, 500),
(205, 'İlkin Aydin', '2000-05-01', 24, 'Turca', 'Ponteira', 'Profissional', 42, 13, 1.83, NULL),
(206, 'Zehra Gunes', '1999-07-07', 25, 'Turca', 'Central', 'Profissional', 42, 20, 1.98, 100),
(207, 'Meliha Diken', '1993-09-17', 31, 'Turca', 'Ponteira', 'Profissional', 42, 14, 1.89, 500),
(208, 'Elif Sahin', '2001-01-19', 23, 'Turca', 'Levantador', 'Profissional', 42, 16, 1.89, NULL),
(209, 'Ebrar Karakurt', '2000-01-17', 24, 'Turca', 'Ponteira', 'Profissional', 42, NULL, 1.96, 200),
(210, 'Beyza Arici', '1995-07-27', 29, 'Turca', 'Central', 'Profissional', 42, 16, 1.92, 1000),
(211, 'Derya Cebecioğlu', '2000-10-24', 23, 'Turca', 'Ponteira', 'Profissional', 42, 20, 1.82, 1000),
(212, 'Eda Erdem', '1987-06-22', 37, 'Turca', 'Central', 'Profissional', 42, 14, 1.88, 100);

-- Galatasaray
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(213, 'Britt Bongaerts', '1996-11-03', 27, 'Neerlandesa', 'Levantadora', 'Profissional', NULL, 13, 1.85, 1000),
(214, 'Aslıhan Kılıç', '1998-04-21', 25, 'Turca', 'Levantadora', 'Profissional', NULL, 13, 1.80, NULL),
(215, 'Alexia Căruțașu', '2003-06-10', 20, 'Romena', 'Oposta', 'Profissional', NULL, 13, 1.90, NULL),
(216, 'Yasemin Özel', '1998-05-13', 25, 'Turca', 'Oposta', 'Profissional', NULL, 13, 1.85, NULL),
(217, 'Sude Hacımustafaoğlu', '2002-03-25', 21, 'Turca', 'Ponteira', 'Profissional', NULL, 13, 1.82, NULL),
(218, 'Katarina Dangubić', '1999-09-12', 24, 'Sérvia', 'Ponteira', 'Profissional', NULL, 13, 1.82, 1000),
(219, 'Ann Kalandadze', '1998-12-10', 25, 'Georgiana', 'Ponteira', 'Profissional', NULL, 13, 1.86, NULL),
(220, 'Ceylan Arısan', '1994-01-01', 30, 'Turca', 'Central', 'Profissional', NULL, 13, 1.90, NULL),
(221, 'Yasemin Güveli', '1999-01-05', 24, 'Turca', 'Central', 'Profissional', NULL, 13, 1.90, 1000),
(222, 'Eline Timmerman', '1998-12-30', 25, 'Neerlandesa', 'Central', 'Profissional', NULL, 13, 1.92, NULL),
(223, 'Ayçin Akyol', '1999-06-15', 24, 'Turca', 'Central', 'Profissional', NULL, 13, 1.88, NULL),
(224, 'Eylül Yatgın', '1995-02-03', 28, 'Turca', 'Líbero', 'Profissional', NULL, 13, 1.70, NULL),
(225, 'Bihter Dumanoğlu', '1995-01-01', 28, 'Turca', 'Líbero', 'Profissional', NULL, 13, 1.75, NULL);


-- Fenerbahce 
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(226, 'Arelya Karasoy', '1996-12-14', 27, 'Turca', 'Levantadora', 'Profissional', NULL, 14, 1.81, NULL),
(227, 'Bojana Drča', '1988-03-29', 35, 'Sérvia', 'Levantadora', 'Profissional', NULL, 14, 1.86, 200),
(228, 'Magdalena Stysiak', '2000-12-03', 24, 'Polonesa', 'Oposta', 'Profissional', NULL, 14, 2.03, 1000),
(229, 'Arina Fedorovtseva', '2004-01-17', 20, 'Russa', 'Ponteira', 'Profissional', NULL, 14, 1.94, 500),
(230, 'Elitsa Vasileva-Atanasijević', '1990-05-13', 33, 'Bulgária', 'Ponteira', 'Profissional', NULL, 14, 1.90, 500),
(231, 'Liza Safronova', '2006-01-17', 18, 'Turca', 'Ponteira', 'Profissional', NULL, 14, 1.90, NULL),
(232, 'Hristina Vuchkova', '1991-10-01', 32, 'Bulgária', 'Central', 'Profissional', NULL, 14, 1.92, 500),
(233, 'Dicle Nur Babat', '1992-09-15', 31, 'Turca', 'Central', 'Profissional', NULL, 14, 1.91, 1000),
(234, 'Özlem Güven', '1997-10-01', 26, 'Turca', 'Líbero', 'Profissional', NULL, 14, 1.65, NULL);

-- Besiktas
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(235, 'Merve Tanıl', '1990-02-22', 34, 'Turca', 'Levantadora', 'Profissional', NULL, 15, 1.79, NULL),
(236, 'Dilay Özdemir', '2005-08-15', 19, 'Turca', 'Levantadora', 'Profissional', NULL, 15, 1.87, NULL),
(237, 'Jovana Brakočević-Canzian', '1988-03-05', 36, 'Sérvia', 'Oposta', 'Profissional', NULL, 15, 1.96, 100),
(238, 'Merve Nezir', '1997-12-16', 27, 'Turca', 'Oposta', 'Profissional', NULL, 15, 1.85, NULL),
(239, 'Hümay Topaloğlu Fırıncıoğlu', '1996-08-03', 28, 'Turca', 'Ponteira', 'Profissional', NULL, 15, 1.81, NULL),
(240, 'Saliha Şahin', '1998-11-05', 26, 'Turca', 'Ponteira', 'Profissional', NULL, 15, 1.86, NULL),
(241, 'Olivia Różański', '1997-06-05', 27, 'Polonesa', 'Ponteira', 'Profissional', NULL, 15, 1.85, NULL),
(242, 'Derya Güç', '1997-01-16', 27, 'Turca', 'Ponteira', 'Profissional', NULL, 15, 1.86, NULL),
(243, 'Begüm Kaçmaz', '2007-04-26', 17, 'Turca', 'Central', 'Profissional', NULL, 15, 1.88, NULL),
(244, 'Bengisu Aygün', '2004-11-25', 20, 'Turca', 'Central', 'Profissional', NULL, 15, 1.89, NULL),
(245, 'Emily Maglio', '1996-11-13', 28, 'Canadense', 'Central', 'Profissional', NULL, 15, 1.91, NULL),
(246, 'Beliz Başkır', '1998-12-26', 26, 'Turca', 'Central', 'Profissional', NULL, 15, 1.95, 200),
(247, 'Gizem Güreşen', '1987-01-14', 37, 'Turca', 'Líbero', 'Profissional', NULL, 15, 1.78, 200),
(248, 'Alara Altundağ', '1994-06-05', 30, 'Turca', 'Líbero', 'Profissional', NULL, 15, 1.60, NULL),
(249, 'Sude Gümüş', '2003-04-28', 21, 'Turca', 'Líbero', 'Profissional', NULL, 15, 1.65, NULL);

-- Eczacibasi
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(250, 'Naz Aydemir Akyol', '1990-08-14', 34, 'Turca', 'Levantadora', 'Profissional', NULL, 16, 1.86, 100),
(251, 'Tijana Bošković', '1997-03-08', 27, 'Sérvia', 'Oposta', 'Profissional', NULL, 16, 1.94, 100),
(252, 'Anna Nicoletti', '1996-01-03', 28, 'Italiana', 'Oposta', 'Profissional', NULL, 16, 1.93, NULL),
(253, 'Alexa Gray', '1994-08-07', 30, 'Canadense', 'Ponteira', 'Profissional', NULL, 16, 1.85, 1000),
(254, 'Yaprak Erkek', '2001-09-02', 23, 'Turca', 'Ponteira', 'Profissional', NULL, 16, 1.82, NULL),
(255, 'Kathryn Boden', '1998-10-16', 26, 'Estadunidense', 'Ponteira', 'Profissional', NULL, 16, 1.98, 500),
(256, 'Sinead Jack-Kısal', '1993-11-08', 31, 'Trinitária', 'Central', 'Profissional', NULL, 16, 1.90, 500),
(257, 'Dana Rettke', '1999-01-21', 25, 'Estadunidense', 'Central', 'Profissional', NULL, 16, 2.04, 1000),
(258, 'Jovana Stevanović', '1992-06-30', 32, 'Sérvia', 'Central', 'Profissional', NULL, 16, 1.92, 200),
(259, 'Tuna Aybüke Özel', '2002-04-26', 22, 'Turca', 'Líbero', 'Profissional', NULL, 16, 1.62, NULL),
(260, 'Simge Şebnem Aköz', '1991-04-23', 33, 'Turca', 'Líbero', 'Profissional', NULL, 16, 1.68, 500);

-- Bahcelievler
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(261, 'Simay Gazi', '1998-02-08', 26, 'Turca', 'Levantadora', 'Profissional', NULL, 17, 1.74, NULL),
(262, 'Buse Ünal', '1997-07-29', 27, 'Turca', 'Levantadora', 'Profissional', NULL, 17, 1.88, NULL),
(263, 'Elizabet Inneh', '1999-03-21', 25, 'Romena', 'Oposta', 'Profissional', NULL, 17, 1.92, NULL),
(264, 'Meryem Boz', '1988-02-03', 36, 'Turca', 'Oposta', 'Profissional', NULL, 17, 1.90, 500),
(265, 'Merve Tanyel', '1996-02-06', 28, 'Turca', 'Ponteira', 'Profissional', NULL, 17, 1.77, NULL),
(266, 'Polina Shemanova', '2001-01-21', 23, 'Russa', 'Ponteira', 'Profissional', NULL, 17, 1.83, NULL),
(267, 'Martyna Czyrniańska', '2003-10-13', 21, 'Polonesa', 'Ponteira', 'Profissional', NULL, 17, 1.91, NULL),
(268, 'Caitie Baird', '2001-02-01', 23, 'Estadunidense', 'Ponteira', 'Profissional', NULL, 17, 1.91, NULL),
(269, 'Özge Nur Çetiner', '1993-08-06', 31, 'Turca', 'Central', 'Profissional', NULL, 17, 1.93, NULL),
(270, 'Ceren Nur Domaç', '1999-07-16', 25, 'Turca', 'Central', 'Profissional', NULL, 17, 1.88, NULL),
(271, 'Begüm Hepkaptan', '1997-06-25', 27, 'Turca', 'Central', 'Profissional', NULL, 17, 1.82, NULL),
(272, 'Sabriye Gönülkırmaz Dikmen', '1994-05-17', 30, 'Turca', 'Central', 'Profissional', NULL, 17, 1.88, NULL),
(273, 'Sema Nur Doluca', '1996-07-10', 28, 'Turca', 'Líbero', 'Profissional', NULL, 17, 1.64, NULL),
(274, 'Merve Izbilir', '1997-12-01', 27, 'Turca', 'Líbero', 'Profissional', NULL, 17, 1.74, NULL);

-- KuzeyBoru Genclik
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(275, 'Buket Gülübay', '1999-02-28', 25, 'Turca', 'Levantadora', 'Profissional', NULL, 18, 1.84, 1000),
(276, 'Gamze Kılıç', '1993-12-20', 30, 'Turca', 'Levantadora', 'Profissional', NULL, 18, 1.79, 1000),
(277, 'Liray Akpınar', '2000-09-20', 23, 'Turca', 'Oposta', 'Profissional', NULL, 18, 1.88, NULL),
(278, 'Anna Lazareva', '1997-01-31', 27, 'Russa', 'Oposta', 'Profissional', NULL, 18, 1.90, 1000),
(279, 'Tran Thi Thanh Thuy', '1997-11-12', 26, 'Vietnamita', 'Ponteira', 'Profissional', NULL, 18, 1.90, 500),
(280, 'Güldeniz Önal', '1986-03-25', 38, 'Turca', 'Ponteira', 'Profissional', NULL, 18, 1.82, 500),
(281, 'Margarita Kurilo', '1993-06-21', 30, 'Russas', 'Ponteira', 'Profissional', NULL, 18, 1.85, NULL),
(282, 'Ayşe Çürük', '2001-10-04', 22, 'Turca', 'Ponteira', 'Profissional', NULL, 18, 1.82, NULL),
(283, 'Nasya Dimitrova', '1992-11-06', 30, 'Búlgara', 'Central', 'Profissional', NULL, 18, 1.89, 1000),
(284, 'Janset Cemre Erkul', '1997-01-12', 27, 'Turca', 'Central', 'Profissional', NULL, 18, 1.85, NULL),
(285, 'Büşra Güneş', '1997-08-08', 26, 'Turca', 'Central', 'Profissional', NULL, 18, 1.90, NULL),
(286, 'Yaren Işık', '2001-10-07', 22, 'Turca', 'Central', 'Profissional', NULL, 18, 1.86, NULL),
(287, 'Dilek Kınık', '1995-01-14', 29, 'Turca', 'Líbero', 'Profissional', NULL, 18, 1.69, NULL),
(288, 'Aleyna Sevim', '1997-11-01', 26, 'Turca', 'Líbero', 'Profissional', NULL, 18, 1.74, NULL);

-- THY
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(289, 'Özlem Tuğral', '2001-10-21', 22, 'Turca', 'Levantadora', 'Profissional', NULL, 19, 1.83, NULL),
(290, 'Çağla Çiçekoğlu', '1995-01-19', 28, 'Turca', 'Levantadora', 'Profissional', NULL, 19, 1.78, 1000),
(291, 'Selin Coşkun', '2005-09-21', 18, 'Turca', 'Oposta', 'Profissional', NULL, 19, 1.90, NULL),
(292, 'Anthí Vasilantonáki', '1996-04-09', 27, 'Grega', 'Oposta', 'Profissional', NULL, 19, 1.96, NULL),
(293, 'Tuğba Şenoğlu', '1998-02-02', 25, 'Turca', 'Ponteira', 'Profissional', NULL, 19, 1.84, 1000),
(294, 'Ada Germen Korkmaz', '1997-06-24', 26, 'Turca', 'Ponteira', 'Profissional', NULL, 19, 1.84, NULL),
(295, 'Neriman Özsoy', '1988-07-13', 35, 'Turca', 'Ponteira', 'Profissional', NULL, 19, 1.88, 200),
(296, 'Emine Arıcı', '1997-01-17', 26, 'Turca', 'Central', 'Profissional', NULL, 19, 1.92, NULL),
(297, 'Büşra Kılıçlı', '1990-07-16', 33, 'Turca', 'Central', 'Profissional', NULL, 19, 1.88, 500),
(298, 'Karmen Aksoy', '2003-07-08', 20, 'Turca', 'Central', 'Profissional', NULL, 19, 1.92, NULL),
(299, 'Melis Yılmaz', '1997-06-28', 26, 'Turca', 'Líbero', 'Profissional', NULL, 19, 1.67, NULL),
(300, 'Buse Kayacan', '1992-07-15', 31, 'Turca', 'Líbero', 'Profissional', NULL, 19, 1.76, NULL);

-- Vakifbank
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(301, 'Sıla Çalışkan', '1996-03-03', 27, 'Turca', 'Levantadora', 'Profissional', NULL, 20, 1.83, NULL),
(302, 'Selin Yener', '2009-07-28', 14, 'Turca', 'Levantadora', 'Profissional', NULL, 20, 1.77, NULL),
(303, 'Kiera Van Ryk', '1999-01-06', 24, 'Canadense', 'Oposta', 'Profissional', NULL, 20, 1.88, 1000),
(304, 'Kendall Kipp', '2000-12-12', 22, 'Estadunidense', 'Oposta', 'Profissional', NULL, 20, 1.98, NULL),
(305, 'Alexandra Frantti', '1996-12-21', 27, 'Estadunidense', 'Ponteira', 'Profissional', NULL, 20, 1.85, NULL),
(306, 'Marina Markova', '2001-06-25', 22, 'Russas', 'Ponteira', 'Profissional', NULL, 20, 1.99, NULL),
(307, 'Xinyue Yuan', '1994-02-02', 29, 'Chinesa', 'Central', 'Profissional', NULL, 20, 2.03, 200),
(308, 'Deniz Uyanık', '2001-01-27', 22, 'Turca', 'Central', 'Profissional', NULL, 20, 1.95, NULL),
(309, 'Bahar Akbay', '2006-01-02', 17, 'Turca', 'Central', 'Profissional', NULL, 20, 1.96, NULL),
(310, 'Ilayda Naz Gergef', '1996-02-27', 27, 'Turca', 'Líbero', 'Profissional', NULL, 20, 1.74, NULL),
(311, 'Ayça Aykaç', '1995-07-21', 28, 'Turca', 'Líbero', 'Profissional', NULL, 20, 1.76, 500),
(312, 'Aylin Sarıoğlu Acar', '1995-07-21', 28, 'Turca', 'Líbero', 'Profissional', NULL, 20, 1.69, 1000);


-- Sigorta Shop
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id) VALUES
(313, 'Burcu Yönder', '1997-01-19', 26, 'Turca', 'Levantadora', 'Profissional', NULL, 21),
(314, 'Lila Şengün', '2002-03-02', 21, 'Turca', 'Levantadora', 'Profissional', NULL, 21),
(315, 'Yaasmeen Bedart-Ghani', '1996-01-08', 27, 'Estadunidense', 'Oposta', 'Profissional', NULL, 21),
(316, 'Iman Ndiaye', '2001-01-13', 22, 'Francesa', 'Oposta', 'Profissional', NULL, 21),
(317, 'Elina Rodríguez', '1997-02-11', 26, 'Argentina', 'Ponteira', 'Profissional', NULL, 21),
(318, 'Julia Sangiacomo', '2001-11-01', 22, 'Estadunidense', 'Ponteira', 'Profissional', NULL, 21),
(319, 'Micaya White', '1998-09-20', 25, 'Estadunidense', 'Ponteira', 'Profissional', NULL, 21),
(320, 'Eslem Yılmaz', '2007-02-14', 16, 'Turca', 'Ponteira', 'Profissional', NULL, 21),
(321, 'Buket Yılmaz', '1994-01-19', 29, 'Turca', 'Ponteira', 'Profissional', NULL, 21),
(322, 'Fulden Ural', '1991-01-03', 32, 'Turca', 'Ponteira', 'Profissional', NULL, 21),
(323, 'Ergül Avcı', '1987-07-24', 36, 'Turca', 'Central', 'Profissional', NULL, 21),
(324, 'Hande Korkut', '1990-10-28', 33, 'Turca', 'Central', 'Profissional', NULL, 21),
(325, 'Deniz Nazlıcan Zengin', '2004-05-01', 19, 'Turca', 'Central', 'Profissional', NULL, 21),
(326, 'Zeynep Sena Usta', '1999-05-14', 24, 'Turca', 'Central', 'Profissional', NULL, 21),
(327, 'Derya Çayırgan', '1987-10-09', 36, 'Turca', 'Líbero', 'Profissional', NULL, 21),
(328, 'Dilara Yeşil', '1997-11-06', 26, 'Turca', 'Líbero', 'Profissional', NULL, 21);

-- Sariyer
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(329, 'Irem Cor', '1996-09-21', 27, 'Turca', 'Levantadora', 'Profissional', NULL, 22, 1.80, NULL),
(330, 'Arzum Tezcan', '1998-04-06', 25, 'Turca', 'Levantadora', 'Profissional', NULL, 22, 1.86, NULL),
(331, 'Tara Taubner', '2002-01-11', 21, 'Sérvia', 'Oposta', 'Profissional', NULL, 22, 1.88, NULL),
(332, 'Deniz Emrelli', '2003-01-01', 20, 'Turca', 'Oposta', 'Profissional', NULL, 22, 1.87, NULL),
(333, 'Ezgi Akyaldız', '1998-05-25', 25, 'Turca', 'Ponteira', 'Profissional', NULL, 22, 1.82, NULL),
(334, 'Hazal Nas Bahtiyar', NULL, NULL, 'Turca', 'Ponteira', 'Profissional', NULL, 22, NULL, NULL),
(335, 'Natalia Krotkova', '1992-07-01', 31, 'Russa', 'Ponteira', 'Profissional', NULL, 22, 1.85, 1000),
(336, 'Ceyda Aktaş', '1994-08-18', 29, 'Turca', 'Ponteira', 'Profissional', NULL, 22, 1.91, NULL),
(337, 'Eyll Durgun', '2005-02-04', 18, 'Turca', 'Ponteira', 'Profissional', NULL, 22, 1.89, NULL),
(338, 'Merve Çepni', '1996-08-19', 27, 'Turca', 'Central', 'Profissional', NULL, 22, 1.90, NULL),
(339, 'Ema Strunjak', '1999-09-24', 24, 'Croata', 'Central', 'Profissional', NULL, 22, 1.88, NULL),
(340, 'Kübra Evsen', '2008-09-16', 15, 'Turca', 'Central', 'Profissional', NULL, 22, 1.94, NULL),
(341, 'Rüzgar Menteşe', NULL, NULL, 'Turca', 'Central', 'Profissional', NULL, 22, NULL, NULL),
(342, 'Damla Gül Çakan', '2006-02-14', 17, 'Turca', 'Central', 'Profissional', NULL, 22, NULL, NULL),
(343, 'Fatma Nur Yilmaz', '1998-08-30', 25, 'Turca', 'Central', 'Profissional', NULL, 22, 1.85, NULL),
(344, 'Buse Melis Cılkız', '2000-10-09', 23, 'Turca', 'Líbero', 'Profissional', NULL, 22, 1.77, NULL),
(345, 'Selen Naz Selçuk', '2006-02-14', 17, 'Turca', 'Líbero', 'Profissional', NULL, 22, 1.70, NULL);

-- Zeren Spor
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(346, 'Hilal Kocakara', '2002-01-01', 22, 'Turca', 'Levantadora', 'Profissional', NULL, 23, 1.81, NULL),
(347, 'Ofelia Malinov', '1996-02-29', 28, 'Italiana', 'Levantadora', 'Profissional', NULL, 23, 1.84, 1000),
(348, 'Beren Yeşilırmak', '2005-06-01', 19, 'Turca', 'Oposta', 'Profissional', NULL, 23, 1.84, NULL),
(349, 'Brankica Mihajlović', '1991-04-13', 33, 'Sérvia', 'Oposta', 'Profissional', NULL, 23, 1.90, 100),
(350, 'Samanta Fabris', '1992-02-08', 32, 'Croata', 'Oposta', 'Profissional', NULL, 23, 1.90, 500),
(351, 'Şeyma Ercan Küçükaslan', '1994-07-05', 30, 'Turca', 'Ponteira', 'Profissional', NULL, 23, 1.87, 1000),
(352, 'Idil Naz Başcan', '1999-08-30', 25, 'Turca', 'Ponteira', 'Profissional', NULL, 23, 1.85, NULL),
(353, 'Bianka Ilayda Mumcular', '2006-06-18', 18, 'Turca', 'Ponteira', 'Profissional', NULL, 23, 1.90, NULL),
(354, 'Aleksandra Uzelac', '2004-07-27', 20, 'Sérvia', 'Ponteira', 'Profissional', NULL, 23, 1.88, NULL),
(355, 'Kübra Akman', '1994-10-13', 30, 'Turca', 'Central', 'Profissional', NULL, 23, 2.00, 200),
(356, 'Fatma Beyaz', '1995-04-16', 29, 'Turca', 'Central', 'Profissional', NULL, 23, 1.86, NULL),
(357, 'Elizaveta Kochurina', '2002-10-01', 22, 'Russa', 'Central', 'Profissional', NULL, 23, 1.90, NULL),
(358, 'Yasemin Yıldırım', '1995-01-28', 29, 'Turca', 'Central', 'Profissional', NULL, 23, 1.86, NULL),
(359, 'Gülçin Doğan', '1990-05-19', 34, 'Turca', 'Líbero', 'Profissional', NULL, 23, 1.69, NULL),
(360, 'Ceren Önal', '1991-02-03', 33, 'Turca', 'Líbero', 'Profissional', NULL, 23, 1.71, NULL);

-- Nilufer Bld
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(361, 'Nazlı Eda Kafkas', '2001-11-16', 22, 'Turca', 'Levantadora', 'Profissional', NULL, 24, 1.80, NULL),
(362, 'Selin Çalışkan', '2005-06-03', 19, 'Turca', 'Levantadora', 'Profissional', NULL, 24, 1.83, NULL),
(363, 'Julia Szczurowska', '2001-07-29', 23, 'Polonesa', 'Oposta', 'Profissional', NULL, 24, 1.90, NULL),
(364, 'Melisa Ege Bükmen', '2004-02-24', 20, 'Turca', 'Ponteira', 'Profissional', NULL, 24, 1.81, NULL),
(365, 'Ezgi Uludağ', '2001-11-27', 22, 'Turca', 'Ponteira', 'Profissional', NULL, 24, 1.83, NULL),
(366, 'Gizem Türegün', '2009-03-02', 15, 'Turca', 'Ponteira', 'Profissional', NULL, 24, 1.81, NULL),
(367, 'Bojana Milenković', '1996-01-01', 27, 'Sérvia', 'Ponteira', 'Profissional', NULL, 24, 1.85, 500), 
(368, 'Pilar Marie Victoria', '1994-01-01', 29, 'Porto-riquenha', 'Ponteira', 'Profissional', NULL, 24, NULL, NULL), 
(369, 'Firdevs Kiremitçi', '2005-10-24', 19, 'Turca', 'Central', 'Profissional', NULL, 24, 1.93, NULL),
(370, 'Bilge Paşa', '1992-08-18', 32, 'Turca', 'Central', 'Profissional', NULL, 24, 1.91, NULL),
(371, 'Hazal Selin Arifoğlu', '2006-11-13', 17, 'Turca', 'Central', 'Profissional', NULL, 24, 1.86, NULL),
(372, 'Sıla Zeynep Yaşar', '2003-06-11', 21, 'Turca', 'Central', 'Profissional', NULL, 24, 1.85, NULL),
(373, 'Selin Adalı', '1998-04-12', 26, 'Turca', 'Líbero', 'Profissional', NULL, 24, 1.70, NULL),
(374, 'Işıl Öz', '1995-10-11', 29, 'Turca', 'Líbero', 'Profissional', NULL, 24, 1.76, NULL);

-- Aras Kargo
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(375, 'Elif Kapar', '2004-03-29', 19, 'Turca', 'Levantadora', 'Profissional', NULL, 25, 1.78, NULL),
(376, 'Gizem Mısra Aşçı', '1998-01-26', 26, 'Turca', 'Levantadora', 'Profissional', NULL, 25, 1.80, NULL),
(377, 'Selen Köse', '1996-01-17', 28, 'Turca', 'Oposta', 'Profissional', NULL, 25, 1.86, NULL),
(378, 'Hanna Klimets', '1998-01-01', 26, 'Bielorrussa', 'Oposta', 'Profissional', NULL, 25, 1.86, NULL),
(379, 'Annie Mitchem', '1994-01-01', 30, 'Estadunidense', 'Ponteira', 'Profissional', NULL, 25, 1.92, NULL),
(380, 'Ayşegül Şenol', '1998-09-02', 26, 'Turca', 'Ponteira', 'Profissional', NULL, 25, 1.81, NULL),
(381, 'Bianka Buša', '1994-01-01', 30, 'Sérvia', 'Ponteira', 'Profissional', NULL, 25, 1.90, 500),
(382, 'Defne Kandemir', '2006-01-01', 18, 'Turca', 'Ponteira', 'Profissional', NULL, 25, 1.81, NULL),
(383, 'Yuliya Mirtskhulava', '1998-01-01', 26, 'Ucraniana', 'Ponteira', 'Profissional', NULL, 25, 1.76, NULL),
(384, 'Elisa Tuana Köse', '2002-01-01', 22, 'Turca', 'Ponteira', 'Profissional', NULL, 25, 1.82, NULL),
(385, 'Gülce Erdemir', '1998-01-01', 26, 'Turca', 'Central', 'Profissional', NULL, 25, 1.85, NULL),
(386, 'Merve Atlıer', '2000-01-01', 24, 'Turca', 'Central', 'Profissional', NULL, 25, 1.91, NULL),
(387, 'Ceren Karagöl', '1997-01-01', 27, 'Turca', 'Central', 'Profissional', NULL, 25, 1.85, NULL),
(388, 'Ecesu Soner', '2002-01-01', 22, 'Turca', 'Central', 'Profissional', NULL, 25, 1.88, NULL),
(389, 'Büşra Güneş', '1997-01-01', 27, 'Turca', 'Central', 'Profissional', NULL, 25, 1.90, NULL);

-- Aydin B.Sehir Bld
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(390, 'Nina Stojiljković', '1996-09-01', 27, 'Francesa', 'Levantadora', 'Profissional', NULL, 26, 1.78, NULL),
(391, 'Cansu Aydınoğulları', '1992-02-18', 32, 'Turca', 'Levantadora', 'Profissional', NULL, 26, 1.80, NULL),
(392, 'Aleksandra Rasińska', '1998-11-06', 25, 'Polonesa', 'Oposta', 'Profissional', NULL, 26, 1.90, NULL),
(393, 'Defne Başyolcu', '2006-08-09', 17, 'Turca', 'Oposta', 'Profissional', NULL, 26, 1.92, NULL),
(394, 'Merve Nur Öztürk', '2000-01-01', 23, 'Turca', 'Ponteira', 'Profissional', NULL, 26, 1.85, NULL),
(395, 'Fatma Şekerci', '1990-12-14', 33, 'Turca', 'Ponteira', 'Profissional', NULL, 26, 1.80, NULL),
(396, 'Ángela Leyva', '1996-11-22', 27, 'Peruana', 'Ponteira', 'Profissional', NULL, 26, 1.84, 500),
(397, 'Hilary Johnson', '1998-06-16', 26, 'Canadense', 'Ponteira', 'Profissional', NULL, 26, 1.86, NULL),
(398, 'Berka Buse Özden', '2004-04-16', 20, 'Turca', 'Central', 'Profissional', NULL, 26, 1.85, NULL),
(399, 'Zeynep Sude Demirel', '2000-11-27', 23, 'Turca', 'Central', 'Profissional', NULL, 26, 1.98, NULL),
(400, 'Seher Aksoy', '2003-03-13', 21, 'Turca', 'Central', 'Profissional', NULL, 26, 1.87, NULL),
(401, 'Gizem Çerağ Düzeltir', '1996-04-15', 27, 'Turca', 'Líbero', 'Profissional', NULL, 26, 1.70, NULL),
(402, 'Irem Nur Özsoy', '2003-06-13', 21, 'Turca', 'Líbero', 'Profissional', NULL, 26, 1.70, NULL);


-- LIGA ITALIA(A)
-- Seleção ITÁLIA
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(403, 'Marina Lubian', '2000-04-11', 24, 'Italiana', 'Central', 'Profissional', 43, 27, 1.93, 1000),
(404, 'Carlotta Cambi', '1996-05-28', 27, 'Italiana', 'Levantadora', 'Profissional', 43, 38, 1.78, NULL),
(405, 'Ilaria Spirito', '1994-02-20', 30, 'Italiana', 'Líbero', 'Profissional', 43, 31, 1.74, 1000),
(406, 'Mônica De Gennaro', '1987-01-08', 37, 'Italiana', 'Líbero', 'Profissional', 43, 27, 1.72, 100),
(407, 'Alessia Orro', '1998-07-18', 26, 'Italiana', 'Levantadora', 'Profissional', 43, 30, 1.80, 500),
(408, 'Caterina Bosetti', '1994-02-02', 30, 'Italiana', 'Ponteira', 'Profissional', 43, 20, 1.80, 200),
(409, 'Anna Danesi', '1996-04-20', 28, 'Italiana', 'Central', 'Profissional', 43, 30, 1.95, 200),
(410, 'Miriam Sylla', '1995-01-08', 29, 'Italiana', 'Ponteira', 'Profissional', 43, 30, 1.84, 200),
(411, 'Paola Egonu', '1998-12-18', 25, 'Italiana', 'Oposta', 'Profissional', 43, 30, 1.94, 100),
(412, 'Sarah Fahr', '2001-09-12', 23, 'Italiana', 'Central', 'Profissional', 43, 27, 1.91, 500),
(413, 'Loveth Omoruyi', '2002-08-25', 22, 'Italiana', 'Ponteira', 'Profissional', 43, 31, 1.85, 1000),
(414, 'Ekaterina Antropova', '2003-03-19', 21, 'Italiana', 'Oposta', 'Profissional', 43, 28, 2.02, 1000),
(415, 'Gaia Giovannini', '2001-12-17', 22, 'Italiana', 'Ponteira', 'Profissional', 43, 33, 1.82, NULL);

-- Conegliano
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(416, 'Nanami Seki', '1999-06-12', 25, 'Japonesa', 'Levantadora', 'Profissional', NULL, 27, 1.71, NULL),
(417, 'Joanna Wołosz', '1990-04-07', 34, 'Polonesa', 'Levantadora', 'Profissional', NULL, 27, 1.81, 200),
(418, 'Isabelle Haak', '1999-07-11', 25, 'Sueca', 'Oposta', 'Profissional', NULL, 27, 1.98, 100),
(419, 'Merit Adigwe', '2006-08-24', 18, 'Italiana', 'Oposta', 'Profissional', NULL, 27, 1.83, NULL),
(420, 'Ting Zhu', '1994-02-10', 30, 'Chinesa', 'Ponteira', 'Profissional', NULL, 27, 1.98, 100),
(421, 'Khalia Lanier', '1998-09-19', 26, 'Estadunidense', 'Ponteira', 'Profissional', NULL, 27, 1.90, NULL),
(422, 'Martyna Łukasik', '1999-11-26', 24, 'Polonesa', 'Ponteira', 'Profissional', NULL, 27, 1.89, 1000),
(423, 'Katja Eckl', '2003-05-06', 21, 'Italiana', 'Central', 'Profissional', NULL, 27, 1.88, NULL),
(424, 'Cristina Chirichella', '1994-02-10', 30, 'Italiana', 'Central', 'Profissional', NULL, 27, 1.95, 500),
(425, 'Anna Bardaro', '2005-04-29', 19, 'Italiana', 'Líbero', 'Profissional', NULL, 27, 1.77, NULL);

-- Scandicci
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(426, 'Maja Ognjenović', '1984-08-06', 40, 'Sérvia', 'Levantadora', 'Profissional', NULL, 28, 1.83, 100),
(427, 'Giulia Gennari', '1996-06-23', 28, 'Italiana', 'Levantadora', 'Profissional', NULL, 28, 1.84, NULL),
(428, 'Camilla Mingardi', '1997-10-19', 27, 'Italiana', 'Oposta', 'Profissional', NULL, 28, 1.82, NULL),
(429, 'Britt Herbots', '1999-09-24', 25, 'Belga', 'Ponteira', 'Profissional', NULL, 28, 1.82, 500),
(430, 'Lindsey Ruddins', '1997-11-05', 26, 'Estadunidense', 'Ponteira', 'Profissional', NULL, 28, 1.91, NULL),
(431, 'Anna Kotikova', '1999-10-13', 25, 'Russa', 'Ponteira', 'Profissional', NULL, 28, 1.86, NULL),
(432, 'Kara Bajema', '1998-03-24', 26, 'Estadunidense', 'Ponteira', 'Profissional', NULL, 28, 1.88, NULL),
(433, 'Emma Graziani', '2002-08-16', 22, 'Italiana', 'Central', 'Profissional', NULL, 28, 1.93, NULL),
(434, 'Linda Nwakalor', '2002-09-17', 22, 'Italiana', 'Central', 'Profissional', NULL, 28, 1.87, NULL),
(435, 'Indy Baijens', '2001-02-04', 23, 'Holandesa', 'Central', 'Profissional', NULL, 28, 1.93, NULL),
(436, 'Brenda Castillo', '1992-06-05', 32, 'Dominicana', 'Líbero', 'Profissional', NULL, 28, 1.67, 100),
(437, 'Beatrice Parrocchiale', '1995-12-26', 28, 'Italiana', 'Líbero', 'Profissional', NULL, 28, 1.67, 1000);

-- Bergamo
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(438, 'Roberta Carraro', '1998-11-17', 25, 'Italiana', 'Levantadora', 'Profissional', NULL, 29, 1.81, NULL),
(439, 'Ashley Evans', '1994-12-23', 29, 'Estadunidense', 'Levantadora', 'Profissional', NULL, 29, 1.90, NULL),
(440, 'Vittoria Piani', '1998-02-12', 26, 'Italiana', 'Oposta', 'Profissional', NULL, 29, 1.87, NULL),
(441, 'Virginia Adriano', '2004-07-22', 20, 'Italiana', 'Oposta', 'Profissional', NULL, 29, 1.96, NULL),
(442, 'Alessia Bolzonetti', '2002-02-15', 22, 'Italiana', 'Ponteira', 'Profissional', NULL, 29, 1.85, NULL),
(443, 'Michaela Mlejnková', '1996-07-26', 28, 'Checa', 'Ponteira', 'Profissional', NULL, 29, 1.85, 1000),
(444, 'Elissa Alcantara', '2001-01-11', 23, 'Porto-Riquenha', 'Ponteira', 'Profissional', NULL, 29, 1.87, NULL),
(445, 'Ailama Cesé', '2000-10-29', 24, 'Cubana', 'Ponteira', 'Profissional', NULL, 29, 1.90, NULL),
(446, 'Monique Strubbe', '2001-07-05', 23, 'Alemã', 'Central', 'Profissional', NULL, 29, 1.89, NULL),
(447, 'Alice Farina', '2000-06-26', 24, 'Italiana', 'Central', 'Profissional', NULL, 29, 1.89, NULL),
(448, 'Linda Manfredini', '2006-11-14', 17, 'Italiana', 'Central', 'Profissional', NULL, 29, 1.85, NULL),
(449, 'Maria Alessandra Crevenna', '2002-02-05', 22, 'Italiana', 'Central', 'Profissional', NULL, 29, NULL, NULL),
(450, 'Alessandra Mistretta', '2002-09-19', 22, 'Italiana', 'Líbero', 'Profissional', NULL, 29, 1.65, NULL),
(451, 'Martina Armini', '2006-11-28', 17, 'Italiana', 'Líbero', 'Profissional', NULL, 29, 1.75, NULL);

-- Vero Volley
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(452, 'Lampriní Konstantinídou', '1996-09-16', 28, 'Grega', 'Levantadora', 'Profissional', NULL, 30, 1.84, NULL),
(453, 'Radostina Marinova', '1998-10-02', 26, 'Búlgara', 'Oposta', 'Profissional', NULL, 30, 1.86, NULL),
(454, 'Héléna Cazaute', '1997-12-17', 26, 'Francesa', 'Ponteira', 'Profissional', NULL, 30, 1.84, 1000),
(455, 'Anastasia Guerra', '1996-10-15', 28, 'Italiana', 'Ponteira', 'Profissional', NULL, 30, 1.83, NULL),
(456, 'Elena Pietrini', '2000-03-17', 24, 'Italiana', 'Ponteira', 'Profissional', NULL, 30, 1.88, 1000),
(457, 'Nika Daalderop', '1998-11-29', 25, 'Holandesa', 'Ponteira', 'Profissional', NULL, 30, 1.89, 1000),
(458, 'Ludovica Guidi', '1992-12-17', 31, 'Italiana', 'Central', 'Profissional', NULL, 30, 1.85, NULL),
(459, 'Laura Heyrman', '1993-05-17', 31, 'Belga', 'Central', 'Profissional', NULL, 30, 1.88, 500),
(460, 'Hena Kurtagić', '2004-08-27', 20, 'Sérvia', 'Central', 'Profissional', NULL, 30, 1.95, 1000),
(461, 'Juliette Gelin', '2001-11-02', 22, 'Francesa', 'Líbero', 'Profissional', NULL, 30, 1.62, NULL),
(462, 'Satomi Fukudome', '1997-11-23', 26, 'Japonesa', 'Líbero', 'Profissional', NULL, 30, 1.62, NULL);

-- Chieri 76
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(463, 'Sarah Van Aalen', '2000-01-21', 24, 'Holandesa', 'Levantadora', 'Profissional', NULL, 31, 1.86, NULL),
(464, 'Gaia Guiducci', '2002-03-09', 22, 'Italiana', 'Levantadora', 'Profissional', NULL, 31, 1.78, NULL),
(465, 'Mártha Anthoúli', '2004-08-13', 20, 'Grega', 'Oposta', 'Profissional', NULL, 31, 2.04, NULL),
(466, 'Lucille Gicquel', '1997-11-13', 26, 'Francesa', 'Oposta', 'Profissional', NULL, 31, 1.89, NULL),
(467, 'Avery Skinner', '1999-04-25', 25, 'Estadunidense', 'Ponteira', 'Profissional', NULL, 31, 1.86, NULL),
(468, 'Anne Buijs', '1991-12-02', 32, 'Holandesa', 'Ponteira', 'Profissional', NULL, 31, 1.91, 100),
(469, 'Federica Carletti', '2000-03-14', 24, 'Italiana', 'Ponteira', 'Profissional', NULL, 31, 1.84, NULL),
(470, 'Anastasia Lyashko', '2005-02-17', 19, 'Russa', 'Central', 'Profissional', NULL, 31, 1.98, NULL),
(471, 'Sara Alberti', '1993-01-03', 31, 'Italiana', 'Central', 'Profissional', NULL, 31, 1.85, NULL),
(472, 'Katerina Zakchaiou', '1998-07-26', 26, 'Chypria', 'Central', 'Profissional', NULL, 31, 1.92, NULL),
(473, 'Anna Gray', '1996-11-15', 27, 'Italiana', 'Central', 'Profissional', NULL, 31, 1.87, NULL),
(474, 'Elena Rolando', '1999-07-16', 25, 'Italiana', 'Líbero', 'Profissional', NULL, 31, 1.65, NULL);

-- Novara
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(475, 'Francesca Bosio', '1997-08-07', 27, 'Italiana', 'Levantadora', 'Profissional', NULL, 32, 1.79, NULL),
(476, 'Valentina Bartolucci', '2003-05-20', 21, 'Italiana', 'Levantadora', 'Profissional', NULL, 32, 1.81, NULL),
(477, 'Taylor Mims', '1997-08-08', 27, 'Estadunidense', 'Oposta', 'Profissional', NULL, 32, 1.90, NULL),
(478, 'Vita Akimova', '2002-07-16', 22, 'Russa', 'Oposta', 'Profissional', NULL, 32, 1.97, NULL),
(479, 'Francesca Villani', '1995-05-30', 29, 'Italiana', 'Ponteira', 'Profissional', NULL, 32, 1.87, NULL),
(480, 'Lina Alsmeier', '2000-06-29', 24, 'Alemã', 'Ponteira', 'Profissional', NULL, 32, 1.89, NULL),
(481, 'Mayu Ishikawa', '2000-05-14', 24, 'Japonesa', 'Ponteira', 'Profissional', NULL, 32, 1.75, 1000),
(482, 'Hanna Orthmann', '1998-10-03', 26, 'Alemã', 'Ponteira', 'Profissional', NULL, 32, 1.88, NULL),
(483, 'Tatiana Tolok', '2003-03-21', 21, 'Russa', 'Ponteira', 'Profissional', NULL, 32, 1.92, NULL),
(484, 'Sara Bonifacio', '1996-07-03', 28, 'Italiana', 'Central', 'Profissional', NULL, 32, 1.86, 1000),
(485, 'Maja Aleksić', '1997-06-06', 27, 'Sérvia', 'Central', 'Profissional', NULL, 32, 1.88, 500),
(486, 'Alessia Mazzaro', '1998-09-19', 26, 'Italiana', 'Central', 'Profissional', NULL, 32, 1.84, NULL),
(487, 'Federica Squarcini', '2000-09-24', 24, 'Italiana', 'Central', 'Profissional', NULL, 32, 1.83, NULL),
(488, 'Giulia De Nardi', '1994-04-23', 30, 'Italiana', 'Líbero', 'Profissional', NULL, 32, 1.71, NULL),
(489, 'Eleonora Fersino', '2000-01-24', 24, 'Italiana', 'Líbero', 'Profissional', NULL, 32, 1.69, NULL),
(490, 'Anja Mazej', '2000-01-04', 24, 'Eslovena', 'Líbero', 'Profissional', NULL, 32, 1.70, NULL);

-- Vallefoglia
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(491, 'Pia Kästner', '1998-06-29', 26, 'Alemã', 'Levantadora', 'Profissional', NULL, 33, 1.82, NULL),
(492, 'Rada Perović', '2001-04-13', 23, 'Sérvia', 'Levantadora', 'Profissional', NULL, 33, 1.82, NULL),
(493, 'Viktoriia Kobzar', '2004-10-16', 19, 'Russa', 'Levantadora', 'Profissional', NULL, 33, 1.84, NULL),
(494, 'Erblira Bici', '1995-06-27', 29, 'Albanesa', 'Oposta', 'Profissional', NULL, 33, 1.86, NULL),
(495, 'Maja Storck', '1998-10-08', 26, 'Suíça', 'Oposta', 'Profissional', NULL, 33, 1.86, 1000),
(496, 'Alice Degradi', '1996-04-10', 28, 'Italiana', 'Ponteira', 'Profissional', NULL, 33, 1.82, NULL),
(497, 'Francesca Michieletto', '1997-09-10', 26, 'Italiana', 'Ponteira', 'Profissional', NULL, 33, 1.82, NULL),
(498, 'Simone Lee-Wank', '1996-10-07', 27, 'Estadunidense', 'Ponteira', 'Profissional', NULL, 33, 1.88, 1000),
(499, 'Sonia Candi', '1993-11-08', 30, 'Italiana', 'Central', 'Profissional', NULL, 33, 1.87, NULL),
(500, 'Alice Torcolacci', '2000-02-27', 24, 'Italiana', 'Central', 'Profissional', NULL, 33, 1.82, NULL),
(501, 'Camilla Weitzel', '2000-06-11', 24, 'Alemã', 'Central', 'Profissional', NULL, 33, 1.95, NULL),
(502, 'Alice Feduzzi', '2006-09-14', 18, 'Italiana', 'Líbero', 'Profissional', NULL, 33, NULL, NULL),
(503, 'Chiara De Bortoli', '1997-07-28', 26, 'Italiana', 'Líbero', 'Profissional', NULL, 33, 1.76, NULL);

-- Roma
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(504, 'Slađana Mirković', '1995-10-07', 28, 'Sérvia', 'Levantadora', 'Profissional', NULL, 34, 1.85, 1000),
(505, 'Margherita Muzi', '1994-01-25', 30, 'Italiana', 'Levantadora', 'Profissional', NULL, 34, 1.82, NULL),
(506, 'Gabriela Orvošová', '2001-01-28', 23, 'Chéquia', 'Oposta', 'Profissional', NULL, 34, 1.91, NULL),
(507, 'Claudia Provaroni', '1998-05-14', 25, 'Italiana', 'Ponteira', 'Profissional', NULL, 34, 1.81, NULL),
(508, 'Wilma Salas', '1991-03-09', 33, 'Cubana', 'Ponteira', 'Profissional', NULL, 34, 1.91, NULL),
(509, 'Amélie Rotar', '2000-10-24', 23, 'Francesa', 'Ponteira', 'Profissional', NULL, 34, 1.88, NULL),
(510, 'Anna Adelusi', '2003-06-10', 20, 'Italiana', 'Ponteira', 'Profissional', NULL, 34, 1.86, NULL),
(511, 'Giulia Melli', '1998-01-08', 26, 'Italiana', 'Ponteira', 'Profissional', NULL, 34, 1.85, NULL),
(512, 'Michela Ciarrocchi', '1999-12-16', 24, 'Italiana', 'Central', 'Profissional', NULL, 34, 1.85, NULL),
(513, 'Michela Rucli', '1996-05-01', 27, 'Italiana', 'Central', 'Profissional', NULL, 34, 1.85, NULL),
(514, 'Marie Schölzel', '1997-08-01', 26, 'Alemã', 'Central', 'Profissional', NULL, 34, 1.90, NULL),
(515, 'Veronica Costantini', '2003-03-23', 20, 'Italiana', 'Central', 'Profissional', NULL, 34, 1.91, NULL),
(516, 'Luna Cicola', '2004-01-15', 20, 'Italiana', 'Líbero', 'Profissional', NULL, 34, 1.68, NULL),
(517, 'Giorgia Zannoni', '1998-02-11', 25, 'Italiana', 'Líbero', 'Profissional', NULL, 34, 1.75, NULL);

-- Firenze
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(518, 'Ilaria Battistoni', '1996-04-22', 27, 'Italiana', 'Levantadora', 'Profissional', NULL, 35, 1.74, NULL),
(519, 'Beatrice Agrifoglio', '1994-01-01', 30, 'Italiana', 'Levantadora', 'Profissional', NULL, 35, 1.78, NULL),
(520, 'Marta Bechis', '1989-09-04', 35, 'Italiana', 'Levantadora', 'Profissional', NULL, 35, 1.81, NULL),
(521, 'Adhuoljok Malual', '2000-11-14', 23, 'Italiana', 'Oposta', 'Profissional', NULL, 35, 1.90, NULL),
(522, 'Marina Giacomello', '2004-04-01', 20, 'Italiana', 'Oposta', 'Profissional', NULL, 35, 1.90, NULL),
(523, 'Bianca Lapini', '2002-07-13', 22, 'Italiana', 'Ponteira', 'Profissional', NULL, 35, 1.83, NULL),
(524, 'Stella Nervini', '2003-09-10', 21, 'Italiana', 'Ponteira', 'Profissional', NULL, 35, 1.84, NULL),
(525, 'Emma Cagnin', '2002-06-26', 22, 'Italiana', 'Ponteira', 'Profissional', NULL, 35, 1.86, NULL),
(526, 'Hanna Davyskiba', '2000-02-08', 24, 'Bielorrussa', 'Ponteira', 'Profissional', NULL, 35, 1.88, NULL),
(527, 'Nausica Acciarri', '2004-09-25', 20, 'Italiana', 'Central', 'Profissional', NULL, 35, 1.86, NULL),
(528, 'Božana Butigan', '2000-08-19', 23, 'Croata', 'Central', 'Profissional', NULL, 35, 1.90, 1000),
(529, 'Giulia Mancini', '1998-05-23', 25, 'Italiana', 'Central', 'Profissional', NULL, 35, 1.84, NULL),
(530, 'Giulia Leonardi', '1987-12-01', 36, 'Italiana', 'Líbero', 'Profissional', NULL, 35, 1.64, 1000),
(531, 'Manuela Ribechi', '2004-02-15', 20, 'Italiana', 'Líbero', 'Profissional', NULL, 35, 1.75, NULL);

-- Perugia
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(532, 'Giulia Orlandi', '2004-02-13', 20, 'Italiana', 'Levantadora', 'Profissional', NULL, 36, 1.82, NULL),
(533, 'Maria Irene Ricci', '1996-02-17', 28, 'Italiana', 'Levantadora', 'Profissional', NULL, 36, 1.81, NULL),
(534, 'Anett Németh', '1999-12-13', 24, 'Húngara', 'Oposta', 'Profissional', NULL, 36, 1.88, NULL),
(535, 'Rachele Rastelli', '1999-06-22', 24, 'Italiana', 'Oposta', 'Profissional', NULL, 36, 1.92, NULL),
(536, 'Gaia Traballi', '1997-02-05', 27, 'Italiana', 'Ponteira', 'Profissional', NULL, 36, 1.84, NULL),
(537, 'Carolina Pecorari', '2003-01-07', 21, 'Italiana', 'Ponteira', 'Profissional', NULL, 36, 1.85, NULL),
(538, 'Beatrice Gardini', '2003-04-01', 20, 'Italiana', 'Ponteira', 'Profissional', NULL, 36, 1.85, NULL),
(539, 'Adelina Budăi-Ungureanu', '2000-07-29', 23, 'Romena', 'Ponteira', 'Profissional', NULL, 36, 1.87, NULL),
(540, 'Aleksandra Gryka', '2000-02-06', 24, 'Polonesa', 'Central', 'Profissional', NULL, 36, 1.90, NULL),
(541, 'Benedetta Bartolini', '1999-03-05', 24, 'Italiana', 'Central', 'Profissional', NULL, 36, 1.85, NULL),
(542, 'Asia Cogliandro', '1996-01-12', 28, 'Italiana', 'Central', 'Profissional', NULL, 36, 1.84, NULL),
(543, 'Anastasia Cekulaev', '2003-07-01', 20, 'Alemã', 'Central', 'Profissional', NULL, 36, 1.91, NULL),
(544, 'Imma Sirressi', '1990-05-19', 33, 'Italiana', 'Líbero', 'Profissional', NULL, 36, 1.75, NULL),
(545, 'Stefania Recchia', '2005-07-14', 18, 'Italiana', 'Líbero', 'Profissional', NULL, 36, 1.62, NULL);

-- UYBA Busto Arsizio
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(546, 'Jennifer Boldini', '1999-04-06', 25, 'Italiana', 'Levantadora', 'Profissional', NULL, 37, 1.87, NULL),
(547, 'Francesca Scola', '2001-09-15', 22, 'Italiana', 'Levantadora', 'Profissional', NULL, 37, 1.83, NULL),
(548, 'Josephine Obossa', '1999-05-20', 24, 'Italiana', 'Oposta', 'Profissional', NULL, 37, 1.83, NULL),
(549, 'Giorgia Frosini', '2002-11-29', 21, 'Italiana', 'Oposta', 'Profissional', NULL, 37, 1.91, NULL),
(550, 'Pleun Van der Pijl', '2003-01-11', 21, 'Holandesa', 'Ponteira', 'Profissional', NULL, 37, 1.96, NULL),
(551, 'Rebecca Piva', '2001-05-01', 23, 'Italiana', 'Ponteira', 'Profissional', NULL, 37, 1.83, NULL),
(552, 'Ana Karina Olaya', '2002-09-13', 21, 'Colombiana', 'Ponteira', 'Profissional', NULL, 37, 1.87, NULL),
(553, 'Laura Dervisaj-Künzler', '1996-12-25', 27, 'Suíça', 'Ponteira', 'Profissional', NULL, 37, 1.89, NULL),
(554, 'Skyy Howard', '2001-06-25', 22, 'Estadunidense', 'Central', 'Profissional', NULL, 37, 1.91, NULL),
(555, 'Silke Van Avermaet', '1999-06-02', 24, 'Bélgica', 'Central', 'Profissional', NULL, 37, 1.92, NULL),
(556, 'Giuditta Lualdi', '1995-09-13', 29, 'Italiana', 'Central', 'Profissional', NULL, 37, 1.86, NULL),
(557, 'Benedetta Sartori', '2001-04-14', 23, 'Italiana', 'Central', 'Profissional', NULL, 37, 1.84, NULL),
(558, 'Federica Pelloni', '2002-12-26', 21, 'Italiana', 'Líbero', 'Profissional', NULL, 37, 1.72, NULL),
(559, 'Martina Morandi', '2002-01-16', 21, 'Italiana', 'Líbero', 'Profissional', NULL, 37, 1.75, NULL);

-- Pinerolo
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(560, 'Giorgia Avenia', '1994-04-04', 30, 'Italiana', 'Levantadora', 'Profissional', NULL, 38, 1.80, NULL),
(561, 'Malwina Smarzek', '1996-06-03', 28, 'Polonesa', 'Oposta', 'Profissional', NULL, 38, 1.91, NULL),
(562, 'Thalia Moreno', '2002-04-10', 22, 'Cubana', 'Oposta', 'Profissional', NULL, 38, 1.89, NULL),
(563, 'Indre Sorokaitė', '1988-07-02', 36, 'Lituana', 'Ponteira', 'Profissional', NULL, 38, 1.83, NULL),
(564, 'Silvia Bussoli', '1993-11-22', 30, 'Italiana', 'Ponteira', 'Profissional', NULL, 38, 1.83, NULL),
(565, 'Sofia D\'Odorico', '1997-01-06', 27, 'Italiana', 'Ponteira', 'Profissional', NULL, 38, 1.86, NULL),
(566, 'Martina Bracchi', '2002-04-25', 22, 'Italiana', 'Ponteira', 'Profissional', NULL, 38, 1.82, NULL),
(567, 'Elena Perinelli', '1995-06-27', 29, 'Italiana', 'Ponteira', 'Profissional', NULL, 38, 1.82, NULL),
(568, 'Francesca Cosi', '2000-03-27', 24, 'Italiana', 'Central', 'Profissional', NULL, 38, 1.86, NULL),
(569, 'Amandha Marine Sylves', '2000-12-29', 23, 'Francesa', 'Central', 'Profissional', NULL, 38, 1.96, NULL),
(570, 'Léandra Olinga-Andela', '1997-08-12', 27, 'Francesa', 'Central', 'Profissional', NULL, 38, 1.85, NULL),
(571, 'Yasmina Akrari', '1993-08-31', 30, 'Italiana', 'Central', 'Profissional', NULL, 38, 1.86, NULL),
(572, 'Giada Di Mario', '2004-09-04', 20, 'Italiana', 'Líbero', 'Profissional', NULL, 38, 1.80, NULL),
(573, 'Ilenia Moro', '1999-02-05', 25, 'Italiana', 'Líbero', 'Profissional', NULL, 38, 1.78, NULL);

-- Talmassons
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(574, 'Rebecca Feruglio', '2006-02-24', 18, 'Italiana', 'Levantadora', 'Profissional', NULL, 39, 1.76, NULL),
(575, 'Chidera Eze Blessing', '2003-09-02', 21, 'Italiana', 'Levantadora', 'Profissional', NULL, 39, 1.80, NULL),
(576, 'Anastasiia Kraiduba', '1995-04-15', 29, 'Ucraniana', 'Oposta', 'Profissional', NULL, 39, 1.94, NULL),
(577, 'Alice Pamio', '1998-01-15', 26, 'Italiana', 'Ponteira', 'Profissional', NULL, 39, 1.81, NULL),
(578, 'Nicole Piomboni', '2005-11-22', 18, 'Italiana', 'Ponteira', 'Profissional', NULL, 39, 1.85, NULL),
(579, 'Yana Shcherban', '1989-09-06', 35, 'Russas', 'Ponteira', 'Profissional', NULL, 39, 1.87, NULL),
(580, 'Ólga Strántzali', '1996-01-12', 28, 'Grega', 'Ponteira', 'Profissional', NULL, 39, 1.85, NULL),
(581, 'Bianca Bucciarelli', '2001-06-02', 23, 'Italiana', 'Ponteira', 'Profissional', NULL, 39, 1.85, NULL),
(582, 'Jovana Kocić', '1998-02-24', 26, 'Sérvia', 'Central', 'Profissional', NULL, 39, 1.90, NULL),
(583, 'Islam Gannar', '2004-07-03', 20, 'Italiana', 'Central', 'Profissional', NULL, 39, 1.89, NULL),
(584, 'Alexandra Botezat', '1998-08-03', 26, 'Italiana', 'Central', 'Profissional', NULL, 39, 1.98, NULL),
(585, 'Sofia Gazzola', '2006-08-08', 18, 'Italiana', 'Líbero', 'Profissional', NULL, 39, 1.57, NULL),
(586, 'Martina Ferrara', '1999-01-28', 25, 'Italiana', 'Líbero', 'Profissional', NULL, 39, 1.68, NULL);

-- Cuneo
INSERT INTO Jogadora (id, nome, nascimento, idade, nacionalidade, posicao, tipo, selecao, time_id, altura, ranking) VALUES
(587, 'Alice Turco', '2000-02-04', 24, 'Italiana', 'Levantadora', 'Profissional', NULL, 40, 1.80, NULL),
(588, 'Noemi Signorile', '1990-02-15', 34, 'Italiana', 'Levantadora', 'Profissional', NULL, 40, 1.83, NULL),
(589, 'Ana Bjelica', '1992-04-03', 32, 'Sérvia', 'Oposta', 'Profissional', NULL, 40, 1.90, NULL),
(590, 'Dayami Sánchez', '1994-03-14', 30, 'Cubana', 'Oposta', 'Profissional', NULL, 40, 1.90, NULL),
(591, 'María Margarita Martínez', '1995-05-19', 29, 'Colombiana', 'Ponteira', 'Profissional', NULL, 40, 1.80, NULL),
(592, 'Alexandra Lazić', '1994-09-24', 30, 'Sueca', 'Ponteira', 'Profissional', NULL, 40, 1.88, NULL),
(593, 'Efrosyni Bakodimou', '2000-01-25', 24, 'Gregas', 'Ponteira', 'Profissional', NULL, 40, 1.81, NULL),
(594, 'Anastasiia Kapralova', '2004-04-24', 20, 'Russas', 'Ponteira', 'Profissional', NULL, 40, 1.84, NULL),
(595, 'Alessia Bisegna', '2003-04-09', 21, 'Italiana', 'Central', 'Profissional', NULL, 40, 1.81, NULL),
(596, 'Valentina Colombo', '2003-12-12', 20, 'Italiana', 'Central', 'Profissional', NULL, 40, 1.85, NULL),
(597, 'Tessa Polder', '1997-10-10', 27, 'Países Baixos', 'Central', 'Profissional', NULL, 40, 1.89, NULL),
(598, 'Agnese Cecconello', '1999-11-06', 24, 'Italiana', 'Central', 'Profissional', NULL, 40, 1.90, NULL),
(599, 'Sara Panetoni', '2000-05-06', 24, 'Italiana', 'Líbero', 'Profissional', NULL, 40, 1.76, NULL),
(600, 'Rebecca Scialanca', '2005-05-29', 19, 'Italiana', 'Líbero', 'Profissional', NULL, 40, 1.65, NULL);

-- Tabela Técnico
CREATE TABLE Tecnico (
id INT AUTO_INCREMENT PRIMARY KEY,
time_id INT DEFAULT NULL,
selecao_id INT DEFAULT NULL,
nome VARCHAR(100),
nacionalidade VARCHAR(50),
FOREIGN KEY (time_id) REFERENCES Time(id),
FOREIGN KEY (selecao_id) REFERENCES Selecao(id)
);

-- 3 nacionalidades
-- LIGA BRASIL(A)
INSERT INTO Tecnico (id, time_id, nome, nacionalidade) VALUES (1, 1, "Mauricio Tomas", "Brasileiro");
INSERT INTO Tecnico (id, time_id, nome, nacionalidade) VALUES (2, 2, "Wagner Luiz Coppini Fernandes (Wagão)", "Brasileiro");
INSERT INTO Tecnico (id, time_id, nome, nacionalidade) VALUES (3, 3, "Gabriel Leite", "Brasileiro");
INSERT INTO Tecnico (id, time_id, nome, nacionalidade) VALUES (4, 4, "Spencer Lee", "Brasileiro");
INSERT INTO Tecnico (id, time_id, nome, nacionalidade) VALUES (5, 5, "Marcos Miranda", "Brasileiro");
INSERT INTO Tecnico (id, time_id, nome, nacionalidade) VALUES (6, 6, "Guilherme Schmitz", "Brasileiro");
INSERT INTO Tecnico (id, time_id, nome, nacionalidade) VALUES (7, 7, "Nicola Negro", "Italiano");
INSERT INTO Tecnico (id, time_id, nome, nacionalidade) VALUES (8, 8, "Luizomar de Moura", "Brasileiro");
INSERT INTO Tecnico (id, time_id, nome, nacionalidade) VALUES (9, 9, "Duda Nunes", "Brasileiro");
INSERT INTO Tecnico (id, time_id, nome, nacionalidade) VALUES (10, 10, "Bernardinho", "Brasileiro");
INSERT INTO Tecnico (id, time_id, nome, nacionalidade) VALUES (11, 11, "Henrique Modenesi", "Brasileiro");
INSERT INTO Tecnico (id, time_id, nome, nacionalidade) VALUES (12, 12, "Aldori Gaudêncio", "Brasileiro");

-- LIGA TURCA(A)
INSERT INTO Tecnico (id, time_id, nome, nacionalidade) VALUES (13, 13,"Guilhermo Hernandez", "Espanhol");
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (14, 14, "Marco Fenoglio", "Italiano");
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (15, 15, "Uğur Ülkü", "Turco");
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (16, 16, "Ferhat Akbas", "Turco");
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (17, 17, "Kenan Uzun", "Turco");
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (18, 18, "Mehmet Bedestenlioglu", "Turco");
INSERT INTO Tecnico VALUES (19, 19, 41, "José Roberto Guimarães", "Brasileiro");
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (20, 20, "Giovanni Guidetti", "Italiano");
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (21, 21, "Cihan Cintay", "Turco");
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (22, 22, "Ali Kayaoğlu", "Turco");
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (23, 23, "Stevan Ljubičić", "Servio");
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (24, 24, "Haluk Korkmaz", "Turco");
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (25, 25, "Suphi Doğancı", "Turco");
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (26, 26, "Alper Hamurcu", "Turco");
INSERT INTO Tecnico VALUES (27, 27, 42, "Daniele santarelli", "Italiano");

-- LIGA ITALIA(A)
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (28, 28, "Marco Gaspari", "Italiano");
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (29, 29, "Carlo Parisi", "Italiano");
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (30, 30, "Stefano Lavarini", "Italiano");
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (31, 31, "Giulio Bregoli", "Italiano");
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (32, 32, "Lorenzo Bernardi", "Italiano");
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (33, 33, "Andrea Pistola", "Italiano");
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (34, 34, "Giuseppe Cuccarini", "Italiano");
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (35, 35, "Simone Bendandi", "Italiano");
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (36, 36, "Davide Mazzanti", "Italiano");
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (37, 37, "Giovanni Caprara", "Italiano");
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (38, 38, "Michele Marchiaro", "Italiano");
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (39, 39, "Leonardo Barbieri", "Italiano");
INSERT INTO Tecnico  (id, time_id, nome, nacionalidade) VALUES (40, 40, "Lorenzo Pintus ", "Italiano");
INSERT INTO Tecnico  (id, selecao_id, nome, nacionalidade) VALUES (41, 43, "Julio Velasco", "Italiano");

-- Tabela Medalhas
CREATE TABLE MedalhasT (
time_id INT DEFAULT NULL,
selecao_id INT DEFAULT NULL,
tipo VARCHAR(50),
qntd int,
FOREIGN KEY (time_id) REFERENCES Time(id),
FOREIGN KEY (selecao_id) REFERENCES Selecao(id)
);
-- 3 nacionalidades
-- LIGA BRASIL(A)
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (1, "Ouro", 3);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (1, "Prata", 3);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (1, "Bronze", 2);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (2, "Ouro", 2);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (2, "Prata", 0);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (2, "Bronze", 0);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (3, "Ouro", 25);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (3, "Prata", 3);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (3, "Bronze", 1);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (4, "Ouro", 0);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (4, "Prata", 12);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (4, "Bronze", 1);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (5, "Ouro", 21);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (5, "Prata", 22);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (5, "Bronze", 7);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (6, "Ouro", 40);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (6, "Prata", 12);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (6, "Bronze", 2);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (7, "Ouro", 31);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (7, "Prata", 21);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (7, "Bronze", 10);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (8, "Ouro", 37);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (8, "Prata", 21);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (8, "Bronze", 12);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (9, "Ouro", 14);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (9, "Prata", 8);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (9, "Bronze", 2);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (10, "Ouro", 22);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (10, "Prata", 4);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (10, "Bronze", 6);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (11, "Ouro", 4);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (11, "Prata", 10);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (11, "Bronze", 12);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (12, "Ouro", 4);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (12, "Prata", 0);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (12, "Bronze", 0);

INSERT INTO MedalhasT (selecao_id, tipo, qntd) VALUES (41, "Ouro", 48);
INSERT INTO MedalhasT (selecao_id, tipo, qntd) VALUES (41, "Prata", 35);
INSERT INTO MedalhasT (selecao_id, tipo, qntd) VALUES (41, "Bronze", 10);

-- LIGA TURCA(A)
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (13, "Ouro", 12);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (13, "Prata", 8);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (13, "Bronze", 5);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (14, "Ouro", 13);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (14, "Prata", 15);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (14, "Bronze", 2);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (15, "Ouro", 5);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (15, "Prata", 7);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (15, "Bronze", 4);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (16, "Ouro", 37);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (16, "Prata", 17);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (16, "Bronze", 3);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (17, "Ouro", 0);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (17, "Prata", 2);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (17, "Bronze", 0);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (18, "Ouro",0);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (18, "Prata", 3);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (18, "Bronze", 0);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (19, "Ouro", 5);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (19, "Prata", 0);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (19, "Bronze", 8);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (20, "Ouro", 38);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (20, "Prata", 27);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (20, "Bronze", 4);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (21, "Ouro", 1);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (21, "Prata", 0);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (21, "Bronze", 0);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (22, "Ouro", 2);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (22, "Prata", 0);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (22, "Bronze", 0);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (23, "Ouro", 3);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (23, "Prata", 0);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (23, "Bronze", 0);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (24, "Ouro", 1);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (24, "Prata", 3);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (24, "Bronze", 4);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (25, "Ouro", 1);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (25, "Prata", 1);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (25, "Bronze", 0);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (26, "Ouro", 1);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (26, "Prata", 1);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (26, "Bronze", 2);

INSERT INTO MedalhasT (selecao_id, tipo, qntd) VALUES (42, "Ouro", 6);
INSERT INTO MedalhasT (selecao_id, tipo, qntd) VALUES (42, "Prata", 12);
INSERT INTO MedalhasT (selecao_id, tipo, qntd) VALUES (42, "Bronze", 7);

-- LIGA ITALIA(A)
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (27, "Ouro", 15);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (27, "Prata", 2);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (27, "Bronze", 1);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (28, "Ouro", 2);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (28, "Prata", 1);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (28, "Bronze", 2);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (29, "Ouro", 31);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (29, "Prata", 16);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (29, "Bronze", 18);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (30, "Ouro", 4);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (30, "Prata", 11);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (30, "Bronze", 10);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (31, "Ouro", 4);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (31, "Prata", 3);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (31, "Bronze", 7);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (32, "Ouro", 19);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (32, "Prata", 20);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (32, "Bronze", 16);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (33, "Ouro", 1);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (33, "Prata", 1);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (33, "Bronze", 0);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (34, "Ouro", 5);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (34, "Prata", 2);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (34, "Bronze", 0);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (35, "Ouro", 4);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (35, "Prata", 4);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (35, "Bronze", 2);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (36, "Ouro", 3);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (36, "Prata", 2);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (36, "Bronze", 0);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (37, "Ouro", 7);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (37, "Prata", 10);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (37, "Bronze", 15);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (38, "Ouro", 3);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (38, "Prata", 4);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (38, "Bronze", 4);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (39, "Ouro", 2);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (39, "Prata", 4);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (39, "Bronze", 1);

INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (40, "Ouro", 2);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (40, "Prata", 1);
INSERT INTO MedalhasT (time_id, tipo, qntd) VALUES (40, "Bronze", 2);

INSERT INTO MedalhasT (selecao_id, tipo, qntd) VALUES (43, "Ouro", 19);
INSERT INTO MedalhasT (selecao_id, tipo, qntd) VALUES (43, "Prata", 3);
INSERT INTO MedalhasT (selecao_id, tipo, qntd) VALUES (43, "Bronze", 6);

CREATE TABLE MedalhasJ (
jogadora_id INT DEFAULT NULL,
tipo VARCHAR(50),
qntd int,
FOREIGN KEY (jogadora_id) REFERENCES Jogadora(id)
);
-- 3 nacionalidades
-- LIGA BRASIL 1-199
-- Seleção
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(1, 'Ouro', 10), (1, 'Prata', 8), (1, 'Bronze', 7),
(2, 'Ouro', 4), (2, 'Prata', 2), (2, 'Bronze', 4),
(3, 'Ouro', 23), (3, 'Prata', 21), (3, 'Bronze', 10),
(4, 'Ouro', 58), (4, 'Prata', 36), (4, 'Bronze', 16),
(5, 'Ouro', 21), (5, 'Prata', 19), (5, 'Bronze', 9),
(6, 'Ouro', 41), (6, 'Prata', 19), (6, 'Bronze', 12),
(7, 'Ouro', 46), (7, 'Prata', 24), (7, 'Bronze', 12),
(8, 'Ouro', 7), (8, 'Prata', 9), (8, 'Bronze', 7),
(9, 'Ouro', 11), (9, 'Prata', 11), (9, 'Bronze', 5),
(10, 'Ouro', 41), (10, 'Prata', 26), (10, 'Bronze', 9),
(11, 'Ouro', 5), (11, 'Prata', 4), (11, 'Bronze', 4),
(12, 'Ouro', 14), (12, 'Prata', 13), (12, 'Bronze', 6),
(13, 'Ouro', 19), (13, 'Prata', 14), (13, 'Bronze', 4);

-- Abel Moda Vôlei
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(14, 'Ouro', 3), (14, 'Prata', 3), (14, 'Bronze', 0),
(15, 'Ouro', 6), (15, 'Prata', 5), (15, 'Bronze', 0),
(16, 'Ouro', 2), (16, 'Prata', 1), (16, 'Bronze', 2),
(17, 'Ouro', 1), (17, 'Prata', 0), (17, 'Bronze', 0),
(18, 'Ouro', 3), (18, 'Prata', 2), (18, 'Bronze', 0),
(19, 'Ouro', 3), (19, 'Prata', 1), (19, 'Bronze', 1),
(20, 'Ouro', 14), (20, 'Prata', 19), (20, 'Bronze', 12),
(21, 'Ouro', 4), (21, 'Prata', 2), (21, 'Bronze', 4),
(22, 'Ouro', 2), (22, 'Prata', 2), (22, 'Bronze', 0),
(23, 'Ouro', 3), (23, 'Prata', 1), (23, 'Bronze', 2),
(24, 'Ouro', 1), (24, 'Prata', 2), (24, 'Bronze', 0),
(25, 'Ouro', 3), (25, 'Prata', 4), (25, 'Bronze', 2),
(26, 'Ouro', 1), (26, 'Prata', 1), (26, 'Bronze', 1),
(27, 'Ouro', 2), (27, 'Prata', 4), (27, 'Bronze', 2),
(28, 'Ouro', 3), (28, 'Prata', 3), (28, 'Bronze', 1),
(29, 'Ouro', 2), (29, 'Prata', 1), (29, 'Bronze', 2);

-- Barueri
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(30, 'Ouro', 2), (30, 'Prata', 1), (30, 'Bronze', 2),
(31, 'Ouro', 0), (31, 'Prata', 2), (31, 'Bronze', 2),
(32, 'Ouro', 5), (32, 'Prata', 2), (32, 'Bronze', 7),
(33, 'Ouro', 16), (33, 'Prata', 11), (33, 'Bronze', 6),
(34, 'Ouro', 3), (34, 'Prata', 2), (34, 'Bronze', 2),
(35, 'Ouro', 3), (35, 'Prata', 1), (35, 'Bronze', 1),
(36, 'Ouro', 13), (36, 'Prata', 9), (36, 'Bronze', 5),
(37, 'Ouro', 4), (37, 'Prata', 2), (37, 'Bronze', 5),
(38, 'Ouro', 1), (38, 'Prata', 1), (38, 'Bronze', 2),
(39, 'Ouro', 4), (39, 'Prata', 2), (39, 'Bronze', 6),
(40, 'Ouro', 2), (40, 'Prata', 2), (40, 'Bronze', 1),
(41, 'Ouro', 10), (41, 'Prata', 8), (41, 'Bronze', 1);

-- Mackenzie
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(42, 'Ouro', 1), (42, 'Prata', 0), (42, 'Bronze', 4),
(43, 'Ouro', 1), (43, 'Prata', 1), (43, 'Bronze', 5),
(44, 'Ouro', 10), (44, 'Prata', 7), (44, 'Bronze', 9),
(45, 'Ouro', 7), (45, 'Prata', 6), (45, 'Bronze', 7),
(46, 'Ouro', 0), (46, 'Prata', 0), (46, 'Bronze', 2),
(47, 'Ouro', 11), (47, 'Prata', 3), (47, 'Bronze', 10),
(48, 'Ouro', 4), (48, 'Prata', 1), (48, 'Bronze', 7),
(49, 'Ouro', 5), (49, 'Prata', 1), (49, 'Bronze', 4),
(50, 'Ouro', 2), (50, 'Prata', 1), (50, 'Bronze', 3),
(51, 'Ouro', 2), (51, 'Prata', 0), (51, 'Bronze', 2),
(52, 'Ouro', 25), (52, 'Prata', 15), (52, 'Bronze', 12),
(53, 'Ouro', 9), (53, 'Prata', 12), (53, 'Bronze', 10),
(54, 'Ouro', 44), (54, 'Prata', 22), (54, 'Bronze', 14),
(55, 'Ouro', 2), (55, 'Prata', 3), (55, 'Bronze', 9),
(56, 'Ouro', 0), (56, 'Prata', 0), (56, 'Bronze', 2),
(57, 'Ouro', 6), (57, 'Prata', 3), (57, 'Bronze', 4),
(58, 'Ouro', 53), (58, 'Prata', 23), (58, 'Bronze', 15);

-- Brasília
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(59, 'Ouro', 3), (59, 'Prata', 2), (59, 'Bronze', 2),
(60, 'Ouro', 1), (60, 'Prata', 3), (60, 'Bronze', 0),
(61, 'Ouro', 9), (61, 'Prata', 5), (61, 'Bronze', 6),
(62, 'Ouro', 2), (62, 'Prata', 1), (62, 'Bronze', 1),
(63, 'Ouro', 1), (63, 'Prata', 1), (63, 'Bronze', 5),
(64, 'Ouro', 2), (64, 'Prata', 2), (64, 'Bronze', 2),
(65, 'Ouro', 3), (65, 'Prata', 4), (65, 'Bronze', 1),
(66, 'Ouro', 3), (66, 'Prata', 5), (66, 'Bronze', 7),
(67, 'Ouro', 1), (67, 'Prata', 1), (67, 'Bronze', 3),
(68, 'Ouro', 0), (68, 'Prata', 0), (68, 'Bronze', 4),
(69, 'Ouro', 1), (69, 'Prata', 3), (69, 'Bronze', 2),
(70, 'Ouro', 4), (70, 'Prata', 3), (70, 'Bronze', 3),
(71, 'Ouro', 1), (71, 'Prata', 1), (71, 'Bronze', 2),
(72, 'Ouro', 8), (72, 'Prata', 6), (72, 'Bronze', 3);

-- Praia Clube
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(73, 'Ouro', 8), (73, 'Prata', 10), (73, 'Bronze', 11),
(74, 'Ouro', 10), (74, 'Prata', 8), (74, 'Bronze', 4),
(75, 'Ouro', 6), (75, 'Prata', 3), (75, 'Bronze', 5),
(76, 'Ouro', 48), (76, 'Prata', 24), (76, 'Bronze', 8),
(77, 'Ouro', 4), (77, 'Prata', 8), (77, 'Bronze', 2),
(78, 'Ouro', 4), (78, 'Prata', 10), (78, 'Bronze', 6),
(79, 'Ouro', 4), (79, 'Prata', 4), (79, 'Bronze', 4),
(80, 'Ouro', 13), (80, 'Prata', 12), (80, 'Bronze', 0),
(81, 'Ouro', 59), (81, 'Prata', 35), (81, 'Bronze', 22),
(82, 'Ouro', 7), (82, 'Prata', 11), (82, 'Bronze', 5),
(83, 'Ouro', 55), (83, 'Prata', 40), (83, 'Bronze', 13),
(84, 'Ouro', 15), (84, 'Prata', 14), (84, 'Bronze', 3),
(85, 'Ouro', 28), (85, 'Prata', 32), (85, 'Bronze', 13);

-- Fluminense
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(86, 'Ouro', 1), (86, 'Prata', 0), (86, 'Bronze', 0),
(87, 'Ouro', 2), (87, 'Prata', 2), (87, 'Bronze', 1),
(88, 'Ouro', 17), (88, 'Prata', 17), (88, 'Bronze', 7),
(89, 'Ouro', 7), (89, 'Prata', 7), (89, 'Bronze', 5),
(90, 'Ouro', 6), (90, 'Prata', 5), (90, 'Bronze', 7),
(91, 'Ouro', 44), (91, 'Prata', 18), (91, 'Bronze', 6),
(92, 'Ouro', 1), (92, 'Prata', 4), (92, 'Bronze', 5),
(93, 'Ouro', 7), (93, 'Prata', 3), (93, 'Bronze', 5),
(94, 'Ouro', 3), (94, 'Prata', 0), (94, 'Bronze', 3),
(95, 'Ouro', 10), (95, 'Prata', 10), (95, 'Bronze', 7),
(96, 'Ouro', 9), (96, 'Prata', 14), (96, 'Bronze', 12),
(97, 'Ouro', 3), (97, 'Prata', 3), (97, 'Bronze', 4),
(98, 'Ouro', 3), (98, 'Prata', 4), (98, 'Bronze', 3),
(99, 'Ouro', 15), (99, 'Prata', 4), (99, 'Bronze', 14),
(100, 'Ouro', 2), (100, 'Prata', 2), (100, 'Bronze', 2),
(101, 'Ouro', 2), (101, 'Prata', 4), (101, 'Bronze', 7),
(102, 'Ouro', 6), (102, 'Prata', 2), (102, 'Bronze', 5);

-- Minas
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(103, 'Ouro', 12), (103, 'Prata', 9), (103, 'Bronze', 7),
(104, 'Ouro', 8), (104, 'Prata', 6), (104, 'Bronze', 1),
(105, 'Ouro', 5), (105, 'Prata', 3), (105, 'Bronze', 1),
(106, 'Ouro', 29), (106, 'Prata', 31), (106, 'Bronze', 12),
(107, 'Ouro', 2), (107, 'Prata', 3), (107, 'Bronze', 3),
(108, 'Ouro', 13), (108, 'Prata', 8), (108, 'Bronze', 5),
(109, 'Ouro', 12), (109, 'Prata', 11), (109, 'Bronze', 2),
(110, 'Ouro', 14), (110, 'Prata', 9), (110, 'Bronze', 5),
(111, 'Ouro', 13), (111, 'Prata', 9), (111, 'Bronze', 7),
(112, 'Ouro', 7), (112, 'Prata', 6), (112, 'Bronze', 1),
(113, 'Ouro', 3), (113, 'Prata', 3), (113, 'Bronze', 2),
(114, 'Ouro', 5), (114, 'Prata', 3), (114, 'Bronze', 7),
(115, 'Ouro', 38), (115, 'Prata', 23), (115, 'Bronze', 10),
(116, 'Ouro', 11), (116, 'Prata', 9), (116, 'Bronze', 1),
(117, 'Ouro', 9), (117, 'Prata', 7), (117, 'Bronze', 8);

-- osasco
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(118, 'Ouro', 2), (118, 'Prata', 2), (118, 'Bronze', 3),
(119, 'Ouro', 5), (119, 'Prata', 4), (119, 'Bronze', 1),
(120, 'Ouro', 9), (120, 'Prata', 5), (120, 'Bronze', 5),
(121, 'Ouro', 4), (121, 'Prata', 2), (121, 'Bronze', 7),
(122, 'Ouro', 13), (122, 'Prata', 8), (122, 'Bronze', 9),
(123, 'Ouro', 66), (123, 'Prata', 30), (123, 'Bronze', 11),
(124, 'Ouro', 4), (124, 'Prata', 3), (124, 'Bronze', 1),
(125, 'Ouro', 7), (125, 'Prata', 3), (125, 'Bronze', 3),
(126, 'Ouro', 13), (126, 'Prata', 8), (126, 'Bronze', 11),
(127, 'Ouro', 3), (127, 'Prata', 2), (127, 'Bronze', 1),
(128, 'Ouro', 2), (128, 'Prata', 1), (128, 'Bronze', 4),
(129, 'Ouro', 8), (129, 'Prata', 4), (129, 'Bronze', 3),
(130, 'Ouro', 16), (130, 'Prata', 15), (130, 'Bronze', 9),
(131, 'Ouro', 43), (131, 'Prata', 28), (131, 'Bronze', 16);

-- Pinheiros
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(132, 'Ouro', 5), (132, 'Prata', 3), (132, 'Bronze', 5),
(133, 'Ouro', 0), (133, 'Prata', 0), (133, 'Bronze', 0),
(134, 'Ouro', 5), (134, 'Prata', 6), (134, 'Bronze', 3),
(135, 'Ouro', 2), (135, 'Prata', 3), (135, 'Bronze', 3),
(136, 'Ouro', 1), (136, 'Prata', 0), (136, 'Bronze', 0),
(137, 'Ouro', 9), (137, 'Prata', 9), (137, 'Bronze', 4),
(138, 'Ouro', 15), (138, 'Prata', 6), (138, 'Bronze', 2),
(139, 'Ouro', 12), (139, 'Prata', 5), (139, 'Bronze', 3),
(140, 'Ouro', 16), (140, 'Prata', 12), (140, 'Bronze', 5),
(141, 'Ouro', 6), (141, 'Prata', 4), (141, 'Bronze', 0),
(142, 'Ouro', 8), (142, 'Prata', 4), (142, 'Bronze', 3),
(143, 'Ouro', 13), (143, 'Prata', 9), (143, 'Bronze', 4),
(144, 'Ouro', 10), (144, 'Prata', 6), (144, 'Bronze', 5),
(145, 'Ouro', 5), (145, 'Prata', 2), (145, 'Bronze', 3),
(146, 'Ouro', 7), (146, 'Prata', 3), (146, 'Bronze', 1),
(147, 'Ouro', 5), (147, 'Prata', 4), (147, 'Bronze', 0),
(148, 'Ouro', 3), (148, 'Prata', 3), (148, 'Bronze', 2);

-- Flamengo
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(149, 'Ouro', 4), (149, 'Prata', 3), (149, 'Bronze', 3),
(150, 'Ouro', 2), (150, 'Prata', 4), (150, 'Bronze', 3),
(151, 'Ouro', 5), (151, 'Prata', 5), (151, 'Bronze', 10),
(152, 'Ouro', 7), (152, 'Prata', 6), (152, 'Bronze', 3),
(153, 'Ouro', 7), (153, 'Prata', 2), (153, 'Bronze', 3),
(154, 'Ouro', 4), (154, 'Prata', 4), (154, 'Bronze', 0),
(155, 'Ouro', 36), (155, 'Prata', 29), (155, 'Bronze', 11),
(156, 'Ouro', 4), (156, 'Prata', 4), (156, 'Bronze', 5),
(157, 'Ouro', 4), (157, 'Prata', 2), (157, 'Bronze', 4),
(158, 'Ouro', 3), (158, 'Prata', 1), (158, 'Bronze', 3),
(159, 'Ouro', 5), (159, 'Prata', 1), (159, 'Bronze', 5),
(160, 'Ouro', 9), (160, 'Prata', 9), (160, 'Bronze', 3),
(161, 'Ouro', 4), (161, 'Prata', 4), (161, 'Bronze', 0),
(162, 'Ouro', 1), (162, 'Prata', 1), (162, 'Bronze', 0),
(163, 'Ouro', 15), (163, 'Prata', 22), (163, 'Bronze', 6),
(164, 'Ouro', 5), (164, 'Prata', 6), (164, 'Bronze', 3),
(165, 'Ouro', 2), (165, 'Prata', 3), (165, 'Bronze', 3);

-- Bauru
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(166, 'Ouro', 2), (166, 'Prata', 2), (166, 'Bronze', 2),
(167, 'Ouro', 58), (167, 'Prata', 24), (167, 'Bronze', 20),
(168, 'Ouro', 2), (168, 'Prata', 2), (168, 'Bronze', 0),
(170, 'Ouro', 0), (170, 'Prata', 6), (170, 'Bronze', 1),
(171, 'Ouro', 5), (171, 'Prata', 5), (171, 'Bronze', 8),
(172, 'Ouro', 6), (172, 'Prata', 2), (172, 'Bronze', 5),
(173, 'Ouro', 1), (173, 'Prata', 3), (173, 'Bronze', 1),
(174, 'Ouro', 1), (174, 'Prata', 1), (174, 'Bronze', 0),
(175, 'Ouro', 20), (175, 'Prata', 14), (175, 'Bronze', 4),
(176, 'Ouro', 1), (176, 'Prata', 0), (176, 'Bronze', 3),
(177, 'Ouro', 25), (177, 'Prata', 10), (177, 'Bronze', 13),
(178, 'Ouro', 34), (178, 'Prata', 17), (178, 'Bronze', 11),
(179, 'Ouro', 14), (179, 'Prata', 7), (179, 'Bronze', 14),
(180, 'Ouro', 1), (180, 'Prata', 1), (180, 'Bronze', 0),
(181, 'Ouro', 2), (181, 'Prata', 1), (181, 'Bronze', 0),
(182, 'Ouro', 28), (182, 'Prata', 16), (182, 'Bronze', 13);

-- Maringá
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(183, 'Ouro', 4), (183, 'Prata', 5), (183, 'Bronze', 3),
(184, 'Ouro', 0), (184, 'Prata', 1), (184, 'Bronze', 0),
(185, 'Ouro', 10), (185, 'Prata', 8), (185, 'Bronze', 4),
(186, 'Ouro', 5), (186, 'Prata', 5), (186, 'Bronze', 2),
(187, 'Ouro', 6), (187, 'Prata', 10), (187, 'Bronze', 6),
(188, 'Ouro', 4), (188, 'Prata', 1), (188, 'Bronze', 0),
(189, 'Ouro', 11), (189, 'Prata', 6), (189, 'Bronze', 10),
(190, 'Ouro', 1), (190, 'Prata', 2), (190, 'Bronze', 2),
(191, 'Ouro', 9), (191, 'Prata', 9), (191, 'Bronze', 6),
(192, 'Ouro', 6), (192, 'Prata', 8), (192, 'Bronze', 6),
(193, 'Ouro', 5), (193, 'Prata', 9), (193, 'Bronze', 13),
(194, 'Ouro', 0), (194, 'Prata', 1), (194, 'Bronze', 0),
(195, 'Ouro', 0), (195, 'Prata', 1), (195, 'Bronze', 0),
(196, 'Ouro', 13), (196, 'Prata', 17), (196, 'Bronze', 2),
(197, 'Ouro', 2), (197, 'Prata', 1), (197, 'Bronze', 0),
(198, 'Ouro', 0), (198, 'Prata', 1), (198, 'Bronze', 0),
(199, 'Ouro', 1), (199, 'Prata', 1), (199, 'Bronze', 1);

-- LIGA TURQUIA 200-403
-- Selecao TURQUIA
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(200, 'Ouro', 25), (200, 'Prata', 17), (200, 'Bronze', 15),
(201, 'Ouro', 23), (201, 'Prata', 11), (201, 'Bronze', 13),
(202, 'Ouro', 17), (202, 'Prata', 9), (202, 'Bronze', 11),
(203, 'Ouro', 9), (203, 'Prata', 13), (203, 'Bronze', 19),
(204, 'Ouro', 13), (204, 'Prata', 4), (204, 'Bronze', 15),
(205, 'Ouro', 5), (205, 'Prata', 4), (205, 'Bronze', 6),
(206, 'Ouro', 22), (206, 'Prata', 11), (206, 'Bronze', 10),
(207, 'Ouro', 20), (207, 'Prata', 20), (207, 'Bronze', 12),
(208, 'Ouro', 5), (208, 'Prata', 9), (208, 'Bronze', 5),
(209, 'Ouro', 13), (209, 'Prata', 11), (209, 'Bronze', 15),
(210, 'Ouro', 8), (210, 'Prata', 15), (210, 'Bronze', 9),
(211, 'Ouro', 15), (211, 'Prata', 8), (211, 'Bronze', 7),
(212, 'Ouro', 22), (212, 'Prata', 22), (212, 'Bronze', 24);

-- Galatasaray
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(213, 'Ouro', 11), (213, 'Prata', 4), (213, 'Bronze', 8),
(214, 'Ouro', 3), (214, 'Prata', 2), (214, 'Bronze', 4),
(215, 'Ouro', 7), (215, 'Prata', 4), (215, 'Bronze', 6),
(216, 'Ouro', 3), (216, 'Prata', 2), (216, 'Bronze', 1),
(217, 'Ouro', 3), (217, 'Prata', 1), (217, 'Bronze', 4),
(218, 'Ouro', 16), (218, 'Prata', 8), (218, 'Bronze', 7),
(219, 'Ouro', 5), (219, 'Prata', 3), (219, 'Bronze', 4),
(220, 'Ouro', 14), (220, 'Prata', 5), (220, 'Bronze', 7),
(221, 'Ouro', 9), (221, 'Prata', 10), (221, 'Bronze', 8),
(222, 'Ouro', 10), (222, 'Prata', 6), (222, 'Bronze', 5),
(223, 'Ouro', 4), (223, 'Prata', 3), (223, 'Bronze', 1),
(224, 'Ouro', 2), (224, 'Prata', 0), (224, 'Bronze', 2),
(225, 'Ouro', 5), (225, 'Prata', 5), (225, 'Bronze', 6);

-- Fenerbahce 
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(226, 'Ouro', 2), (226, 'Prata', 5), (226, 'Bronze', 4),
(227, 'Ouro', 30), (227, 'Prata', 11), (227, 'Bronze', 16),
(228, 'Ouro', 7), (228, 'Prata', 7), (228, 'Bronze', 8),
(229, 'Ouro', 12), (229, 'Prata', 7), (229, 'Bronze', 7),
(230, 'Ouro', 13), (230, 'Prata', 11), (230, 'Bronze', 12),
(231, 'Ouro', 3), (231, 'Prata', 2), (231, 'Bronze', 1),
(232, 'Ouro', 16), (232, 'Prata', 9), (232, 'Bronze', 8),
(233, 'Ouro', 10), (233, 'Prata', 8), (233, 'Bronze', 11),
(234, 'Ouro', 1), (234, 'Prata', 0), (234, 'Bronze', 1);

-- Besiktas
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(235, 'Ouro', 7), (235, 'Prata', 3), (235, 'Bronze', 3),
(236, 'Ouro', 4), (236, 'Prata', 7), (236, 'Bronze', 4),
(237, 'Ouro', 27), (237, 'Prata', 11), (237, 'Bronze', 8),
(238, 'Ouro', 0), (238, 'Prata', 0), (238, 'Bronze', 0),
(239, 'Ouro', 1), (239, 'Prata', 2), (239, 'Bronze', 2),
(240, 'Ouro', 8), (240, 'Prata', 10), (240, 'Bronze', 6),
(241, 'Ouro', 3), (241, 'Prata', 2), (241, 'Bronze', 2),
(242, 'Ouro', 1), (242, 'Prata', 1), (242, 'Bronze', 1),
(243, 'Ouro', 4), (243, 'Prata', 5), (243, 'Bronze', 3),
(244, 'Ouro', 1), (244, 'Prata', 3), (244, 'Bronze', 2),
(245, 'Ouro', 4), (245, 'Prata', 3), (245, 'Bronze', 6),
(246, 'Ouro', 2), (246, 'Prata', 6), (246, 'Bronze', 8),
(247, 'Ouro', 15), (247, 'Prata', 15), (247, 'Bronze', 11),
(248, 'Ouro', 2), (248, 'Prata', 0), (248, 'Bronze', 0),
(249, 'Ouro', 1), (249, 'Prata', 1), (249, 'Bronze', 0);

-- Eczacibasi
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(250, 'Ouro', 29), (250, 'Prata', 21), (250, 'Bronze', 21),
(251, 'Ouro', 18), (251, 'Prata', 18), (251, 'Bronze', 15),
(252, 'Ouro', 3), (252, 'Prata', 5), (252, 'Bronze', 7),
(253, 'Ouro', 11), (253, 'Prata', 5), (253, 'Bronze', 7),
(254, 'Ouro', 2), (254, 'Prata', 8), (254, 'Bronze', 3),
(255, 'Ouro', 21), (255, 'Prata', 8), (255, 'Bronze', 4),
(256, 'Ouro', 4), (256, 'Prata', 10), (256, 'Bronze', 6),
(257, 'Ouro', 7), (257, 'Prata', 10), (257, 'Bronze', 3),
(258, 'Ouro', 16), (258, 'Prata', 16), (258, 'Bronze', 14),
(259, 'Ouro', 2), (259, 'Prata', 5), (259, 'Bronze', 4),
(260, 'Ouro', 10), (260, 'Prata', 15), (260, 'Bronze', 13);

-- Bahcelievler
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(261, 'Ouro', 3), (261, 'Prata', 0), (261, 'Bronze', 0),
(262, 'Ouro', 5), (262, 'Prata', 7), (262, 'Bronze', 7),
(263, 'Ouro', 7), (263, 'Prata', 4), (263, 'Bronze', 2),
(264, 'Ouro', 12), (264, 'Prata', 11), (264, 'Bronze', 9),
(265, 'Ouro', 2), (265, 'Prata', 4), (265, 'Bronze', 2),
(266, 'Ouro', 2), (266, 'Prata', 1), (266, 'Bronze', 3),
(267, 'Ouro', 6), (267, 'Prata', 6), (267, 'Bronze', 3),
(268, 'Ouro', 6), (268, 'Prata', 0), (268, 'Bronze', 0),
(269, 'Ouro', 5), (269, 'Prata', 3), (269, 'Bronze', 12),
(270, 'Ouro', 4), (270, 'Prata', 2), (270, 'Bronze', 1),
(271, 'Ouro', 1), (271, 'Prata', 0), (271, 'Bronze', 0),
(272, 'Ouro', 3), (272, 'Prata', 0), (272, 'Bronze', 1),
(273, 'Ouro', 4), (273, 'Prata', 0), (273, 'Bronze', 0),
(274, 'Ouro', 2), (274, 'Prata', 0), (274, 'Bronze', 0);

-- KuzeyBoru Genclik
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(275, 'Ouro', 20), (275, 'Prata', 6), (275, 'Bronze', 7),
(276, 'Ouro', 4), (276, 'Prata', 9), (276, 'Bronze', 10),
(277, 'Ouro', 1), (277, 'Prata', 1), (277, 'Bronze', 0),
(278, 'Ouro', 10), (278, 'Prata', 6), (278, 'Bronze', 11),
(279, 'Ouro', 21), (279, 'Prata', 24), (279, 'Bronze', 18),
(280, 'Ouro', 15), (280, 'Prata', 18), (280, 'Bronze', 15),
(281, 'Ouro', 6), (281, 'Prata', 8), (281, 'Bronze', 4),
(282, 'Ouro', 1), (282, 'Prata', 1), (282, 'Bronze', 0),
(283, 'Ouro', 18), (283, 'Prata', 6), (283, 'Bronze', 7),
(284, 'Ouro', 1), (284, 'Prata', 2), (284, 'Bronze', 1),
(285, 'Ouro', 2), (285, 'Prata', 2), (285, 'Bronze', 4),
(286, 'Ouro', 0), (286, 'Prata', 1), (286, 'Bronze', 0),
(287, 'Ouro', 4), (287, 'Prata', 2), (287, 'Bronze', 0),
(288, 'Ouro', 0), (288, 'Prata', 2), (288, 'Bronze', 0);

-- THY
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(289, 'Ouro', 1), (289, 'Prata', 0), (289, 'Bronze', 4),
(290, 'Ouro', 15), (290, 'Prata', 12), (290, 'Bronze', 11),
(291, 'Ouro', 0), (291, 'Prata', 0), (291, 'Bronze', 0),
(292, 'Ouro', 3), (292, 'Prata', 4), (292, 'Bronze', 5),
(293, 'Ouro', 15), (293, 'Prata', 5), (293, 'Bronze', 6),
(294, 'Ouro', 3), (294, 'Prata', 4), (294, 'Bronze', 8),
(295, 'Ouro', 11), (295, 'Prata', 14), (295, 'Bronze', 20),
(296, 'Ouro', 2), (296, 'Prata', 1), (296, 'Bronze', 2),
(297, 'Ouro', 16), (297, 'Prata', 11), (297, 'Bronze', 16),
(298, 'Ouro', 6), (298, 'Prata', 1), (298, 'Bronze', 4),
(299, 'Ouro', 7), (299, 'Prata', 5), (299, 'Bronze', 9),
(300, 'Ouro', 5), (300, 'Prata', 6), (300, 'Bronze', 7);

-- Vakifbank
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(301, 'Ouro', 10), (301, 'Prata', 6), (301, 'Bronze', 5),
(302, 'Ouro', 2), (302, 'Prata', 0), (302, 'Bronze', 0),
(303, 'Ouro', 8), (303, 'Prata', 1), (303, 'Bronze', 4),
(304, 'Ouro', 4), (304, 'Prata', 2), (304, 'Bronze', 9),
(305, 'Ouro', 5), (305, 'Prata', 2), (305, 'Bronze', 0),
(306, 'Ouro', 6), (306, 'Prata', 7), (306, 'Bronze', 8),
(307, 'Ouro', 5), (307, 'Prata', 1), (307, 'Bronze', 0),
(308, 'Ouro', 25), (308, 'Prata', 8), (308, 'Bronze', 10),
(309, 'Ouro', 2), (309, 'Prata', 0), (309, 'Bronze', 1),
(310, 'Ouro', 6), (310, 'Prata', 3), (310, 'Bronze', 3),
(311, 'Ouro', 4), (311, 'Prata', 2), (311, 'Bronze', 0),
(312, 'Ouro', 25), (312, 'Prata', 12), (312, 'Bronze', 12);

-- Sigorta Shop
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(313, 'Ouro', 1), (313, 'Prata', 1), (313, 'Bronze', 0),
(314, 'Ouro', 1), (314, 'Prata', 2), (314, 'Bronze', 4),
(315, 'Ouro', 4), (315, 'Prata', 3), (315, 'Bronze', 2),
(316, 'Ouro', 0), (316, 'Prata', 1), (316, 'Bronze', 2),
(317, 'Ouro', 6), (317, 'Prata', 9), (317, 'Bronze', 9),
(318, 'Ouro', 0), (318, 'Prata', 0), (318, 'Bronze', 0),
(319, 'Ouro', 3), (319, 'Prata', 5), (319, 'Bronze', 3),
(320, 'Ouro', 1), (320, 'Prata', 3), (320, 'Bronze', 1),
(321, 'Ouro', 2), (321, 'Prata', 1), (321, 'Bronze', 3),
(322, 'Ouro', 2), (322, 'Prata', 4), (322, 'Bronze', 1),
(323, 'Ouro', 19), (323, 'Prata', 11), (323, 'Bronze', 12),
(324, 'Ouro', 1), (324, 'Prata', 0), (324, 'Bronze', 1),
(325, 'Ouro', 1), (325, 'Prata', 1), (325, 'Bronze', 0),
(326, 'Ouro', 0), (326, 'Prata', 1), (326, 'Bronze', 1),
(327, 'Ouro', 3), (327, 'Prata', 7), (327, 'Bronze', 5),
(328, 'Ouro', 0), (328, 'Prata', 0), (328, 'Bronze', 0);

-- Sariyer
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(329, 'Ouro', 2), (329, 'Prata', 0), (329, 'Bronze', 1),
(330, 'Ouro', 1), (330, 'Prata', 1), (330, 'Bronze', 1),
(331, 'Ouro', 4), (331, 'Prata', 5), (331, 'Bronze', 3),
(332, 'Ouro', 0), (332, 'Prata', 0), (332, 'Bronze', 0),
(333, 'Ouro', 2), (333, 'Prata', 2), (333, 'Bronze', 1),
(334, 'Ouro', 0), (334, 'Prata', 0), (334, 'Bronze', 0),
(335, 'Ouro', 14), (335, 'Prata', 14), (335, 'Bronze', 7),
(336, 'Ouro', 7), (336, 'Prata', 5), (336, 'Bronze', 2),
(337, 'Ouro', 3), (337, 'Prata', 3), (337, 'Bronze', 1),
(338, 'Ouro', 1), (338, 'Prata', 1), (338, 'Bronze', 2),
(339, 'Ouro', 6), (339, 'Prata', 5), (339, 'Bronze', 5),
(340, 'Ouro', 1), (340, 'Prata', 0), (340, 'Bronze', 0),
(341, 'Ouro', 0), (341, 'Prata', 0), (341, 'Bronze', 0),
(342, 'Ouro', 0), (342, 'Prata', 0), (342, 'Bronze', 0),
(343, 'Ouro', 0), (343, 'Prata', 0), (343, 'Bronze', 0),
(344, 'Ouro', 0), (345, 'Prata', 1), (345, 'Bronze', 0),
(345, 'Ouro', 2), (346, 'Prata', 2), (346, 'Bronze', 2);

-- Zeren Spor
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(346, 'Ouro', 1), (346, 'Prata', 2), (346, 'Bronze', 2),
(347, 'Ouro', 10), (347, 'Prata', 4), (347, 'Bronze', 9),
(348, 'Ouro', 5), (348, 'Prata', 5), (348, 'Bronze', 2),
(349, 'Ouro', 31), (349, 'Prata', 10), (349, 'Bronze', 15),
(350, 'Ouro', 19), (350, 'Prata', 15), (350, 'Bronze', 7),
(351, 'Ouro', 13), (351, 'Prata', 5), (351, 'Bronze', 15),
(352, 'Ouro', 3), (352, 'Prata', 2), (352, 'Bronze', 3),
(353, 'Ouro', 4), (353, 'Prata', 4), (353, 'Bronze', 2),
(354, 'Ouro', 4), (354, 'Prata', 8), (354, 'Bronze', 6),
(355, 'Ouro', 34), (355, 'Prata', 15), (355, 'Bronze', 14),
(356, 'Ouro', 3), (356, 'Prata', 1), (356, 'Bronze', 1),
(357, 'Ouro', 6), (357, 'Prata', 4), (357, 'Bronze', 2),
(358, 'Ouro', 4), (358, 'Prata', 3), (358, 'Bronze', 2),
(359, 'Ouro', 1), (359, 'Prata', 2), (359, 'Bronze', 1),
(360, 'Ouro', 2), (360, 'Prata', 2), (360, 'Bronze', 2);

-- Nilufer Bld
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(361, 'Ouro', 2), (361, 'Prata', 2), (361, 'Bronze', 1),
(362, 'Ouro', 2), (362, 'Prata', 2), (362, 'Bronze', 0),
(363, 'Ouro', 5), (363, 'Prata', 4), (363, 'Bronze', 4),
(364, 'Ouro', 3), (364, 'Prata', 3), (364, 'Bronze', 2),
(365, 'Ouro', 0), (365, 'Prata', 1), (365, 'Bronze', 0),
(366, 'Ouro', 0), (366, 'Prata', 1), (366, 'Bronze', 0),
(367, 'Ouro', 14), (367, 'Prata', 13), (367, 'Bronze', 10),
(368, 'Ouro', 0), (368, 'Prata', 1), (368, 'Bronze', 1),
(369, 'Ouro', 2), (369, 'Prata', 3), (369, 'Bronze', 0),
(370, 'Ouro', 2), (370, 'Prata', 6), (370, 'Bronze', 8),
(371, 'Ouro', 0), (371, 'Prata', 1), (371, 'Bronze', 0),
(372, 'Ouro', 7), (372, 'Prata', 5), (372, 'Bronze', 3),
(373, 'Ouro', 0), (373, 'Prata', 3), (373, 'Bronze', 2),
(374, 'Ouro', 0), (374, 'Prata', 3), (374, 'Bronze', 2);

-- Aras Kargo
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(375, 'Ouro', 0), (375, 'Prata', 2), (375, 'Bronze', 1),
(376, 'Ouro', 5), (376, 'Prata', 1), (376, 'Bronze', 7),
(377, 'Ouro', 1), (377, 'Prata', 2), (377, 'Bronze', 1),
(378, 'Ouro', 1), (378, 'Prata', 4), (378, 'Bronze', 8),
(379, 'Ouro', 5), (379, 'Prata', 2), (379, 'Bronze', 3),
(380, 'Ouro', 17), (380, 'Prata', 16), (380, 'Bronze', 16),
(381, 'Ouro', 0), (381, 'Prata', 1), (381, 'Bronze', 2),
(382, 'Ouro', 17), (382, 'Prata', 5), (382, 'Bronze', 2),
(383, 'Ouro', 1), (383, 'Prata', 0), (383, 'Bronze', 1),
(384, 'Ouro', 0), (384, 'Prata', 0), (384, 'Bronze', 1),
(385, 'Ouro', 4), (385, 'Prata', 4), (385, 'Bronze', 4),
(386, 'Ouro', 0), (386, 'Prata', 1), (386, 'Bronze', 1),
(387, 'Ouro', 0), (387, 'Prata', 2), (387, 'Bronze', 2),
(388, 'Ouro', 1), (388, 'Prata', 0), (388, 'Bronze', 1),
(389, 'Ouro', 0), (389, 'Prata', 3), (389, 'Bronze', 2);

-- Aydin B.Sehir Bld
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(390, 'Ouro', 7), (390, 'Prata', 5), (390, 'Bronze', 5),
(391, 'Ouro', 3), (391, 'Prata', 6), (391, 'Bronze', 6),
(392, 'Ouro', 8), (392, 'Prata', 3), (392, 'Bronze', 3),
(393, 'Ouro', 3), (393, 'Prata', 5), (393, 'Bronze', 4),
(394, 'Ouro', 1), (394, 'Prata', 0), (394, 'Bronze', 3),
(395, 'Ouro', 7), (395, 'Prata', 9), (395, 'Bronze', 10),
(396, 'Ouro', 8), (396, 'Prata', 13), (396, 'Bronze', 9),
(397, 'Ouro', 1), (397, 'Prata', 3), (397, 'Bronze', 7),
(398, 'Ouro', 0), (398, 'Prata', 3), (398, 'Bronze', 2),
(399, 'Ouro', 3), (399, 'Prata', 2), (399, 'Bronze', 3),
(400, 'Ouro', 0), (400, 'Prata', 1), (400, 'Bronze', 3),
(401, 'Ouro', 0), (401, 'Prata', 0), (401, 'Bronze', 0),
(402, 'Ouro', 0), (402, 'Prata', 0), (402, 'Bronze', 0);

-- LIGA ITALIA 403-600
-- Seleção
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(403, 'Ouro', 18), (403, 'Prata', 3), (403, 'Bronze', 2),
(404, 'Ouro', 6), (404, 'Prata', 6), (404, 'Bronze', 7),
(405, 'Ouro', 12), (405, 'Prata', 3), (405, 'Bronze', 9),
(406, 'Ouro', 37), (406, 'Prata', 12), (406, 'Bronze', 9),
(407, 'Ouro', 7), (407, 'Prata', 10), (407, 'Bronze', 9),
(408, 'Ouro', 14), (408, 'Prata', 21), (408, 'Bronze', 10),
(409, 'Ouro', 14), (409, 'Prata', 16), (409, 'Bronze', 12),
(410, 'Ouro', 20), (410, 'Prata', 17), (410, 'Bronze', 5),
(411, 'Ouro', 22), (411, 'Prata', 14), (411, 'Bronze', 5),
(412, 'Ouro', 24), (412, 'Prata', 5), (412, 'Bronze', 2),
(413, 'Ouro', 16), (413, 'Prata', 6), (413, 'Bronze', 1),
(414, 'Ouro', 4), (414, 'Prata', 1), (414, 'Bronze', 2),
(415, 'Ouro', 2), (415, 'Prata', 1), (415, 'Bronze', 2);

-- Conegliano
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(416, 'Ouro', 7), (416, 'Prata', 9), (416, 'Bronze', 1),
(417, 'Ouro', 32), (417, 'Prata', 14), (417, 'Bronze', 7),
(418, 'Ouro', 27), (418, 'Prata', 10), (418, 'Bronze', 7),
(419, 'Ouro', 3), (419, 'Prata', 1), (419, 'Bronze', 2),
(420, 'Ouro', 25), (420, 'Prata', 6), (420, 'Bronze', 10),
(421, 'Ouro', 9), (421, 'Prata', 1), (421, 'Bronze', 4),
(422, 'Ouro', 15), (422, 'Prata', 7), (422, 'Bronze', 3),
(423, 'Ouro', 8), (423, 'Prata', 2), (423, 'Bronze', 1),
(424, 'Ouro', 15), (424, 'Prata', 14), (424, 'Bronze', 9),
(425, 'Ouro', 15), (425, 'Prata', 3), (425, 'Bronze', 1);

-- Scandicci
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(426, 'Ouro', 28), (426, 'Prata', 23), (426, 'Bronze', 21),
(427, 'Ouro', 11), (427, 'Prata', 2), (427, 'Bronze', 3),
(428, 'Ouro', 3), (428, 'Prata', 1), (428, 'Bronze', 6),
(429, 'Ouro', 7), (429, 'Prata', 8), (429, 'Bronze', 11),
(430, 'Ouro', 1), (430, 'Prata', 3), (430, 'Bronze', 3),
(431, 'Ouro', 13), (431, 'Prata', 12), (431, 'Bronze', 4),
(432, 'Ouro', 8), (432, 'Prata', 8), (432, 'Bronze', 2),
(433, 'Ouro', 3), (433, 'Prata', 2), (433, 'Bronze', 0),
(434, 'Ouro', 5), (434, 'Prata', 3), (434, 'Bronze', 2),
(435, 'Ouro', 3), (435, 'Prata', 5), (435, 'Bronze', 3),
(436, 'Ouro', 25), (436, 'Prata', 21), (436, 'Bronze', 24),
(437, 'Ouro', 5), (437, 'Prata', 12), (437, 'Bronze', 7);

-- Bergamo
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(438, 'Ouro', 6), (438, 'Prata', 0), (438, 'Bronze', 1),
(439, 'Ouro', 5), (439, 'Prata', 1), (439, 'Bronze', 3),
(440, 'Ouro', 7), (440, 'Prata', 1), (440, 'Bronze', 3),
(441, 'Ouro', 3), (441, 'Prata', 1), (441, 'Bronze', 2),
(442, 'Ouro', 2), (442, 'Prata', 3), (442, 'Bronze', 1),
(443, 'Ouro', 8), (443, 'Prata', 21), (443, 'Bronze', 8),
(444, 'Ouro', 1), (444, 'Prata', 0), (444, 'Bronze', 1),
(445, 'Ouro', 1), (445, 'Prata', 2), (445, 'Bronze', 12),
(446, 'Ouro', 7), (446, 'Prata', 2), (446, 'Bronze', 3),
(447, 'Ouro', 1), (448, 'Prata', 2), (448, 'Bronze', 2),
(448, 'Ouro', 1), (449, 'Prata', 0), (449, 'Bronze', 1),
(449, 'Ouro', 0), (450, 'Prata', 0), (450, 'Bronze', 1),
(450, 'Ouro', 2), (451, 'Prata', 2), (451, 'Bronze', 3),
(451, 'Ouro', 1), (452, 'Prata', 0), (452, 'Bronze', 1);

-- Vero Volley
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(452, 'Ouro', 4), (452, 'Prata', 6), (452, 'Bronze', 2),
(453, 'Ouro', 1), (453, 'Prata', 3), (453, 'Bronze', 2),
(454, 'Ouro', 9), (454, 'Prata', 8), (454, 'Bronze', 5),
(455, 'Ouro', 3), (455, 'Prata', 5), (455, 'Bronze', 5),
(456, 'Ouro', 6), (456, 'Prata', 5), (456, 'Bronze', 7),
(457, 'Ouro', 2), (457, 'Prata', 16), (457, 'Bronze', 7),
(458, 'Ouro', 4), (458, 'Prata', 2), (458, 'Bronze', 2),
(459, 'Ouro', 11), (459, 'Prata', 17), (459, 'Bronze', 11),
(460, 'Ouro', 4), (460, 'Prata', 12), (460, 'Bronze', 8),
(461, 'Ouro', 4), (461, 'Prata', 5), (461, 'Bronze', 1),
(462, 'Ouro', 2), (462, 'Prata', 4), (462, 'Bronze', 1);

-- Chieri 76
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(463, 'Ouro', 5), (463, 'Prata', 6), (463, 'Bronze', 4),
(464, 'Ouro', 2), (464, 'Prata', 2), (464, 'Bronze', 0),
(465, 'Ouro', 3), (465, 'Prata', 2), (465, 'Bronze', 3),
(466, 'Ouro', 9), (466, 'Prata', 8), (466, 'Bronze', 1),
(467, 'Ouro', 6), (467, 'Prata', 8), (467, 'Bronze', 2),
(468, 'Ouro', 33), (468, 'Prata', 17), (468, 'Bronze', 5),
(469, 'Ouro', 2), (469, 'Prata', 2), (469, 'Bronze', 0),
(470, 'Ouro', 1), (470, 'Prata', 2), (470, 'Bronze', 0),
(471, 'Ouro', 6), (471, 'Prata', 6), (471, 'Bronze', 5),
(472, 'Ouro', 17), (472, 'Prata', 7), (472, 'Bronze', 3),
(473, 'Ouro', 4), (473, 'Prata', 2), (473, 'Bronze', 5),
(474, 'Ouro', 3), (474, 'Prata', 3), (474, 'Bronze', 3);

-- Novara
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(475, 'Ouro', 10), (475, 'Prata', 3), (475, 'Bronze', 4),
(476, 'Ouro', 5), (476, 'Prata', 1), (476, 'Bronze', 1),
(477, 'Ouro', 3), (477, 'Prata', 5), (477, 'Bronze', 3),
(478, 'Ouro', 10), (478, 'Prata', 4), (478, 'Bronze', 4),
(479, 'Ouro', 5), (479, 'Prata', 4), (479, 'Bronze', 6),
(480, 'Ouro', 4), (480, 'Prata', 1), (480, 'Bronze', 3),
(481, 'Ouro', 8), (481, 'Prata', 8), (481, 'Bronze', 3),
(482, 'Ouro', 8), (482, 'Prata', 5), (482, 'Bronze', 9),
(483, 'Ouro', 10), (483, 'Prata', 10), (483, 'Bronze', 5),
(484, 'Ouro', 11), (484, 'Prata', 11), (484, 'Bronze', 11),
(485, 'Ouro', 23), (485, 'Prata', 6), (485, 'Bronze', 5),
(486, 'Ouro', 9), (486, 'Prata', 1), (486, 'Bronze', 6),
(487, 'Ouro', 14), (487, 'Prata', 2), (487, 'Bronze', 4),
(488, 'Ouro', 4), (488, 'Prata', 3), (488, 'Bronze', 2),
(489, 'Ouro', 10), (489, 'Prata', 6), (489, 'Bronze', 5),
(490, 'Ouro', 1), (490, 'Prata', 1), (490, 'Bronze', 10);

-- Vallefoglia
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(491, 'Ouro', 3), (491, 'Prata', 9), (491, 'Bronze', 4),
(492, 'Ouro', 5), (492, 'Prata', 4), (492, 'Bronze', 2),
(493, 'Ouro', 5), (493, 'Prata', 2), (493, 'Bronze', 3),
(494, 'Ouro', 10), (494, 'Prata', 5), (494, 'Bronze', 2),
(495, 'Ouro', 4), (495, 'Prata', 9), (495, 'Bronze', 3),
(496, 'Ouro', 2), (496, 'Prata', 7), (496, 'Bronze', 2),
(497, 'Ouro', 1), (497, 'Prata', 2), (497, 'Bronze', 5),
(498, 'Ouro', 14), (498, 'Prata', 8), (498, 'Bronze', 4),
(499, 'Ouro', 2), (499, 'Prata', 7), (499, 'Bronze', 5),
(500, 'Ouro', 0), (500, 'Prata', 2), (500, 'Bronze', 2),
(501, 'Ouro', 7), (501, 'Prata', 3), (501, 'Bronze', 4),
(502, 'Ouro', 0), (502, 'Prata', 0), (502, 'Bronze', 0),
(503, 'Ouro', 2), (503, 'Prata', 2), (503, 'Bronze', 4);

-- Roma
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(504, 'Ouro', 17), (504, 'Prata', 10), (504, 'Bronze', 14),
(505, 'Ouro', 4), (505, 'Prata', 1), (505, 'Bronze', 0),
(506, 'Ouro', 9), (506, 'Prata', 13), (506, 'Bronze', 5),
(507, 'Ouro', 3), (507, 'Prata', 2), (507, 'Bronze', 0),
(508, 'Ouro', 9), (508, 'Prata', 7), (508, 'Bronze', 6),
(509, 'Ouro', 5), (509, 'Prata', 4), (509, 'Bronze', 1),
(510, 'Ouro', 3), (510, 'Prata', 2), (510, 'Bronze', 0),
(511, 'Ouro', 5), (511, 'Prata', 3), (511, 'Bronze', 0),
(512, 'Ouro', 4), (512, 'Prata', 1), (512, 'Bronze', 2),
(513, 'Ouro', 5), (513, 'Prata', 1), (513, 'Bronze', 10),
(514, 'Ouro', 6), (514, 'Prata', 7), (514, 'Bronze', 2),
(515, 'Ouro', 5), (515, 'Prata', 2), (515, 'Bronze', 1),
(516, 'Ouro', 1), (516, 'Prata', 1), (516, 'Bronze', 7),
(517, 'Ouro', 4), (517, 'Prata', 2), (517, 'Bronze', 0);

-- Firenze
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(518, 'Ouro', 5), (518, 'Prata', 6), (518, 'Bronze', 7),
(519, 'Ouro', 2), (519, 'Prata', 1), (519, 'Bronze', 1),
(520, 'Ouro', 9), (520, 'Prata', 8), (520, 'Bronze', 8),
(521, 'Ouro', 4), (521, 'Prata', 5), (521, 'Bronze', 1),
(522, 'Ouro', 1), (522, 'Prata', 1), (522, 'Bronze', 0),
(523, 'Ouro', 2), (523, 'Prata', 0), (523, 'Bronze', 0),
(524, 'Ouro', 6), (524, 'Prata', 2), (524, 'Bronze', 0),
(525, 'Ouro', 6), (525, 'Prata', 1), (525, 'Bronze', 1),
(526, 'Ouro', 10), (526, 'Prata', 7), (526, 'Bronze', 4),
(527, 'Ouro', 4), (527, 'Prata', 1), (527, 'Bronze', 0),
(528, 'Ouro', 16), (528, 'Prata', 5), (528, 'Bronze', 3),
(529, 'Ouro', 3), (529, 'Prata', 1), (529, 'Bronze', 1),
(530, 'Ouro', 7), (530, 'Prata', 10), (530, 'Bronze', 8),
(531, 'Ouro', 4), (531, 'Prata', 3), (531, 'Bronze', 0);

-- Perugia
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(532, 'Ouro', 0), (532, 'Prata', 1), (532, 'Bronze', 0),
(533, 'Ouro', 2), (533, 'Prata', 2), (533, 'Bronze', 2),
(534, 'Ouro', 1), (534, 'Prata', 11), (534, 'Bronze', 5),
(535, 'Ouro', 1), (535, 'Prata', 0), (535, 'Bronze', 4),
(536, 'Ouro', 3), (536, 'Prata', 0), (536, 'Bronze', 0),
(537, 'Ouro', 1), (537, 'Prata', 0), (537, 'Bronze', 2),
(538, 'Ouro', 2), (538, 'Prata', 2), (538, 'Bronze', 0),
(539, 'Ouro', 3), (539, 'Prata', 2), (539, 'Bronze', 3),
(540, 'Ouro', 5), (540, 'Prata', 4), (540, 'Bronze', 1),
(541, 'Ouro', 3), (541, 'Prata', 1), (541, 'Bronze', 2),
(542, 'Ouro', 5), (542, 'Prata', 0), (542, 'Bronze', 0),
(543, 'Ouro', 2), (543, 'Prata', 5), (543, 'Bronze', 2),
(544, 'Ouro', 8), (544, 'Prata', 4), (544, 'Bronze', 6),
(545, 'Ouro', 0), (545, 'Prata', 0), (545, 'Bronze', 0);

-- UYBA Busto Arsizio
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(546, 'Ouro', 0), (546, 'Prata', 3), (546, 'Bronze', 4),
(547, 'Ouro', 3), (547, 'Prata', 4), (547, 'Bronze', 2),
(548, 'Ouro', 3), (548, 'Prata', 6), (548, 'Bronze', 4),
(549, 'Ouro', 7), (549, 'Prata', 5), (549, 'Bronze', 1),
(550, 'Ouro', 3), (550, 'Prata', 1), (550, 'Bronze', 1),
(551, 'Ouro', 2), (551, 'Prata', 1), (551, 'Bronze', 1),
(552, 'Ouro', 8), (552, 'Prata', 9), (552, 'Bronze', 8),
(553, 'Ouro', 2), (553, 'Prata', 6), (553, 'Bronze', 3),
(554, 'Ouro', 1), (554, 'Prata', 1), (554, 'Bronze', 0),
(555, 'Ouro', 16), (555, 'Prata', 7), (555, 'Bronze', 5),
(556, 'Ouro', 2), (556, 'Prata', 3), (556, 'Bronze', 4),
(557, 'Ouro', 2), (557, 'Prata', 1), (557, 'Bronze', 1),
(558, 'Ouro', 0), (558, 'Prata', 1), (558, 'Bronze', 0),
(559, 'Ouro', 0), (559, 'Prata', 1), (559, 'Bronze', 2);

-- Pinerolo
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(560, 'Ouro', 0), (560, 'Prata', 1), (560, 'Bronze', 1),
(561, 'Ouro', 0), (561, 'Prata', 0), (561, 'Bronze', 0),
(562, 'Ouro', 2), (562, 'Prata', 3), (562, 'Bronze', 8),
(563, 'Ouro', 13), (563, 'Prata', 9), (563, 'Bronze', 11),
(564, 'Ouro', 1), (564, 'Prata', 4), (564, 'Bronze', 4),
(565, 'Ouro', 5), (565, 'Prata', 4), (565, 'Bronze', 5),
(566, 'Ouro', 1), (566, 'Prata', 1), (566, 'Bronze', 1),
(567, 'Ouro', 4), (567, 'Prata', 9), (567, 'Bronze', 6),
(568, 'Ouro', 1), (568, 'Prata', 3), (568, 'Bronze', 2),
(569, 'Ouro', 3), (569, 'Prata', 1), (569, 'Bronze', 2),
(570, 'Ouro', 7), (570, 'Prata', 4), (570, 'Bronze', 4),
(571, 'Ouro', 5), (571, 'Prata', 2), (571, 'Bronze', 5),
(572, 'Ouro', 0), (572, 'Prata', 1), (572, 'Bronze', 1),
(573, 'Ouro', 2), (573, 'Prata', 2), (573, 'Bronze', 2);

-- Talmassons
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(574, 'Ouro', 0), (574, 'Prata', 1), (574, 'Bronze', 1),
(575, 'Ouro', 1), (575, 'Prata', 2), (575, 'Bronze', 1),
(576, 'Ouro', 18), (576, 'Prata', 3), (576, 'Bronze', 2),
(577, 'Ouro', 1), (577, 'Prata', 6), (577, 'Bronze', 2),
(578, 'Ouro', 0), (578, 'Prata', 2), (578, 'Bronze', 2),
(579, 'Ouro', 16), (579, 'Prata', 10), (579, 'Bronze', 8),
(580, 'Ouro', 6), (580, 'Prata', 5), (580, 'Bronze', 7),
(581, 'Ouro', 0), (581, 'Prata', 0), (581, 'Bronze', 0),
(582, 'Ouro', 17), (582, 'Prata', 8), (582, 'Bronze', 9),
(583, 'Ouro', 0), (583, 'Prata', 1), (583, 'Bronze', 0),
(584, 'Ouro', 5), (584, 'Prata', 1), (584, 'Bronze', 4),
(585, 'Ouro', 0), (585, 'Prata', 0), (585, 'Bronze', 0),
(586, 'Ouro', 2), (586, 'Prata', 1), (586, 'Bronze', 1);

-- Cuneo
INSERT INTO MedalhasJ (jogadora_id, tipo, qntd) VALUES 
(587, 'Ouro', 2), (587, 'Prata', 2), (587, 'Bronze', 1),
(588, 'Ouro', 10), (588, 'Prata', 8), (588, 'Bronze', 3),
(589, 'Ouro', 34), (589, 'Prata', 19), (589, 'Bronze', 15),
(590, 'Ouro', 4), (590, 'Prata', 3), (590, 'Bronze', 6),
(591, 'Ouro', 4), (591, 'Prata', 10), (591, 'Bronze', 7),
(592, 'Ouro', 13), (592, 'Prata', 9), (592, 'Bronze', 3),
(593, 'Ouro', 8), (593, 'Prata', 0), (593, 'Bronze', 0),
(594, 'Ouro', 3), (594, 'Prata', 0), (594, 'Bronze', 2),
(595, 'Ouro', 0), (595, 'Prata', 0), (595, 'Bronze', 0),
(596, 'Ouro', 0), (596, 'Prata', 1), (596, 'Bronze', 6),
(597, 'Ouro', 3), (597, 'Prata', 2), (597, 'Bronze', 0),
(598, 'Ouro', 1), (598, 'Prata', 2), (598, 'Bronze', 5),
(599, 'Ouro', 1), (599, 'Prata', 0), (599, 'Bronze', 0),
(600, 'Ouro', 3), (569, 'Prata', 1), (569, 'Bronze', 2);

-- Tabela Dream Times
CREATE TABLE DreamTimes (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
criador VARCHAR(100),
nacionalidade VARCHAR(50)
);
ALTER TABLE DreamTimes AUTO_INCREMENT = 601;

-- Relacionamento Jogadora-DreamTimes (Participa)
CREATE TABLE JogadoraDreamTimes (
jogadora_id INT,
dreamtimes_id INT,
PRIMARY KEY (jogadora_id, dreamtimes_id),
FOREIGN KEY (jogadora_id) REFERENCES Jogadora(id),
FOREIGN KEY (dreamtimes_id) REFERENCES DreamTimes(id)
);
-- drop database volei;

select * from Jogadora;