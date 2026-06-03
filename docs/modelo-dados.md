# Documentação do Banco de Dados: InfoSustentabilidade Digital

Este documento descreve a modelagem do banco de dados relacional desenvolvido a partir do levantamento de informações sobre pontos de coleta de resíduos eletrônicos nos municípios de Vidal Ramos, Salete, Ituporanga e Santa Terezinha.

## 📌 Visão Geral do Esquema

O banco de dados foi projetado para armazenar informações relacionadas aos locais de descarte de resíduos eletrônicos, materiais aceitos, procedimentos de descarte, evidências coletadas durante a pesquisa e análises críticas realizadas em cada município.

A tabela principal é **pontos_coleta**, que centraliza as informações dos locais identificados. As tabelas **materiais_aceitos**, **procedimentos_descarte** e **evidencias** possuem relacionamento do tipo 1:N (um para muitos) com a tabela principal através de chaves estrangeiras.

A tabela **analise_critica** armazena avaliações qualitativas sobre a situação do descarte de lixo eletrônico em cada município pesquisado.

---

# 🗄️ Estrutura das Tabelas

## 1. pontos_coleta

Armazena as informações principais dos locais responsáveis pelo recebimento de resíduos eletrônicos.

### Campos

* **id_ponto (INT)**: Chave Primária. Identificador único do ponto de coleta.
* **nome (VARCHAR)**: Nome do estabelecimento ou instituição.
* **endereco (VARCHAR)**: Endereço físico do local.
* **bairro (VARCHAR)**: Bairro onde o ponto está localizado.
* **cidade (VARCHAR)**: Município do ponto de coleta.
* **contato (VARCHAR)**: Telefone ou outro meio de contato.
* **link_maps (VARCHAR)**: Link para localização no Google Maps.

### Exemplos de Registros

* Click Informática – Vidal Ramos
* Prefeitura Municipal de Salete
* Secretaria Municipal de Meio Ambiente de Ituporanga
* Prefeitura Municipal de Santa Terezinha

---

## 2. materiais_aceitos

Armazena os tipos de materiais que podem ser entregues em cada ponto de coleta.

### Campos

* **id_material (INT)**: Chave Primária.
* **id_ponto (INT)**: Chave Estrangeira referenciando pontos_coleta(id_ponto).
* **tipo_material (VARCHAR)**: Tipo de material aceito.
* **aceita (BOOLEAN)**: Indica se o material é aceito.
* **observacao (TEXT)**: Informações complementares.

### Exemplos de Materiais

* Monitores
* CPUs
* Impressoras
* Celulares
* Televisores
* Pilhas
* Baterias
* Lâmpadas
* Equipamentos eletrônicos diversos

---

## 3. procedimentos_descarte

Armazena informações sobre as condições de entrega dos resíduos eletrônicos.

### Campos

* **id_procedimento (INT)**: Chave Primária.
* **id_ponto (INT)**: Chave Estrangeira referenciando pontos_coleta(id_ponto).
* **horario (VARCHAR)**: Horário de atendimento.
* **agendamento (BOOLEAN)**: Necessidade de agendamento prévio.
* **custo (DECIMAL)**: Valor cobrado pelo descarte.
* **modalidade (VARCHAR)**: Forma de recebimento dos materiais.

### Informações Obtidas

Nos pontos pesquisados:

* Não é necessário agendamento.
* O descarte é gratuito.
* A modalidade utilizada é entrega direta no local.

---

## 4. evidencias

Armazena os registros que comprovam a existência e funcionamento dos pontos de coleta.

### Campos

* **id_evidencia (INT)**: Chave Primária.
* **id_ponto (INT)**: Chave Estrangeira referenciando pontos_coleta(id_ponto).
* **tipo (VARCHAR)**: Categoria da evidência.
* **descricao (TEXT)**: Descrição da comprovação.
* **arquivo_link (VARCHAR)**: Caminho ou URL da evidência.
* **data (DATE)**: Data de coleta da informação.

### Exemplos de Evidências

* Prints de sites institucionais.
* Fotografias dos locais.
* Localizações obtidas pelo Google Maps.
* Informações divulgadas pelas prefeituras.

---

## 5. analise_critica

Armazena observações e avaliações realizadas sobre a situação do descarte de resíduos eletrônicos em cada município pesquisado.

### Campos

* **id_analise (INT)**: Chave Primária.
* **cidade (VARCHAR)**: Município analisado.
* **facilidade (TEXT)**: Aspectos positivos identificados.
* **dificuldades (TEXT)**: Problemas encontrados.
* **divulgacao (TEXT)**: Formas de divulgação observadas.
* **melhorias (TEXT)**: Sugestões para aperfeiçoamento do sistema.

### Principais Resultados

#### Vidal Ramos

* Possui ponto de coleta em empresa especializada.
* Necessidade de ampliar a divulgação do serviço.

#### Salete

* Coleta realizada pela prefeitura.
* Necessidade de campanhas permanentes de conscientização.

#### Ituporanga

* Coleta coordenada pela Secretaria de Meio Ambiente.
* Boa estrutura, mas ainda requer maior divulgação.

#### Santa Terezinha

* Disponibiliza coleta gratuita.
* Necessidade de ampliar o alcance das informações para a população.

---

# Relacionamentos do Banco de Dados

### pontos_coleta → materiais_aceitos

Relacionamento 1:N

Um ponto de coleta pode aceitar diversos materiais.

### pontos_coleta → procedimentos_descarte

Relacionamento 1:N

Um ponto de coleta pode possuir diferentes procedimentos cadastrados.

### pontos_coleta → evidencias

Relacionamento 1:N

Um ponto de coleta pode possuir várias evidências registradas.

### analise_critica

Relacionamento lógico com os municípios cadastrados em pontos_coleta, permitindo análises independentes da existência de pontos cadastrados.

---

# Conclusão

A modelagem proposta permite organizar de forma eficiente as informações coletadas durante o projeto InfoSustentabilidade Digital. O banco de dados facilita o armazenamento, consulta e análise dos pontos de coleta de resíduos eletrônicos, contribuindo para a gestão ambiental e para a conscientização da população sobre a importância do descarte correto desses materiais.

