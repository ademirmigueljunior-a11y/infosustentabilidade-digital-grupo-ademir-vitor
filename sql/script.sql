# Script de Criação do Banco de Dados

Para armazenar as informações coletadas durante o projeto InfoSustentabilidade Digital, foi desenvolvido um banco de dados relacional utilizando SQL. O objetivo é organizar os dados dos pontos de coleta de resíduos eletrônicos, materiais aceitos, procedimentos de descarte, evidências coletadas e análises críticas realizadas nos municípios pesquisados.

## Tabela pontos_coleta

A tabela **pontos_coleta** é a principal do sistema. Ela armazena os dados básicos dos locais responsáveis pelo recebimento de resíduos eletrônicos.

### Campos

* **id_ponto**: identificador único do ponto de coleta (Chave Primária).
* **nome**: nome do estabelecimento ou instituição.
* **endereco**: endereço do local.
* **bairro**: bairro onde está localizado.
* **cidade**: município do ponto de coleta.
* **contato**: telefone ou outro meio de contato.
* **link_maps**: link para localização no Google Maps.

## Tabela materiais_aceitos

Esta tabela registra os materiais que cada ponto de coleta recebe.

### Campos

* **id_material**: identificador único do registro.
* **id_ponto**: referência ao ponto de coleta correspondente.
* **tipo_material**: material aceito pelo local.
* **aceita**: indica se o material é aceito.
* **observacao**: informações complementares.

O relacionamento entre esta tabela e a tabela pontos_coleta é do tipo **1:N**, permitindo que um único ponto de coleta possua diversos materiais cadastrados.

## Tabela procedimentos_descarte

Armazena as informações referentes às condições de descarte dos resíduos eletrônicos.

### Campos

* **id_procedimento**: identificador do procedimento.
* **id_ponto**: referência ao ponto de coleta.
* **horario**: horário de funcionamento.
* **agendamento**: indica necessidade de agendamento.
* **custo**: valor cobrado pelo descarte.
* **modalidade**: forma de entrega do material.

## Tabela evidencias

Responsável pelo armazenamento das comprovações coletadas durante a pesquisa.

### Campos

* **id_evidencia**: identificador da evidência.
* **id_ponto**: referência ao ponto de coleta.
* **tipo**: categoria da evidência.
* **descricao**: descrição da comprovação.
* **arquivo_link**: link ou caminho do arquivo.
* **data**: data da coleta da informação.

Um ponto de coleta pode possuir várias evidências registradas, caracterizando um relacionamento **1:N**.

## Tabela analise_critica

Armazena as avaliações qualitativas realizadas sobre os municípios pesquisados.

### Campos

* **id_analise**: identificador da análise.
* **cidade**: município avaliado.
* **facilidade**: aspectos positivos identificados.
* **dificuldades**: problemas encontrados.
* **divulgacao**: meios de divulgação observados.
* **melhorias**: sugestões para aprimoramento do sistema.

## Relacionamentos

O banco de dados foi estruturado utilizando chaves estrangeiras para garantir a integridade das informações.

* pontos_coleta → materiais_aceitos (1:N)
* pontos_coleta → procedimentos_descarte (1:N)
* pontos_coleta → evidencias (1:N)

A tabela analise_critica mantém um relacionamento lógico com os municípios cadastrados, permitindo análises independentes dos pontos de coleta registrados.

## Conclusão

A estrutura proposta possibilita o armazenamento organizado e seguro das informações coletadas no projeto InfoSustentabilidade Digital. O modelo relacional facilita consultas, atualizações e futuras expansões do sistema, contribuindo para o gerenciamento eficiente dos dados relacionados ao descarte correto de resíduos eletrônicos.

