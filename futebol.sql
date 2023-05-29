CREATE TABLE Brasileirao (
    ID INT PRIMARY KEY NOT NULL,
    Nome VARCHAR(50),
    Pontos INT,
    JogosDisputados INT,
    Vitorias INT,
    Empates INT,
    Derrotas INT,
    GolsMarcados INT,
    GolsSofridos INT
);

CREATE TABLE Estadios (
    ID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Capacidade INT,
    Localizacao VARCHAR(100)
);

CREATE TABLE Tecnicos (
    ID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Nacionalidade VARCHAR(50),
    Idade INT
);

CREATE TABLE Jogadores (
    ID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Posicao VARCHAR(50),
    TimeID INT,
    FOREIGN KEY (TimeID) REFERENCES Brasileirao(ID)
);

CREATE TABLE Rodadas (
    ID INT PRIMARY KEY,
    Numero INT,
    Data DATE
);

INSERT INTO Brasileirao (ID, Nome, Pontos, JogosDisputados, Vitorias, Empates, Derrotas, GolsMarcados, GolsSofridos)
VALUES
    (1, 'Time 1', 20, 10, 6, 2, 2, 15, 8),
    (2, 'Time 2', 18, 10, 5, 3, 2, 12, 7),
    (3, 'Time 3', 16, 10, 4, 4, 2, 10, 6),
    (4, 'Time 4', 15, 10, 4, 3, 3, 11, 10),
    (5, 'Time 5', 14, 10, 4, 2, 4, 9, 12),
    (6, 'Time 6', 12, 10, 3, 3, 4, 8, 9),
    (7, 'Time 7', 11, 10, 3, 2, 5, 7, 11),
    (8, 'Time 8', 10, 10, 2, 4, 4, 6, 8),
    (9, 'Time 9', 10, 10, 2, 4, 4, 5, 7),
    (10, 'Time 10', 9, 10, 2, 3, 5, 4, 10),
    (11, 'Time 11', 8, 10, 2, 2, 6, 3, 12),
    (12, 'Time 12', 7, 10, 1, 4, 5, 5, 8),
    (13, 'Time 13', 7, 10, 1, 4, 5, 4, 7),
    (14, 'Time 14', 7, 10, 2, 1, 7, 3, 14),
    (15, 'Time 15', 6, 10, 1, 3, 6, 6, 12),
    (16, 'Time 16', 5, 10, 1, 2, 7, 4, 15),
    (17, 'Time 17', 4, 10, 1, 1, 8, 3, 18),
    (18, 'Time 18', 4, 10, 1, 1, 8, 2, 14),
    (19, 'Time 19', 3, 10, 1, 0, 9, 2, 10);


INSERT INTO Estadios (ID, Nome, Capacidade, Localizacao)
VALUES
    (1, 'Estádio 1', 50000, 'Cidade 1'),
    (2, 'Estádio 2', 45000, 'Cidade 2'),
    (3, 'Estádio 3', 55000, 'Cidade 3'),
    (4, 'Estádio 4', 40000, 'Cidade 4'),
    (5, 'Estádio 5', 48000, 'Cidade 5');

INSERT INTO Tecnicos (ID, Nome, Nacionalidade, Idade)
VALUES
    (1, 'Técnico 1', 'Brasileiro', 45),
    (2, 'Técnico 2', 'Argentino', 52),
    (3, 'Técnico 3', 'Português', 40),
    (4, 'Técnico 4', 'Brasileiro', 48),
    (5, 'Técnico 5', 'Espanhol', 55),
    (6, 'Técnico 6', 'Brasileiro', 42),
    (7, 'Técnico 7', 'Argentino', 50),
    (8, 'Técnico 8', 'Brasileiro', 47),
    (9, 'Técnico 9', 'Português', 41),
    (10, 'Técnico 10', 'Brasileiro', 49),
    (11, 'Técnico 11', 'Argentino', 46),
    (12, 'Técnico 12', 'Brasileiro', 43),
    (13, 'Técnico 13', 'Português', 39),
    (14, 'Técnico 14', 'Brasileiro', 44),
    (15, 'Técnico 15', 'Argentino', 51),
    (16, 'Técnico 16', 'Brasileiro', 38),
    (17, 'Técnico 17', 'Português', 54),
    (18, 'Técnico 18', 'Brasileiro', 37),
    (19, 'Técnico 19', 'Argentino', 53),
    (20, 'Técnico 20', 'Brasileiro', 36);

INSERT INTO Jogadores (ID, Nome, Posicao, TimeID)
VALUES
    (1, 'Jogador 1', 'Atacante', 1),
    (2, 'Jogador 2', 'Meio-campista', 1),
    (3, 'Jogador 3', 'Zagueiro', 2),
    (4, 'Jogador 4', 'Goleiro', 2),
    (5, 'Jogador 5', 'Atacante', 3),
    (6, 'Jogador 6', 'Meio-campista', 3),
    (7, 'Jogador 7', 'Zagueiro', 4),
    (8, 'Jogador 8', 'Goleiro', 4),
    (9, 'Jogador 9', 'Atacante', 5),
    (10, 'Jogador 10', 'Meio-campista', 5),
    (11, 'Jogador 11', 'Zagueiro', 6),
    (12, 'Jogador 12', 'Goleiro', 6),
    (13, 'Jogador 13', 'Atacante', 7),
    (14, 'Jogador 14', 'Meio-campista', 7),
    (15, 'Jogador 15', 'Zagueiro', 8),
    (16, 'Jogador 16', 'Goleiro', 8),
    (17, 'Jogador 17', 'Atacante', 9),
    (18, 'Jogador 18', 'Meio-campista', 9),
    (19, 'Jogador 19', 'Zagueiro', 10),
    (20, 'Jogador 20', 'Goleiro', 10);

INSERT INTO Rodadas (ID, Numero, Data)
VALUES
    (1, 1, '2023-01-01'),
    (2, 2, '2023-01-08'),
    (3, 3, '2023-01-15'),
    (4, 4, '2023-01-22'),
    (5, 5, '2023-01-29'),
    (6, 6, '2023-02-05'),
    (7, 7, '2023-02-12'),
    (8, 8, '2023-02-19'),
    (9, 9, '2023-02-26'),
    (10, 10, '2023-03-05'),
    (11, 11, '2023-03-12'),
    (12, 12, '2023-03-19'),
    (13, 13, '2023-03-26'),
    (14, 14, '2023-04-02'),
    (15, 15, '2023-04-09'),
    (16, 16, '2023-04-16'),
    (17, 17, '2023-04-23'),
    (18, 18, '2023-04-30'),
    (19, 19, '2023-05-07'),
    (20, 20, '2023-05-14');

CREATE TRIGGER atualizar_pontos_jogos AFTER INSERT ON Jogadores
FOR EACH ROW
BEGIN
    DECLARE time_id INT;
    SET time_id = NEW.TimeID;
    
    UPDATE Brasileirao
    SET JogosDisputados = JogosDisputados + 1,
        Pontos = (Vitorias * 3) + Empates
    WHERE ID = time_id;
END;
