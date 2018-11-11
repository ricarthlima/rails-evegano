| [Home](https://github.com/ricarthlima/eo-project-es) | [Time](/docs/paginas/time.md) | [Entregas](/docs/entregas_iterations)  | [Banco de Dados](https://github.com/ricarthlima/eo-project-es#5-banco-de-dados) | [ID Visual](/docs/id_visual)| [Socorro](/docs/paginas/socorro.md) |
|-|-|-|-|-|-|

# Socorro!
Algo já não funcionou no passado! Como a gente fez para resolver mesmo?!

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

## 9. Devise
### Autenticação com Devise
- Links úteis
    - [link 1](https://www.maujor.com/railsgirlsguide/devise.php)
    - [link 2](https://github.com/plataformatec/devise)
    - [link 3](https://www.devmedia.com.br/ruby-on-rails-implementando-autenticacao-de-usuario/32124) 
    - [link 4](https://onebitcode.com/permissoes-de-acesso-rails-usando-devise-e-cancancan/) *É mais para autenticação com permissões de usuários, e menos de login

### Adicionando mais campos ao devise
- Usar os seguintes links para o mesmo: [link1](https://pt.stackoverflow.com/questions/56810/como-adicionar-mais-campos-%C3%A0-tabela-de-usu%C3%A1rios-com-a-gem-devise), [link2](https://groups.google.com/forum/#!topic/rails-br/wvWqPIe4T6A) e [link3](https://felipelinsmachado.com/ruby-on-rails-para-iniciantes-criando-novo-atributo-devise/)


## 10. Entregas IF977
- Para consulta das datas e informações adicionais do projeto, visitar: [Repositório](https://github.com/IF977/if977/blob/master/pages/projeto.md)

## 11. Uso de gems
### Adicionar
- Adicionar ao Gemfile e rodar ```bundle install```
### Remover
- ```gem uninstall <gem-name>``` ou
- Removê-lo do Gemfile e executar ```bundle install```

## 12. Front-end
### Design de formulários
Para informações sobre design para formulários na aplicação, acesse o [link](https://uxdesign.cc/design-better-forms-96fadca0f49c)
### Bootstrap
- Dica de instalação, passo a passo:
    1 - [Tutorial](https://github.com/twbs/bootstrap-rubygem) do repositório do bootstrap
    2 - Instalação das gems (boostrap e jquery e etc)
    3 - E fazer o import no stylesheets, dando o import no arquivo bootstrap.scss
- Link úteis
    - [Artigo do Medium](https://medium.com/jaguaribetech/framework-bootstrap-para-aplica%C3%A7%C3%B5es-rails-cbaf94e802eb) 
    - [Vídeo tutorial](https://www.youtube.com/watch?v=ZPh19YUbC3A) 
    - [Site do boostrap](https://getbootstrap.com.br/) 
- Links úteis sobre sidebar
    - [link 1](https://github.com/BlackrockDigital/startbootstrap-simple-sidebar) 
    - [link 2](https://startbootstrap.com/template-overviews/simple-sidebar/)


## 13. Testes
### BDD
- Links úteis
    - [link 1](http://shipit.resultadosdigitais.com.br/blog/estruturando-seu-projeto-com-bdd-e-cucumber/) 
    - [link 2](https://stories.devacademy.la/bdd-con-ruby-on-rails-usando-rspec-y-capybara-2e87ffe8957d) 
    - [link 3](https://gist.github.com/stepheneyer/01be60c1ec6c004e0253) 
    - [link 4](https://www.linkedin.com/pulse/do-zero-ao-b%C3%A1sico-aprenda-criar-um-teste-de-aceita%C3%A7%C3%A3o-renato-nunes)

- Links recomendados pelo monitor
    - [link 1](https://medium.com/jaguaribetech/testes-automatizados-com-cabybara-579e9688e3ab)
    - [link 2](https://helabs.com/artigos/2013/07/03/testes-de-aceitacao-com-capybara-e-cucumber/)  
 
### TDD
- Links úteis:
    - [link 1](https://share.atelie.software/come%C3%A7ando-com-tdd-rspec-79423f7a95ed)
    - [link 2](https://learn.co/lessons/intro-to-tdd-rspec-and-learn)
    - [link 3](https://medium.com/@WesleyDavis/rspec-and-test-driven-development-618b44c8177f) 
    
## Informações gerais importantes
### OCR
- Links úteis
    - [link 1](https://github.com/suyesh/ocr_space)
    - [link 2](https://github.com/meh/ruby-tesseract-ocr) 
    - [link 3](https://github.com/dannnylo/rtesseract) 
    - [link 4](http://www.cloudmersive.com/ocr-api) 
    - [link 5](https://medium.com/innocode-stories/how-to-do-ocr-in-ruby-on-osx-6e16fd072b63)

### Código de Barras
- Links úteis
    - [link 1](https://www.gs1br.org/desenvolvedores)
    - [link 2](http://conteudo.blog.gs1br.org/api-informacoes-produtos)

### Busca Inteligente
- Links úteis
    - [link 1](https://onebitcode.com/buscas-elasticsearch/) 

### Upload de Imagens
- Links úteis
    - [link 1](https://ronanlopes.me/ruby-rails-upload-de-imagens-com-o-carrierwave/)
    - [link 2](https://glaucocustodio.github.io/2012/10/20/upload-e-validacao-de-imagens-e-arquivos-com-a-gem-paperclip-do-rails/) 
    - [link 3](https://wesrails.wordpress.com/2010/06/12/gravando-foto-no-banco-de-dados-com-ruby-on-rails/) 
    - [link 4](https://www.youtube.com/watch?v=kekw19CWPHY) 
    - [link 5](https://www.youtube.com/watch?v=a2rPTqhYdWk)
