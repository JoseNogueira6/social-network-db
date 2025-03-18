# Social Network Database

Este repositório faz parte de um projeto acadêmico para a disciplina de Banco de Dados, onde desenvolvi um modelo de banco de dados de rede social simples. O objetivo é praticar modelagem de dados, normalização e implementação em SQL.

## Estrutura do Repositório

### 📂 `sql/`
- **`social_network.sql`**: Contém o script SQL responsável pela criação das tabelas e definições das relações entre elas.

### 📂 `docs/`
- **`diagram.png`**: Representação visual do modelo de banco de dados, criado utilizando [DbDiagram.io](https://dbdiagram.io/).

## Modelagem do Banco de Dados

Para garantir uma estrutura eficiente e escalável, utilizei um modelo entidade-relacionamento (ER). Abaixo estão as principais tabelas e suas funções:

- **`users`** 🧑‍💻: Armazena informações dos usuários, como nome, email e data de criação do perfil.
- **`posts`** 📝: Guarda as postagens feitas pelos usuários.
- **`friends`** 🤝: Representa as conexões de amizade entre usuários.
- **`comments`** 💬: Contém os comentários feitos nas postagens.
- **`likes`** ❤️: Registra os "curtidas" em posts e comentários.

