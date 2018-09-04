| [Home](https://github.com/ricarthlima/eo-project-es) | [Iterations](https://github.com/ricarthlima/eo-project-es/tree/master/Iterations)  | [Modelagem](https://github.com/ricarthlima/eo-project-es/tree/master/Modelagem-BD)
# Lista de Compras

## 1. Objetivo
Exercício de treinamento de Ruby e Git colaborativo.
O objetivo é o desenvolvimento de um CRUD (Create, Read, Update, Delete) para um banco de dados de uma lista de compras para uso pessoal.
Ao final, o programa deve ser capaz de:
- Cadastrar, Ler, Atualizar e Deletar novos usuários;
- Fazer login e logout;
- Cadastrar, Ler, Atualizar e Deletar novos produtos num banco de dados próprio (independe do usuário);
  - Gerar/Atualizar/Apresentar um evolução dos preços, diariamente
- Gerar uma lista de compras com os produtos que o usuário decidiu comprar;
- Exportar essa lista de compras em .txt ou .csv (tabela)

## 2. Banco de Dados
Esses se darão na forma de um CSV. (Verificar arquivo example.csv)

## 3. Entidade e atributos

- **Usuário**
  - Login (chave primária)
  - Senha
  - Email
  - Nome completo
  - Endereço (Atributo composto)*
- **Supermercado**
  - Código do supermercado (chave primária)
  - Nome
  - Endereço (Atributo composto)*
- **Produto**
  - Código do Produto (chave primária)
  - Nome
  - Marca
  - Descrição
  - Preço atual
  - Data do preço
  - Supermercado (chave estrangeira)   #Trata-se do supermercado onde se conseguiu o preço atual
  - Histórico de preços (tupla: (Data, Supermercado, Preço))
- **Lista de compras (Entidade Fraca)**
  - Código do usuário (Chave primária - estrangeira)
  - Código da Lista de Compras (Chave primária)
  - Data
  - Supermercado (Chave estrangeria)
  - Lista dos produtos (Código dos produtos)

* Endereços devem ter: Número, Rua, Bairro, Cidade, Estado e País

## 4. Next Steps (Crowndsensing)
- O usuário deve poder dar input nos preços que ele realmente encontrou no supermercado, esse dado poderá ficar fixo num histórico que relacione o produto e o usuário, porém ele será usado principalmente para alimentar o banco de dados com a evolução do preço do produto.
- Usando uma API de localização, determinar estimativas de preços da área onde o usuário vive e:
  - Alertar por promoções;
  - Sugerir melhor localização para fazer as compras dado determinado produto;
- Plataforma Web e Mobile
