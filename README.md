📝 Relatório – Trabalho Prático: Sistema de Gestão de Academia
Disciplina: Banco de Dados
Instituição: Universidade Federal do Ceará
Problema 5: Sistema de Gestão de Academia

✅ Objetivo
O trabalho prático teve como objetivo o desenvolvimento e manipulação de um banco de dados voltado para um sistema de gestão de academia. As tarefas envolveram a criação da estrutura relacional, a inserção de dados e a realização de consultas SQL específicas.

⚙️ Ambiente de Desenvolvimento
O projeto foi configurado utilizando Docker Compose, facilitando a orquestração dos serviços de banco de dados e sua interface administrativa.

Serviços Utilizados:
MySQL: Sistema gerenciador de banco de dados relacional, com credenciais personalizadas para acesso seguro.

phpMyAdmin: Interface gráfica acessível via navegador, utilizada para gerenciamento e execução das consultas SQL.

Instruções de Execução:
Para iniciar o ambiente, foram utilizados os seguintes passos:

Certifique-se de que o Docker e o Docker Compose estejam instalados.

Na raiz do projeto, execute o comando:
"docker-compose up -d"

Esse comando inicia os containers com MySQL e phpMyAdmin, prontos para uso.

📦 Banco de Dados
Criação da Estrutura:

- O script SQL fornecido foi colado na aba SQL do phpMyAdmin, criando todas as tabelas necessárias.

População dos Dados:

- Foram inseridas manualmente mais de 20 tuplas nas tabelas principais, como Membros, Instrutores, Unidades, Assinaturas, Checkins, Pagamentos, entre outras.

📌 Considerações Finais

- As consultas SQL foram implementadas com o uso de joins, subconsultas e funções agregadas, seguindo boas práticas de modelagem.

- O ambiente com Docker garantiu portabilidade e consistência no desenvolvimento e nos testes realizados.
