CREATE DATABASE BookWorms;

Use BookWorms;


CREATE TABLE Membros (
    ID_user INT PRIMARY KEY,
    Nome_user VARCHAR(255),
    Senha VARCHAR(255),
    Email VARCHAR(255),
    Data_inscricao DATE,
    ID_clube INT,
    ID_endereco INT,
);

CREATE TABLE Endereco (
    ID_endereco INT PRIMARY KEY,
    Cidade VARCHAR(255),
    UF VARCHAR(2),
    CEP INT,
    Rua VARCHAR(255),
    Numero INT,
    Bairro VARCHAR(255)
);

CREATE TABLE Clubes_de_Leitura (
    ID_clube INT PRIMARY KEY,
    Nome_clube VARCHAR(255),
    Descricao TEXT,
    Id_user INT,
    ISBN INT,
);

CREATE TABLE Livros (
    ISBN INT PRIMARY KEY,
    Titulo VARCHAR(255),
    Genero VARCHAR(255),
    Editora VARCHAR(255),
    Sinopse VARCHAR(255),
    Autor VARCHAR(255)
);

CREATE TABLE Discussoes (
    ID_discussoes INT PRIMARY KEY,
    Conteudo VARCHAR(255),
    Data_Hora DATETIME,
    ID_user INT,
    ISBN INT,
    ID_clube INT,
);

CREATE TABLE Comentarios (
    ID_comentarios INT PRIMARY KEY,
    Texto VARCHAR(255),
    Data_Hora DATETIME,
    ID_user INT,
    ID_discussoes INT,
    ID_clube INT,
    ISBN INT,
);

INSERT INTO Membros (ID_user, Nome_user, Senha, Email, Data_inscricao, ID_clube, ID_endereco) VALUES
(1, 'Alice', 'senha123', 'alice@example.com', '2022-01-01', 1, 1),
(2, 'Bob', 'senha123', 'bob@example.com', '2022-01-02', 1, 2),
(3, 'Charlie', 'senha123', 'charlie@example.com', '2022-01-03', 2, 3),
(4, 'David', 'senha123', 'david@example.com', '2022-01-04', 2, 4),
(5, 'Eve', 'senha123', 'eve@example.com', '2022-01-05', 3, 5),
(6, 'Frank', 'senha123', 'frank@example.com', '2022-01-06', 3, 6),
(7, 'Grace', 'senha123', 'grace@example.com', '2022-01-07', 4, 7),
(8, 'Heidi', 'senha123', 'heidi@example.com', '2022-01-08', 4, 8),
(9, 'Ivan', 'senha123', 'ivan@example.com', '2022-01-09', 5, 9),
(10, 'Judy', 'senha123', 'judy@example.com', '2022-01-10', 5, 10),
(11, 'Karl', 'senha123', 'karl@example.com', '2022-01-11', 6, 11),
(12, 'Lara', 'senha123', 'lara@example.com', '2022-01-12', 6, 12),
(13, 'Mallory', 'senha123', 'mallory@example.com', '2022-01-13', 7, 13),
(14, 'Nina', 'senha123', 'nina@example.com', '2022-01-14', 7, 14),
(15, 'Oscar', 'senha123', 'oscar@example.com', '2022-01-15', 8, 15),
(16, 'Peggy', 'senha123', 'peggy@example.com', '2022-01-16', 8, 16),
(17, 'Quentin', 'senha123', 'quentin@example.com', '2022-01-17', 9, 17),
(18, 'Rupert', 'senha123', 'rupert@example.com', '2022-01-18', 9, 18),
(19, 'Sybil', 'senha123', 'sybil@example.com', '2022-01-19', 10, 19),
(20, 'Trent', 'senha123', 'trent@example.com', '2022-01-20', 10, 20);



