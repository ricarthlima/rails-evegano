| [Home](https://github.com/ricarthlima/eo-project-es) | [Time](/docs/paginas/time.md) | [Entregas](/docs/entregas_iterations)  | [Banco de Dados](https://github.com/ricarthlima/eo-project-es#5-banco-de-dados) | [ID Visual](/docs/id_visual)| [Socorro](/docs/paginas/socorro.md) | [Referências e Links](/docs/paginas/referencias.md)
|-|-|-|-|-|-|-|

# Socorro!
Algo já não funcionou no passado! Como a gente fez para resolver mesmo?!  
Para links detalhados acesse as [Referências e Links](/docs/paginas/referencias.md).

## 1. Criar uma nova máquina para nosso projeto

- Criar nova máquina no C9, clonando o repositório.
- Atualizar Ruby `rvm install ruby 2.5.1`
- Atualizar/Instalar Rails `gem install rails --no-ri --no-rdoc`
- Atualizar o Bundler `gem install bundler`
- `bundle install`
- Seguir passos para iniciar PostgreSQL numa nova máquina

## 2. Iniciar PostgreSQL numa nova máquina
#### Iniciar o PostgreSQL
- `ps auxw | grep postgres`
- `sudo service postgresql restart`

#### Se necessário, editar arquivo de configuração
- Acessar o arquivo config > database.yml
- Alterar o encode para `UTF-8`

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
- Atualizar o Bundler `gem install bundler`
- `bundle install`
- [TRABALHO EM RAILS]
- Push para GitHub
- Conexão de deploy na plataforma do Heroku

## 4. Model em Rails
### Criar modelo usando o Rails
```ruby
rails generate model <nome_model> <nome_atributo>:<tipo_atributo> <nome_atributo>:<tipo_atributo>
rake db:migrate
```

string
text
integer
decimal

### Associação entre tabelas em Rails
Para essas informações acesse o [link](https://guides.rubyonrails.org/association_basics.html)

## 5. Criar CRUD usando o Rails
Esse comando já cria todo o MVC para um CRUD e uma entidade
```ruby
rails g scaffold <Nome_Entidade_Singular> <nome_atributo>:<tipo_atributo> <nome_atributo>:<tipo_atributo>
rake db:migrate
```

## 6. Adicionar ou Remover campos de um Model
### Adicionar
```ruby
rails g migration Add<campo>To<model> <campo><tipo>
rake db:migrate
```
### Remover
```ruby
rails g migration Remove<campo>From<model> <campo><tipo>
rake db:migrate
```

## 7. Testar aplicação no Cloud9
- Rodar no terminal o comando `rails server -p $PORT -b $IP`
- Se tudo estiver certo o servidor deve começar a rodar
- Acesse-o em: http://<nome_da_maquina>-<username_dono_maquina>.c9users.io/
- Exemplo: http://curso-alura-ricarthlima.c9users.io/

#### Ou, usando o seguinte atalho:
Share > Application > Open

## 8. "Resolver" o problema do banco no Heroku
- Dar deploy
- More > Run Console
- ```bundle install```
- ```rake db:create```
- ```rake db:migrate```

## 10. Entregas IF977
- Para consulta das datas e informações adicionais do projeto, visitar: [Repositório](https://github.com/IF977/if977/blob/master/pages/projeto.md)

## 11. Uso de gems
### Adicionar
- Adicionar ao Gemfile e rodar ```bundle install```
### Remover
- ```gem uninstall <gem-name>``` ou
- Removê-lo do Gemfile e executar ```bundle install```

## 12. Instalação do programa image magick no Cloud 9
### Para uso do paperclip
Apenas seguir os passos ditos no [link](https://community.c9.io/t/install-imagemagick/3608/7)
