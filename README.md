# Sistema de Controle e Gerenciamento de Ordens de Serviço em Oficina Mecânica

Este projeto apresenta a modelagem de um banco de dados relacional para um sistema de controle e gerenciamento de ordens de serviço em uma oficina mecânica.

O sistema foi desenvolvido com foco no controle de clientes, veículos, mecânicos, equipes, serviços, peças, mão de obra e autorizações para execução dos serviços solicitados.

## Objetivo do Projeto

O objetivo principal deste projeto é criar uma estrutura de banco de dados capaz de representar o fluxo de atendimento de uma oficina mecânica, desde o cadastro do cliente e do veículo até a abertura, autorização, execução e conclusão de uma ordem de serviço.

O sistema contempla as seguintes necessidades:

- Cadastro de clientes
- Cadastro de veículos vinculados aos clientes
- Cadastro de mecânicos
- Organização de mecânicos em equipes
- Registro de ordens de serviço
- Associação de serviços a uma ordem de serviço
- Associação de peças utilizadas em uma ordem de serviço
- Consulta de valores de mão de obra por serviço
- Registro de autorização do cliente
- Controle de status da ordem de serviço
- Cálculo do valor total da ordem de serviço com base em serviços e peças

## Contexto do Problema

Clientes levam veículos à oficina mecânica para consertos ou revisões periódicas. Cada veículo é designado a uma equipe de mecânicos, responsável por avaliar o veículo, identificar os serviços necessários e registrar uma ordem de serviço.

A partir da ordem de serviço, são calculados os valores dos serviços com base em uma tabela de referência de mão de obra. Além disso, o valor das peças utilizadas também compõe o valor final da ordem de serviço.

Antes da execução, o cliente deve autorizar os serviços. Após a autorização, a mesma equipe responsável pela avaliação executa os serviços necessários.

## Tecnologias Utilizadas

- Oracle Database
- SQL
- Modelagem Relacional
- Diagrama Entidade-Relacionamento
- Normalização de Dados

## Estrutura do Banco de Dados

O banco de dados é composto pelas seguintes tabelas:

```text
Cliente
Veiculo
Mecanico
Equipe
EquipeMecanico
OrdemServico
Servicos
Pecas
MaoObra
AutorizacaoServico
OrdemServicoServico
OrdemServicoPeca
