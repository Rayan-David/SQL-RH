# Banco de Dados de Recursos Humanos (RH)

Este documento descreve a estrutura, as operações contidas no arquivo `banco(rh)_2.sql` e o processo de importação de dados utilizando o arquivo `RH(banco).csv`. O projeto é focado na criação de uma base de dados para gestão de Recursos Humanos e demonstra o uso de consultas de seleção e filtragem de dados (DQL).

## Estrutura do Banco de Dados

O script cria um banco de dados chamado `rh` contendo a seguinte tabela principal:

### Tabela: `funcionarios`

Armazena as informações básicas dos colaboradores da empresa.

* **id:** `INT` (Chave Primária, Auto Incremento, Obrigatório) - Identificador único do funcionário.
* **nomecompleto:** `VARCHAR(50)` (Obrigatório) - Nome completo do funcionário.
* **email:** `VARCHAR(50)` (Único, Obrigatório) - Endereço de e-mail corporativo (não permite duplicação).
* **cargo:** `VARCHAR(50)` (Obrigatório) - Posição ocupada pelo funcionário na empresa.
* **departamento:** `VARCHAR(50)` (Opcional) - Setor onde o funcionário atua.

## Importação de Dados (CSV)

O projeto inclui o arquivo `RH(banco).csv`, que contém os registros a serem inseridos no banco de dados. 

* **Origem:** Os dados presentes neste arquivo foram gerados a partir da submissão de um formulário.
* **Uso:** O arquivo CSV é utilizado para popular a tabela `funcionarios` de forma ágil, importando os registros diretamente para o MySQL Workbench sem a necessidade de criar múltiplos comandos `INSERT` manualmente.

## Operações e Consultas Abordadas

Após a importação dos dados, o arquivo `banco(rh)_2.sql` contém diversas consultas práticas demonstrando conceitos de extração:

### 1. Seleção Básica
* `SELECT * FROM funcionarios`: Retorna todos os registros e colunas da tabela.
* Seleção de colunas específicas, como `nomecompleto` e `cargo`.

### 2. Filtros e Operadores (`WHERE`)
* **Igualdade:** Filtra funcionários por um cargo específico (ex: `WHERE cargo='Analista'`).
* **Operador LIKE:** Busca registros baseados em padrões de texto. O script demonstra a busca por e-mails que terminam com a letra "M" (`LIKE '%M'`).

### 3. Funções de Agregação
* `COUNT(*)`: Conta o número total de registros (funcionários) na tabela.
* `COUNT(departamento)`: Conta o número de registros onde a coluna departamento possui um valor preenchido (ignorando valores nulos).

### 4. Ordenação (`ORDER BY`)
* Ordenação alfabética crescente simples, utilizando a coluna `nomecompleto`.
* Ordenação múltipla e decrescente: `ORDER BY nomecompleto DESC, email`, que ordena os nomes de forma decrescente (Z a A) e utiliza o e-mail como critério de desempate.

## Como Utilizar no MySQL Workbench

1. Faça o download dos arquivos `banco(rh)_2.sql` e `RH(banco).csv`.
2. Abra o MySQL Workbench e conecte-se ao seu servidor.
3. Abra e execute o script `banco(rh)_2.sql` (ou apenas a parte DDL de criação) para criar o banco de dados `rh` e a tabela `funcionarios`.
4. No painel de navegação (Navigator) à esquerda, atualize os esquemas (Schemas), abra o banco `rh`, clique com o botão direito sobre a tabela `funcionarios` e selecione **"Table Data Import Wizard"**.
5. Siga os passos do assistente apontando para o arquivo `RH(banco).csv` para importar os dados do formulário para a tabela.
6. Após concluir a importação, execute as instruções de consulta (`SELECT`) do script para analisar os dados inseridos.