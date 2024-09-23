CREATE TABLE Seguro (
    apolice_seg INT PRIMARY KEY AUTO_INCREMENT, 
    data_assinatura DATE NOT NULL,
    valor DECIMAL (10, 2) NOT NULL
);

CREATE TABLE Veiculo (
    placa VARCHAR(10) PRIMARY KEY,
    ano INT NOT NULL,
    fabricante VARCHAR (50) NOT NULL,
    modelo VARCHAR (50) NOT NULL,
    cor VARCHAR (20), 
    apolice_veic INT,
    FOREIGN KEY (apolice_veic) REFERENCES Seguro (apolice_seg)
);

INSERT INTO Seguro (data_assinatura, valor) VALUES ('2023-01-15', 1500.50);
INSERT INTO Seguro (data_assinatura, valor) VALUES ('2023-02-10', 2300.00);
INSERT INTO Seguro (data_assinatura, valor) VALUES ('2023-03-05', 1800.75);
INSERT INTO Seguro (data_assinatura, valor) VALUES ('2023-04-20', 1950.00);
INSERT INTO Seguro (data_assinatura, valor) VALUES ('2023-05-30', 2500.99);

INSERT INTO Veiculo (placa, ano, fabricante, modelo, cor, apolice_veic) VALUES ('ABC1234', 2020, 'Toyota', 'Corolla', 'Preto', 1);
INSERT INTO Veiculo (placa, ano, fabricante, modelo, cor, apolice_veic) VALUES ('XYZ5678', 2019, 'Honda', 'Civic', 'Prata', 2);
INSERT INTO Veiculo (placa, ano, fabricante, modelo, cor, apolice_veic) VALUES ('DEF9101', 2021, 'Ford', 'Ranger', 'Branco', 3);
INSERT INTO Veiculo (placa, ano, fabricante, modelo, cor, apolice_veic) VALUES ('GHI2345', 2022, 'Chevrolet', 'Onix', 'Vermelho', 4);
INSERT INTO Veiculo (placa, ano, fabricante, modelo, cor, apolice_veic) VALUES ('JKL6789', 2023, 'Volkswagen', 'Tiguan', 'Azul', 5);

SELECT * FROM Veiculo INNER JOIN Seguro ON Veiculo.apolice_veic = Seguro.apolice_seg WHERE ano <= 2021;
