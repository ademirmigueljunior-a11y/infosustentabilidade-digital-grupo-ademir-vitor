# ♻️ Projeto: Mapeamento de Pontos de Descarte Sustentável

![GitHub repo size](https://img.shields.io/github/repo-size/SEU-USUARIO/SEU-REPOSITORIO)
![GitHub last commit](https://img.shields.io/github/last-commit/SEU-USUARIO/SEU-REPOSITORIO)
![GitHub license](https://img.shields.io/github/license/SEU-USUARIO/SEU-REPOSITORIO)

---

## 📌 Sobre o Projeto

Este projeto tem como objetivo desenvolver uma plataforma colaborativa para catalogar, analisar e divulgar pontos de coleta e descarte sustentável de materiais recicláveis.

A proposta busca facilitar o acesso da população a informações confiáveis sobre reciclagem, promovendo conscientização ambiental e incentivando práticas sustentáveis.

---

# 👥 Integrantes do Grupo

- Nome Integrante 1
- Nome Integrante 2
- Nome Integrante 3
- Nome Integrante 4

---

# 🔗 Relação com o Projeto Anterior

O projeto é uma continuação da etapa anterior, onde foram realizadas pesquisas iniciais sobre descarte de resíduos e levantamento de necessidades relacionadas à reciclagem urbana.

Nesta fase, o foco está na modelagem de dados, estruturação das entidades e documentação técnica da solução.

---

# ❓ Problema

Muitas pessoas não sabem onde descartar corretamente resíduos recicláveis ou encontram dificuldades para localizar pontos de coleta confiáveis e atualizados.

---

# 💡 Pergunta Guia

> Como facilitar o acesso da população a informações sobre descarte sustentável e reciclagem em sua cidade?

---

# 🎯 Objetivos

- Criar uma base de dados de pontos de coleta;
- Informar materiais aceitos;
- Facilitar o descarte correto;
- Promover sustentabilidade;
- Organizar evidências e análises sobre os serviços.

---

# 👤 Usuários Possíveis

- Cidadãos;
- Cooperativas;
- ONGs ambientais;
- Empresas de reciclagem;
- Órgãos públicos;
- Pesquisadores e estudantes.

---

# ⚙️ Funcionalidades

✅ Cadastro de pontos de coleta  
✅ Consulta por cidade ou bairro  
✅ Materiais aceitos  
✅ Informações sobre descarte  
✅ Evidências e verificações  
✅ Integração com mapas  
✅ Análises críticas  
✅ Atualização colaborativa  

---

# 🛠️ Tecnologias Utilizadas

| Tecnologia | Função |
|---|---|
| Supabase | Banco de dados |
| GitHub | Versionamento |
| Markdown | Documentação |
| Google Sheets | Coleta inicial |
| Figma | Protótipos |

---

# 🗂️ Modelo de Dados

## 📍 Tabela: `pontos_coleta`

| Campo | Tipo |
|---|---|
| id | integer |
| nome | text |
| endereço | text |
| bairro | text |
| cidade | text |
| contato | text |
| link_maps | text |
| observação | text |

---

## ♻️ Tabela: `materiais_aceitos`

| Campo | Tipo |
|---|---|
| id_material | integer |
| id_ponto | integer |
| tipo_material | text |
| aceita | boolean |
| observação | text |

---

## 🧾 Tabela: `procedimentos_descarte`

| Campo | Tipo |
|---|---|
| id | integer |
| id_ponto | integer |
| horário | text |
| agendamento | boolean |
| custo | boolean |
| modalidade | text |
| descrição | text |

---

## 📷 Tabela: `evidencias`

| Campo | Tipo |
|---|---|
| id | integer |
| id_ponto | integer |
| tipo | text |
| descrição | text |
| arquivo_link | text |
| data_verificação | date |

---

## 📝 Tabela: `analises_criticas`

| Campo | Tipo |
|---|---|
| id | integer |
| cidade | text |
| facilidade | text |
| dificuldades | text |
| divulgação | text |
| melhorias | text |

---

# 📂 Estrutura do Projeto

```bash
📦 projeto-reciclagem
 ┣ 📂 docs
 ┃ ┗ 📄 modelo-dados.md
 ┣ 📂 database
 ┃ ┗ 📄 schema.sql
 ┣ 📄 README.md
 ┣ 📄 .gitignore
 ┗ 📄 LICENSE
