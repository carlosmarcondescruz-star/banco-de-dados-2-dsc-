- Tabela Clientes
CREATE TABLE Clientes (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    nomeCliente VARCHAR(100) NOT NULL,
    emailCliente VARCHAR(100) NOT NULL UNIQUE
);

-- Tabela Compras
CREATE TABLE Compras (
    CompraID INTEGER PRIMARY KEY AUTOINCREMENT,
    ClienteID INTEGER NOT NULL,
    NomeLivro VARCHAR(150) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID) ON DELETE CASCADE
);

-- Exemplos de inserção de dados (opcional)
INSERT INTO Clientes (nomeCliente, emailCliente) VALUES 
('João Silva', 'joao@email.com'),
('Maria Santos', 'maria@email.com'),
('Carlos Marcondes', 'carlos@email.com');

INSERT INTO Compras (ClienteID, NomeLivro) VALUES 
(1, 'O Senhor dos Anéis'),
(1, '1984'),
(2, 'Dom Casmurro'),
(3, 'O Cortiço');
-- Banco de Dados de Clientes e Compras
-- Adaptado para SQLite Online

-- Tabela Clientes
CREATE TABLE Clientes (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    nomeCliente VARCHAR(100) NOT NULL,
    emailCliente VARCHAR(100) NOT NULL UNIQUE
);

-- Tabela Compras
CREATE TABLE Compras (
    CompraID INTEGER PRIMARY KEY AUTOINCREMENT,
    ClienteID INTEGER NOT NULL,
    NomeLivro VARCHAR(150) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID) ON DELETE CASCADE
);

-- Exemplos de inserção de dados (opcional)
INSERT INTO Clientes (nomeCliente, emailCliente) VALUES 
('João Silva', 'joao@email.com'),
('Maria Santos', 'maria@email.com'),
('Carlos Marcondes', 'carlos@email.com');

INSERT INTO Compras (ClienteID, NomeLivro) VALUES 
(1, 'O Senhor dos Anéis'),
(1, '1984'),
(2, 'Dom Casmurro'),
(3, 'O Cortiço');