INSERT INTO Endereco (ID_endereco, Cidade, UF, CEP, Rua, Numero, Bairro) VALUES
(1, 'S�o Paulo', 'SP', 10000000, 'Rua A', 10, 'Bairro A'),
(2, 'Rio de Janeiro', 'RJ', 20000000, 'Rua B', 20, 'Bairro B'),
(3, 'Belo Horizonte', 'MG', 30000000, 'Rua C', 30, 'Bairro C'),
(4, 'Porto Alegre', 'RS', 40000000, 'Rua D', 40, 'Bairro D'),
(5, 'Curitiba', 'PR', 50000000, 'Rua E', 50, 'Bairro E'),
(6, 'Recife', 'PE', 60000000, 'Rua F', 60, 'Bairro F'),
(7, 'Fortaleza', 'CE', 70000000, 'Rua G', 70, 'Bairro G'),
(8, 'Salvador', 'BA', 80000000, 'Rua H', 80, 'Bairro H'),
(9, 'Florian�polis', 'SC', 90000000, 'Rua I', 90, 'Bairro I'),
(10, 'Manaus', 'AM', 10000001, 'Rua J', 100, 'Bairro J'),
(11, 'Bel�m', 'PA', 20000001, 'Rua K', 110, 'Bairro K'),
(12, 'Goi�nia', 'GO', 30000001, 'Rua L', 120, 'Bairro L'),
(13, 'Campinas', 'SP', 40000001, 'Rua M', 130, 'Bairro M'),
(14, 'S�o Lu�s', 'MA', 50000001, 'Rua N', 140, 'Bairro N'),
(15, 'Macei�', 'AL', 60000001, 'Rua O', 150, 'Bairro O'),
(16, 'Natal', 'RN', 70000001, 'Rua P', 160, 'Bairro P'),
(17, 'Teresina', 'PI', 80000001, 'Rua Q', 170, 'Bairro Q'),
(18, 'Jo�o Pessoa', 'PB', 90000001, 'Rua R', 180, 'Bairro R'),
(19, 'Aracaju', 'SE', 10000002, 'Rua S', 190, 'Bairro S'),
(20, 'Palmas', 'TO', 20000002, 'Rua T', 200, 'Bairro T');



INSERT INTO Clubes_de_Leitura (ID_clube, Nome_clube, Descricao, Id_user, ISBN) VALUES
(1, 'Clube de Fic��o Cient�fica', 'Discuss�o de livros de fic��o cient�fica', 1, 12345),
(2, 'Clube de Romance', 'Discuss�o de livros de romance', 2, 23456),
(3, 'Clube de Mist�rio', 'Discuss�o de livros de mist�rio', 3, 34567),
(4, 'Clube de N�o-Fic��o', 'Discuss�o de livros de n�o-fic��o', 4, 45678),
(5, 'Clube de Fantasia', 'Discuss�o de livros de fantasia', 5, 56789),
(6, 'Clube de Biografias', 'Discuss�o de biografias', 6, 67890),
(7, 'Clube de Hist�ria', 'Discuss�o de livros de hist�ria', 7, 78901),
(8, 'Clube de Poesia', 'Discuss�o de poesia', 8, 89012),
(9, 'Clube de Contos', 'Discuss�o de contos', 9, 90123),
(10, 'Clube de Aventura', 'Discuss�o de livros de aventura', 10, 10123),
(11, 'Clube de Horror', 'Discuss�o de livros de horror', 11, 11123),
(12, 'Clube de Filosofia', 'Discuss�o de filosofia', 12, 12123),
(13, 'Clube de Psicologia', 'Discuss�o de livros de psicologia', 13, 13123),
(14, 'Clube de Economia', 'Discuss�o de economia', 14, 14123),
(15, 'Clube de Pol�tica', 'Discuss�o de pol�tica', 15, 15123),
(16, 'Clube de Arte', 'Discuss�o de livros de arte', 16, 16123),
(17, 'Clube de M�sica', 'Discuss�o de livros de m�sica', 17, 17123),
(18, 'Clube de Cinema', 'Discuss�o de cinema', 18, 18123),
(19, 'Clube de Culin�ria', 'Discuss�o de livros de culin�ria', 19, 19123),
(20, 'Clube de Esportes', 'Discuss�o de livros de esportes', 20, 20123);



