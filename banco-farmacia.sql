CREATE TABLE Farmacia 
( 
    idFarmacia INT PRIMARY KEY,  
    nome_farmacia VARCHAR(100),  
    tel_farmacia VARCHAR(20),  
    CNPJ_farmacia VARCHAR(20),  
    end_farmacia VARCHAR(200)  
); 

CREATE TABLE Produto 
( 
    cod_produto INT PRIMARY KEY,  
    qnt_produto INT,  
    valor_produto DECIMAL(10,2),  
    idFarmacia INT,  
    FOREIGN KEY (idFarmacia) REFERENCES Farmacia (idFarmacia)
); 

CREATE TABLE Farmaceutico 
( 
    RG_farmaceutico VARCHAR(20) PRIMARY KEY,  
    nome_farmaceutico VARCHAR(100),  
    idFarmacia INT,  
    FOREIGN KEY (idFarmacia) REFERENCES Farmacia (idFarmacia)
); 
