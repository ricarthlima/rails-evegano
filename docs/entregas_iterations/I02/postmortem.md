# Postmortem da Iteração 02

## Período
**Data de início:** 08/10/2018  
**Data de término:** 22/10/2018

## Tabelas de "Burndown"
### Conceito, gestão e negócio
|O que foi planejado?|Guilherme|Monalisa|Ricarth|Warley|Não foi feito|
|--------------------|:-------:|:------:|:-----:|:----:|:-----------:|
|Reuniões todas seg, qua, sex|X|X|X|X||
|Reunião de sprint|X|X|X|X||
|**Postmortem da Iteração 2**|X|X|X|X||


### Interação com Cliente
|O que foi planejado?|Guilherme|Monalisa|Ricarth|Warley|Não foi feito|
|--------------------|:-------:|:------:|:-----:|:----:|:-----------:|
|Reunião presencial com a cliente|X|X|X|X||

### Repositório GitHub
|O que foi planejado?|Guilherme|Monalisa|Ricarth|Warley|Não foi feito|
|--------------------|:-------:|:------:|:-----:|:----:|:-----------:|

### Desenvolvimento
|O que foi planejado?|Guilherme|Monalisa|Ricarth|Warley|Não foi feito|
|--------------------|:-------:|:------:|:-----:|:----:|:-----------:|
|Nivelar o conhecimento de Ruby do time|||||X|
|Aprofundar o entendimento sobre testes|||||X|
|Configurar app para uso do Cucumber|X|X|X|X||
|Criar primeira feature||||X||
|Testes com TDD|||||X|
|Criação do storyboard|X|X|X|X||
|Criação do mockup Hi-Fi||X|X|||

## O que está planejado para a próxima iteração?
|Objetivo|Encarregado|Como faremos?|
|--------|:---------:|-------------|
|Continuar o desenvolvimento|Todos|Aprofundando mais os conhecimentos em ruby e rails|
|Criar os testes necessários|Guilherme|Criar em RSPEC|
|Criar os testes necessários|Monalisa|Criar em Cucumber|

## Lições aprendidas
- Precisamos ficar atentos aos prazos e datas;
- Precisamos nos desenvolver mais nas questões relacionadas ao desenvolvimento;
- Ao criar uma nova maquina virtual no C9, instalar novamente o Rails atualizado, e instalar (e setar) a versão correta do ruby;
- A relação entre postgresql, cloud9 e rails pode ser mais complicada do que a gente imaginava. Ao fazer um rake:migrate nos deparamos com um erro de conexão, que foi resolvido com a ajuda dos seguintes links:
  - **https://community.c9.io/t/setting-up-postgresql/1573**
  - **https://community.c9.io/t/how-do-i-set-up-postgresql-on-c9-for-my-rails-app/2614**
  - https://stackoverflow.com/questions/26545746/cloud9-postgres/29379969#29379969
  - https://www.digitalocean.com/community/tutorials/how-to-setup-ruby-on-rails-with-postgres

## Referências
- [The Project Postmortem: An Essential Tool for the Savvy Developer](https://www.developer.com/design/article.php/3637441)
- [Postmrotem de Projetos](https://meiobit.com/15085/postmortem-de-projetos-aprendendo-com-os-erros/)
- [Pirâmide Postmortem](https://uvagpclass.wordpress.com/2017/12/04/piramide-post-mortem-2/)