INSERT INTO Livros (ISBN, Titulo, Genero, Editora, Sinopse, Autor) VALUES
(12345, 'Livro de Fic��o Cient�fica', 'Fic��o Cient�fica', 'Editora A', 'Sinopse do livro de fic��o cient�fica', 'Autor A'),
(23456, 'Livro de Romance', 'Romance', 'Editora B', 'Sinopse do livro de romance', 'Autor B'),
(34567, 'Livro de Mist�rio', 'Mist�rio', 'Editora C', 'Sinopse do livro de mist�rio', 'Autor C'),
(45678, 'Livro de N�o-Fic��o', 'N�o-Fic��o', 'Editora D', 'Sinopse do livro de n�o-fic��o', 'Autor D'),
(56789, 'Livro de Fantasia', 'Fantasia', 'Editora E', 'Sinopse do livro de fantasia', 'Autor E'),
(67890, 'Biografia Famosa', 'Biografia', 'Editora F', 'Sinopse da biografia famosa', 'Autor F'),
(78901, 'Livro de Hist�ria', 'Hist�ria', 'Editora G', 'Sinopse do livro de hist�ria', 'Autor G'),
(89012, 'Cole��o de Poesias', 'Poesia', 'Editora H', 'Sinopse da cole��o de poesias', 'Autor H'),
(90123, 'Livro de Contos', 'Contos', 'Editora I', 'Sinopse do livro de contos', 'Autor I'),
(10123, 'Livro de Aventura', 'Aventura', 'Editora J', 'Sinopse do livro de aventura', 'Autor J'),
(11123, 'Livro de Horror', 'Horror', 'Editora K', 'Sinopse do livro de horror', 'Autor K'),
(12123, 'Livro de Filosofia', 'Filosofia', 'Editora L', 'Sinopse do livro de filosofia', 'Autor L'),
(13123, 'Livro de Psicologia', 'Psicologia', 'Editora M', 'Sinopse do livro de psicologia', 'Autor M'),
(14123, 'Livro de Economia', 'Economia', 'Editora N', 'Sinopse do livro de economia', 'Autor N'),
(15123, 'Livro de Pol�tica', 'Pol�tica', 'Editora O', 'Sinopse do livro de pol�tica', 'Autor O'),
(16123, 'Livro de Arte', 'Arte', 'Editora P', 'Sinopse do livro de arte', 'Autor P'),
(17123, 'Livro de M�sica', 'M�sica', 'Editora Q', 'Sinopse do livro de m�sica', 'Autor Q'),
(18123, 'Livro de Cinema', 'Cinema', 'Editora R', 'Sinopse do livro de cinema', 'Autor R'),
(19123, 'Livro de Culin�ria', 'Culin�ria', 'Editora S', 'Sinopse do livro de culin�ria', 'Autor S'),
(20123, 'Livro de Esportes', 'Esportes', 'Editora T', 'Sinopse do livro de esportes', 'Autor T');


INSERT INTO Discussoes (ID_discussoes, Conteudo, Data_Hora, ID_user, ISBN, ID_clube) VALUES
(1, 'Discuss�o sobre a obra de fic��o cient�fica', '2023-01-01 10:00:00', 1, 12345, 1),
(2, 'An�lise do romance contempor�neo', '2023-01-02 11:00:00', 2, 23456, 2),
(3, 'Mist�rios e enigmas revelados', '2023-01-03 12:00:00', 3, 34567, 3),
(4, 'Reflex�es sobre a n�o-fic��o moderna', '2023-01-04 13:00:00', 4, 45678, 4),
(5, 'Fantasia e mundos imagin�rios', '2023-01-05 14:00:00', 5, 56789, 5),
(6, 'Biografias inspiradoras', '2023-01-06 15:00:00', 6, 67890, 6),
(7, 'Hist�rias e legados hist�ricos', '2023-01-07 16:00:00', 7, 78901, 7),
(8, 'Poesias que tocam o cora��o', '2023-01-08 17:00:00', 8, 89012, 8),
(9, 'Contos que encantam', '2023-01-09 18:00:00', 9, 90123, 9),
(10, 'Aventuras �picas e emocionantes', '2023-01-10 19:00:00', 10, 10123, 10),
(11, 'Hist�rias de horror que assustam', '2023-01-11 20:00:00', 11, 11123, 11),
(12, 'Filosofias que mudam vidas', '2023-01-12 21:00:00', 12, 12123, 12),
(13, 'Psicologia e comportamento humano', '2023-01-13 22:00:00', 13, 13123, 13),
(14, 'Economia e suas implica��es', '2023-01-14 23:00:00', 14, 14123, 14),
(15, 'Debates sobre pol�tica atual', '2023-01-15 09:00:00', 15, 15123, 15),
(16, 'Apreciando a arte', '2023-01-16 08:00:00', 16, 16123, 16),
(17, 'M�sica que inspira', '2023-01-17 07:00:00', 17, 17123, 17),
(18, 'Cinema e suas hist�rias', '2023-01-18 06:00:00', 18, 18123, 18),
(19, 'Culin�ria e receitas incr�veis', '2023-01-19 05:00:00', 19, 19123, 19),
(20, 'Esportes e suas hist�rias', '2023-01-20 04:00:00', 20, 20123, 20);



