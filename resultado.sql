CREATE TABLE Autores (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL
);


CREATE TABLE Livros (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR(150) NOT NULL,
    ISBN VARCHAR(20) UNIQUE,
    Ano_Publicacao INT,
    Autor_ID INT,
    
    FOREIGN KEY (Autor_ID) REFERENCES Autores(ID)
);

INSERT INTO Livros (Titulo, ISBN, Ano_Publicacao, Autor_ID)
VALUES ('Livro Teste', '123456789', 2023, 999);

SELECT * FROM Livros
WHERE Ano_Publicacao > 2020;