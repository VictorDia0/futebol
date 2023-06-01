CREATE DATABASE FUTEBOL;
    USE FUTEBOL;
        CREATE TABLE ClassificacaoBrasileirao (
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

        CREATE TABLE JogosDisputados (
            ID INT PRIMARY KEY,
            Rodada INT,
            TimeCasaID INT,
            TimeVisitanteID INT,
            GolsCasa INT,
            GolsVisitante INT,
            EstadioID INT
        );

        CREATE TABLE Jogadores (
            ID INT PRIMARY KEY,
            Nome VARCHAR(100),
            Posicao VARCHAR(50),
            TimeID INT
        );

        CREATE TABLE Tecnicos (
            ID INT PRIMARY KEY,
            Nome VARCHAR(100),
            Nacionalidade VARCHAR(50),
            Idade INT
        );

        CREATE TABLE Estadios (
            ID INT PRIMARY KEY,
            Nome VARCHAR(100),
            Capacidade INT,
            Cidade VARCHAR(50)
        ); 

        INSERT INTO JogosDisputados (ID, Rodada, TimeCasaID, TimeVisitanteID, GolsCasa, GolsVisitante, EstadioID)
            VALUES
                (1, 1, 1, 2, 2, 1, 1),
                (2, 1, 3, 4, 1, 1, 2),
                (3, 1, 5, 6, 0, 1, 3),
                (4, 1, 7, 8, 1, 1, 4),
                (5, 1, 9, 10, 0, 2, 5),
                (6, 1, 11, 12, 1, 0, 6),
                (7, 1, 13, 14, 1, 3, 7),
                (8, 1, 15, 16, 2, 2, 8),
                (9, 1, 17, 18, 0, 3, 9),
                (10, 1, 19, 20, 1, 2, 10);

        INSERT INTO ClassificacaoBrasileirao (ID, Nome, Pontos, JogosDisputados, Vitorias, Empates, Derrotas, GolsMarcados, GolsSofridos)
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
            (19, 'Time 19', 3, 10, 1, 0, 9, 2, 10),
            (20, 'Time 20', 2, 10, 0, 2, 8, 1, 16);


        INSERT INTO Jogadores (ID, Nome, Posicao, TimeID)
        VALUES
            (1, 'Jogador 1', 'Atacante', 1),
            (2, 'Jogador 2', 'Meio-Campista', 1),
            (3, 'Jogador 3', 'Defensor', 2),
            (4, 'Jogador 4', 'Goleiro', 2),
            (5, 'Jogador 5', 'Atacante', 3),
            (6, 'Jogador 6', 'Meio-Campista', 3),
            (7, 'Jogador 7', 'Defensor', 4),
            (8, 'Jogador 8', 'Goleiro', 4),
            (9, 'Jogador 9', 'Atacante', 5),
            (10, 'Jogador 10', 'Meio-Campista', 5),
            (11, 'Jogador 11', 'Defensor', 6),
            (12, 'Jogador 12', 'Goleiro', 6),
            (13, 'Jogador 13', 'Atacante', 7),
            (14, 'Jogador 14', 'Meio-Campista', 7),
            (15, 'Jogador 15', 'Defensor', 8),
            (16, 'Jogador 16', 'Goleiro', 8),
            (17, 'Jogador 17', 'Atacante', 9),
            (18, 'Jogador 18', 'Meio-Campista', 9),
            (19, 'Jogador 19', 'Defensor', 10),
            (20, 'Jogador 20', 'Goleiro', 10);


        INSERT INTO Tecnicos (ID, Nome, Nacionalidade, Idade)
        VALUES
            (1, 'Tecnico 1', 'Brasileiro', 45),
            (2, 'Tecnico 2', 'Brasileiro', 50),
            (3, 'Tecnico 3', 'Brasileiro', 55),
            (4, 'Tecnico 4', 'Brasileiro', 42),
            (5, 'Tecnico 5', 'Brasileiro', 48),
            (6, 'Tecnico 6', 'Brasileiro', 51),
            (7, 'Tecnico 7', 'Brasileiro', 47),
            (8, 'Tecnico 8', 'Brasileiro', 53),
            (9, 'Tecnico 9', 'Brasileiro', 39),
            (10, 'Tecnico 10', 'Brasileiro', 42),
            (11, 'Tecnico 11', 'Brasileiro', 46),
            (12, 'Tecnico 12', 'Brasileiro', 52),
            (13, 'Tecnico 13', 'Brasileiro', 43),
            (14, 'Tecnico 14', 'Brasileiro', 49),
            (15, 'Tecnico 15', 'Brasileiro', 54),
            (16, 'Tecnico 16', 'Brasileiro', 40),
            (17, 'Tecnico 17', 'Brasileiro', 44),
            (18, 'Tecnico 18', 'Brasileiro', 41),
            (19, 'Tecnico 19', 'Brasileiro', 38),
            (20, 'Tecnico 20', 'Brasileiro', 57);


        INSERT INTO Estadios (ID, Nome, Capacidade, Cidade)
        VALUES
            (1, 'Estadio 1', 50000, 'Sao Paulo'),
            (2, 'Estadio 2', 40000, 'Rio de Janeiro'),
            (3, 'Estadio 3', 35000, 'Belo Horizonte'),
            (4, 'Estadio 4', 30000, 'Salvador'),
            (5, 'Estadio 5', 45000, 'Porto Alegre'),
            (6, 'Estadio 6', 55000, 'Brasilia'),
            (7, 'Estadio 7', 40000, 'Curitiba'),
            (8, 'Estadio 8', 30000, 'Fortaleza'),
            (9, 'Estadio 9', 35000, 'Recife'),
            (10, 'Estadio 10', 45000, 'Manaus'),
            (11, 'Estadio 11', 50000, 'Sao Paulo'),
            (12, 'Estadio 12', 40000, 'Rio de Janeiro'),
            (13, 'Estadio 13', 35000, 'Belo Horizonte'),
            (14, 'Estadio 14', 30000, 'Salvador'),
            (15, 'Estadio 15', 45000, 'Porto Alegre'),
            (16, 'Estadio 16', 55000, 'Brasilia'),
            (17, 'Estadio 17', 40000, 'Curitiba'),
            (18, 'Estadio 18', 30000, 'Fortaleza'),
            (19, 'Estadio 19', 35000, 'Recife'),
            (20, 'Estadio 20', 45000, 'Manaus');


        DELIMITER $

        CREATE TRIGGER atualizar_classificacao AFTER INSERT ON JogosDisputados
        FOR EACH ROW
        BEGIN
            UPDATE ClassificacaoBrasileirao
            SET
                JogosDisputados = JogosDisputados + 1,
                GolsMarcados = GolsMarcados + NEW.GolsCasa,
                GolsSofridos = GolsSofridos + NEW.GolsVisitante
            WHERE ID = NEW.TimeCasaID;
            
            UPDATE ClassificacaoBrasileirao
            SET
                JogosDisputados = JogosDisputados + 1,
                GolsMarcados = GolsMarcados + NEW.GolsVisitante,
                GolsSofridos = GolsSofridos + NEW.GolsCasa
            WHERE ID = NEW.TimeVisitanteID;
            
            IF NEW.GolsCasa > NEW.GolsVisitante THEN
                UPDATE ClassificacaoBrasileirao
                SET
                    Pontos = Pontos + 3,
                    Vitorias = Vitorias + 1
                WHERE ID = NEW.TimeCasaID;
                
                UPDATE ClassificacaoBrasileirao
                SET
                    Derrotas = Derrotas + 1
                WHERE ID = NEW.TimeVisitanteID;
                
            ELSEIF NEW.GolsCasa < NEW.GolsVisitante THEN
                UPDATE ClassificacaoBrasileirao
                SET
                    Pontos = Pontos + 3,
                    Vitorias = Vitorias + 1
                WHERE ID = NEW.TimeVisitanteID;
                
                UPDATE ClassificacaoBrasileirao
                SET
                    Derrotas = Derrotas + 1
                WHERE ID = NEW.TimeCasaID;
                
            ELSE
                UPDATE ClassificacaoBrasileirao
                SET
                    Pontos = Pontos + 1,
                    Empates = Empates + 1
                WHERE ID = NEW.TimeCasaID;
                
                UPDATE ClassificacaoBrasileirao
                SET
                    Pontos = Pontos + 1,
                    Empates = Empates + 1
                WHERE ID = NEW.TimeVisitanteID;
                
            END IF;
        END$

        DELIMITER ;

        INSERT INTO JogosDisputados (ID, Rodada, TimeCasaID, TimeVisitanteID, GolsCasa, GolsVisitante, EstadioID)
            VALUES
                (11, 2, 2, 1, 3, 2, 2),
                (12, 2, 4, 3, 1, 1, 4),
                (13, 2, 6, 5, 2, 0, 6),
                (14, 2, 8, 7, 0, 0, 7),
                (15, 2, 10, 9, 1, 1, 9),
                (16, 2, 12, 11, 1, 2, 11),
                (17, 2, 14, 13, 0, 1, 13),
                (18, 2, 16, 15, 3, 0, 15),
                (19, 2, 18, 17, 2, 2, 17),
                (20, 2, 20, 19, 1, 0, 19);
