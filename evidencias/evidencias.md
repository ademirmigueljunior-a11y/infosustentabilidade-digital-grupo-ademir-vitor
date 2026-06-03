# ♻️ Relatório de Evidências: InfoSustentabilidade Digital

Este documento reúne as evidências coletadas durante o levantamento dos pontos de descarte de resíduos eletrônicos nos municípios de Vidal Ramos, Salete, Ituporanga e Santa Terezinha, além de registrar a estrutura do projeto, banco de dados e consultas realizadas.

---

# 📎 1. Tabela de Evidências (Fontes)

| ID Evidência | ID Ponto | Tipo           | Descrição                                                | Fonte / Link                    | Data da Evidência |
| :----------: | :------: | :------------- | :------------------------------------------------------- | :------------------------------ | :---------------: |
|       1      |     1    | 🌐 Site        | Informações da Click Informática                         | Pesquisa local e contato direto |     2026-05-20    |
|       2      |     1    | 📍 Localização | Localização do ponto de coleta                           | Google Maps                     |     2026-05-20    |
|       3      |     2    | 🌐 Site        | Informações da Prefeitura de Salete                      | Site Oficial da Prefeitura      |     2026-05-21    |
|       4      |     3    | 🌐 Site        | Informações da Secretaria de Meio Ambiente de Ituporanga | Site Oficial da Prefeitura      |     2026-05-21    |
|       5      |     4    | 🌐 Site        | Informações da Prefeitura de Santa Terezinha             | Site Oficial da Prefeitura      |     2026-05-22    |
|       6      |     2    | 📷 Foto        | Registro do ponto de coleta                              | Arquivo da pesquisa             |     2026-05-22    |
|       7      |     3    | 📷 Foto        | Registro do ponto de coleta                              | Arquivo da pesquisa             |     2026-05-22    |
|       8      |     4    | 📷 Foto        | Registro do ponto de coleta                              | Arquivo da pesquisa             |     2026-05-22    |

---

# 📊 2. Evidências da Planilha

A planilha foi utilizada para organizar os dados coletados durante a pesquisa de campo e consultas realizadas.

### Abas Criadas

📁 pontos_coleta

📁 materiais_aceitos

📁 procedimentos_descarte

📁 evidencias

📁 analise_critica

### Informações Registradas

* Nome do ponto de coleta
* Endereço
* Município
* Contato
* Materiais aceitos
* Procedimentos de descarte
* Evidências coletadas
* Análises críticas por cidade

---

# 💻 3. Organização dos Arquivos do Projeto

### Arquivos Desenvolvidos

📄 data/pontos-coleta.json

📄 docs/modelo-dados.md

📄 docs/analise-critica.md

📄 docs/orientacao-descarte.md

📄 evidencias/evidencias.md

📄 sql/script.sql

📄 README.md

### Conteúdo Produzido

* Estrutura do banco de dados
* Modelagem relacional
* Arquivo JSON dos pontos de coleta
* Relatório de evidências
* Análise crítica dos municípios pesquisados
* Scripts SQL de criação e consulta

---

# 🗄️ 4. Banco de Dados

### Projeto

InfoSustentabilidade Digital

### Tabelas Criadas

1. pontos_coleta
2. materiais_aceitos
3. procedimentos_descarte
4. evidencias
5. analise_critica

### Municípios Cadastrados

* Vidal Ramos
* Salete
* Ituporanga
* Santa Terezinha

### Pontos de Coleta Cadastrados

* Click Informática
* Prefeitura Municipal de Salete
* Secretaria Municipal de Meio Ambiente de Ituporanga
* Prefeitura Municipal de Santa Terezinha

---

# 🔍 5. Consultas Realizadas (SQL)

As consultas abaixo foram utilizadas para verificar e validar os dados armazenados no banco de dados.

```sql
-- Consultas básicas

SELECT * FROM pontos_coleta;

SELECT * FROM materiais_aceitos;

SELECT * FROM procedimentos_descarte;

SELECT * FROM evidencias;

SELECT * FROM analise_critica;


-- Materiais aceitos por ponto de coleta

SELECT
    pc.nome,
    ma.tipo_material
FROM materiais_aceitos ma
INNER JOIN pontos_coleta pc
ON ma.id_ponto = pc.id_ponto;


-- Procedimentos de descarte

SELECT
    pc.nome,
    pd.modalidade,
    pd.custo
FROM procedimentos_descarte pd
INNER JOIN pontos_coleta pc
ON pd.id_ponto = pc.id_ponto;


-- Evidências cadastradas

SELECT
    pc.nome,
    e.tipo,
    e.descricao
FROM evidencias e
INNER JOIN pontos_coleta pc
ON e.id_ponto = pc.id_ponto;


-- Análises críticas dos municípios

SELECT * FROM analise_critica;
```

---

# ✅ Conclusão

Os dados coletados permitiram identificar pontos de descarte de resíduos eletrônicos nos municípios pesquisados, registrar os materiais aceitos, documentar os procedimentos de descarte e elaborar análises críticas sobre a situação de cada localidade.

A estrutura criada em JSON, planilha e banco de dados relacional possibilita a organização das informações e pode servir como base para futuras ações de educação ambiental e gestão sustentável dos resíduos eletrônicos.

