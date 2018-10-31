| [Home](https://github.com/ricarthlima/eo-project-es) | [Time](/docs/paginas/time.md) | [Entregas](/docs/entregas_iterations)  | [Banco de Dados](https://github.com/ricarthlima/eo-project-es#5-banco-de-dados) | [ID Visual](/docs/id_visual)| [Socorro]() |
|-|-|-|-|-|-|

# Socorro!
Algo já não funcionou no passado! Como a gente fez para resolver mesmo?!

## 1. Criar uma nova máquina para nosso projeto

- Criar nova máquina no C9, clonando o repositório.
- Atualizar Ruby `rvm install ruby 2.5.1`
- Atualizar/Instalar Rails `gem install rails --no-ri --no-rdoc`
- Seguir passos para iniciar PostgreSQL numa nova máquina

## 2. Iniciar PostgreSQL numa nova máquina
#### Iniciar o PostgreSQL
- `ps auxw | grep postgres`
- `sudo service postgresql restart`

#### Se necessário, editar arquivo de configuração
- Acessar o arquivo config > database.yml
- Alterar o encode para `SQL_ASCII`

#### Criar os Bancos de Dados (eles vêem do que você configurou no database.yml)
- `rake db:create`

#### Fazer migração (Gravar no físico)
- `rake db:migrate`

## 3. Criar novo app apto a dar deploy no  Heroku (Versões e Bancos corretos)

- Criar nova máquina no C9, clonando o repositório.
- Atualizar Ruby `rvm install ruby 2.5.1`
- Atualizar/Instalar Rails `gem install rails --no-ri --no-rdoc`
- Criar nova aplicação Rails com PostgreSQL
  - `cd ..`
  - `rails new workspace --database=postgresql`
  - `cd workspace`
- [TRABALHO EM RAILS]
- Push para GitHub
- Conexão de deploy na plataforma do Heroku

## 4. Criar modelo usando o rails
```ruby
rails generate model <nome_model> <nome_atributo>:<tipo_atributo> <nome_atributo>:<tipo_atributo>
rake db:migrate
```

string
text
integer
decimal


