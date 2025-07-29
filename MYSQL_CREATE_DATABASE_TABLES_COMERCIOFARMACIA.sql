-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS ComercioFarmacia;

-- Selecionar o banco de dados para uso
USE ComercioFarmacia;

-- Tabela: CadastroProdutoServico
CREATE TABLE CadastroProduto (
    IdCadastroProduto INT AUTO_INCREMENT PRIMARY KEY,
	NomeProduto VARCHAR(255) NOT NULL,
    CodBarraProduto BIGINT NOT NULL,
    InformeProduto VARCHAR(255) NOT NULL,
    Fornecedor VARCHAR(255) NOT NULL,
    TipoFornecedor VARCHAR(100) NOT NULL,
    QuantidadeProduto INT NOT NULL
);

-- Tabela: CadastroUsuario
CREATE TABLE CadastroCliente (
    IDCadastroCliente INT AUTO_INCREMENT PRIMARY KEY,
    NomeCliente VARCHAR(255) NOT NULL,
    DadosCliente VARCHAR(255) NOT NULL,
    ProdutoCliente VARCHAR(100) NOT NULL
);

CREATE TABLE DadosCliente (
	IDDadosCliente INT AUTO_INCREMENT PRIMARY KEY,
	CpfCliente VARCHAR(15) NOT NULL,
	EnderecoCliente VARCHAR(255) NOT NULL,
	EmailCliente VARCHAR(50) NOT NULL,
	TelefoneCliente INT NOT NULL
);

CREATE TABLE ProdutoCliente (
	IDProdutoCliente INT AUTO_INCREMENT PRIMARY KEY,
	NomeProduto VARCHAR(255) NOT NULL,
	InformeProduto VARCHAR(255) NOT NULL,
	CodBarraProduto BIGINT NOT NULL,
	QuantidadeProduto INT NOT NULL
);

-- Tabela: EstoqueProduto
CREATE TABLE EstoqueProduto (
    IdEstoqueProduto INT AUTO_INCREMENT PRIMARY KEY,
    CodBarraProduto BIGINT NOT NULL,
    FornecedorEst VARCHAR(255) NOT NULL,
    NumeroNota BIGINT NOT NULL,
    InformeProdutoEst VARCHAR(255) NOT NULL,
    Unidade INT NOT NULL,
    EstMinimo INT NOT NULL,
    EstMaximo INT NOT NULL,
    ValidadeEst DATE NOT NULL,
    PrecoCusto DECIMAL(10,2) NOT NULL,
    PrecoVenda DECIMAL(10,2) NOT NULL,
    QuantidadeEst INT NOT NULL,
    Desativa CHAR(1) NOT NULL DEFAULT 'N',
    CHECK (Desativa IN ('S', 'N'))
);

-- Tabela: FornecedorProduto
CREATE TABLE FornecedorProduto (
    Cnpj BIGINT PRIMARY KEY,
    CodBarraFornecedor BIGINT NOT NULL,
    InformeProdutoForn VARCHAR(255) NOT NULL,
    NomeFornecedor VARCHAR(255) NOT NULL,
    EndFornecedor VARCHAR(255) NOT NULL
);