INSERT INTO Comentarios (ID_comentarios, Texto, Data_Hora, ID_user, ID_discussoes, ID_clube, ISBN) VALUES
(1, '�tima discuss�o sobre fic��o cient�fica!', '2023-01-01 11:00:00', 2, 1, 1, 12345),
(2, 'Concordo com a an�lise do romance.', '2023-01-02 12:00:00', 3, 2, 2, 23456),
(3, 'Mist�rio muito bem explicado.', '2023-01-03 13:00:00', 4, 3, 3, 34567),
(4, 'Aprendi muito sobre n�o-fic��o.', '2023-01-04 14:00:00', 5, 4, 4, 45678),
(5, 'Fantasia sempre me fascina.', '2023-01-05 15:00:00', 6, 5, 5, 56789),
(6, 'Biografias s�o inspiradoras.', '2023-01-06 16:00:00', 7, 6, 6, 67890),
(7, 'Hist�ria � uma li��o de vida.', '2023-01-07 17:00:00', 8, 7, 7, 78901),
(8, 'Poesias que tocam a alma.', '2023-01-08 18:00:00', 9, 8, 8, 89012),
(9, 'Contos s�o sempre encantadores.', '2023-01-09 19:00:00', 10, 9, 9, 90123),
(10, 'Aventura cheia de emo��o!', '2023-01-10 20:00:00', 11, 10, 10, 10123),
(11, 'Horror que assusta de verdade.', '2023-01-11 21:00:00', 12, 11, 11, 11123),
(12, 'Filosofia que faz pensar.', '2023-01-12 22:00:00', 13, 12, 12, 12123),
(13, 'Psicologia muito interessante.', '2023-01-13 23:00:00', 14, 13, 13, 13123),
(14, 'Economia bem explicada.', '2023-01-14 09:00:00', 15, 14, 14, 14123),
(15, 'Debate pol�tico acirrado.', '2023-01-15 08:00:00', 16, 15, 15, 15123),
(16, 'Arte � sempre inspiradora.', '2023-01-16 07:00:00', 17, 16, 16, 16123),
(17, 'M�sica que emociona.', '2023-01-17 06:00:00', 18, 17, 17, 17123),
(18, 'Cinema � uma arte completa.', '2023-01-18 05:00:00', 19, 18, 18, 18123),
(19, 'Receitas deliciosas!', '2023-01-19 04:00:00', 20, 19, 19, 19123),
(20, 'Hist�rias de esportes s�o inspiradoras.', '2023-01-20 03:00:00', 1, 20, 20, 20123);


CREATE:

INSERT INTO Membros (ID_user, Nome_user, Senha, Email, Data_inscricao, ID_clube, ID_endereco) 
VALUES (21, 'Victor', 'senha123', 'victor@example.com', '2023-05-01', 1, 1);


Read:

SELECT * FROM Membros;


Update:

UPDATE Membros 
SET Email = 'victor_updated@example.com' 
WHERE ID_user = 21;


DELETE:

DELETE FROM Membros 
WHERE ID_user = 21;



SELECT * FROM Membros;

SELECT * FROM Livros WHERE Genero = 'Fantasia';

SELECT ISBN From Livros WHERE Genero = 'Poesia';


SELECT Comentarios.Texto, Membros.Nome_user
FROM Comentarios
JOIN Membros ON Comentarios.ID_user = Membros.ID_user
WHERE Comentarios.ID_discussoes = 1;


SELECT Clubes_de_Leitura.Nome_clube, Membros.Nome_user
FROM Clubes_de_Leitura
JOIN Membros ON Clubes_de_Leitura.ID_user = Membros.ID_user
WHERE Membros.Nome_user = 'Alice';


SELECT Livros.Titulo, Discussoes.Conteudo
FROM Livros
JOIN Discussoes ON Livros.ISBN = Discussoes.ISBN;


SELECT Membros.Nome_user, Endereco.Cidade, Endereco.Rua
FROM Membros
JOIN Endereco ON Membros.ID_endereco = Endereco.ID_endereco
WHERE Membros.Nome_user = 'Bob';


SELECT Discussoes.Conteudo, Clubes_de_Leitura.Nome_clube
FROM Discussoes
JOIN Clubes_de_Leitura ON Discussoes.ID_clube = Clubes_de_Leitura.ID_clube;


SELECT Clubes_de_Leitura.Nome_clube, COUNT(Membros.ID_user) AS Numero_de_Membros
FROM Membros
JOIN Clubes_de_Leitura ON Membros.ID_clube = Clubes_de_Leitura.ID_clube
GROUP BY Clubes_de_Leitura.Nome_clube;


SELECT Comentarios.Texto, Comentarios.Data_Hora, Membros.Nome_user
FROM Comentarios
JOIN Membros ON Comentarios.ID_user = Membros.ID_user
ORDER BY Comentarios.Data_Hora DESC;