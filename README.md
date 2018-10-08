| [Home](https://github.com/ricarthlima/eo-project-es) | [Time](/docs/paginas/time.md) | [Entregas](/docs/entregas_iterations)  | [Banco de Dados](https://github.com/ricarthlima/eo-project-es#5-banco-de-dados) |
|-|-|-|-|
# É vegano? 
***Nota:** Nome não definitivo.*  
  
![logo](/logo.png)  

##### [1. Objetivo](#1-objetivo) - [2. Motivação](#2-motiva%C3%A7%C3%A3o) - [3. Time](#3-equipe-one) - [4. Tecnologias](#4-do-software-e-suas-tecnologias) - [5. Banco de Dados](#5-banco-de-dados) - [6. Next Steps](#6-next-steps)

## 1. Objetivo
Esse repositório é destinado ao desenvolvimento de um SaaS ([Software as a Service](https://blog.deskmanager.com.br/o-que-e-saas/)) para (num primeiro momento) os projetos das disciplinas de Engenharia de Software e Banco de Dados, do curso de Sistemas de Informação do Centro de Informática da Universidade Federal de Pernambuco.

A aplicação será um serviço de software que entrega ao **público vegano** um método prático de consultar quais produtos/marcas são ou não veganos e o porquê. Como adicional, pretendemos informar produtos/promoções perto do usuário.

## 2. Motivação
No Brasil, 14% da população tem uma alimentação vegetariana, [segundo a Sociedade Vegetariana Brasileira](https://g1.globo.com/bemestar/noticia/brasil-tem-14-de-vegetarianos-e-81-de-adeptos-a-dieta-com-carne-diz-pesquisa-ibope.ghtml). O mercado consumidor de alimentação plant-based (low or no meat) [cresce no mundo todo](http://revistapegn.globo.com/Revista/Common/0,,EMI130934-17153,00-CRESCE+O+MERCADO+VEGANO.html).  

A rigidez pela busca de produtos ou marcas livres de exploração e crueldade com os animais é uma realidade. Assim, o "É vegano?" entra num mercado crescente com **o objetivo de facilitar a vida de quem precisa sempre verificar informações confiáveis sobre a composição do produto e condutas das marcas**. Além disso, temos como ambição ajudar o mundo a trilhar o caminho para um futuro mais ético, onde nenhum animal precise sofrer para nos alimentar, divertir, vestir ou quaisquer outros motivos.

## 3. Equipe One!
*Para ler mais sobre a "Equipe One!" nesse projeto, visite: [Time](/docs/paginas/time.md)*

|![Guilherme](https://raw.githubusercontent.com/ricarthlima/eo-project-es/master/docs/paginas/imagens/gps2.png) <br>Guilherme Prado<br>*Analista de Testes*<br><gps2@cin.ufpe.br> |![Monalisa](https://raw.githubusercontent.com/ricarthlima/eo-project-es/master/docs/paginas/imagens/mmss.png) <br>Monalisa Sousa<br>*Analista de Requisitos*<br><mmss@cin.ufpe.br>|![Ricarth](https://raw.githubusercontent.com/ricarthlima/eo-project-es/master/docs/paginas/imagens/rrsl.png) <br>Ricarth Lima<br>*Gerente de Projeto/Scrum Master*<br><rrsl@cin.ufpe.br>|![Warley](https://raw.githubusercontent.com/ricarthlima/eo-project-es/master/docs/paginas/imagens/wss.png) <br>Warley Souza<br>*Product Owner*<br><wss@cin.ufpe.br>
|-|-|-|-|

**Nós acreditamos que em uma equipe todos são desenvolvedores.**

## 4. Do software e suas tecnologias
As principais tecnologias que pretendemos usar são:

### Leitura de Código de Barras
É a base do software. Ao receber um código de barras, procurará no Banco de Dados registro desse produto. Se encontrar, devolverá ao usuário informações sobre seus componentes, e uma indiciação se o produto é vegano, se é potencialmente vegano, ou se não é vegano.

### OCR (Reconhecimento ótico de caracteres)
Caso o produto não esteja cadastrado no Banco de Dados, o usuário receberá a possibilidade de cadastrá-lo. Para isso ele poderá usar OCR para enviar para o sistema os componentes, e daí descobrir como se classifica o produto. Essa informação também servirá para alimentar o código de barras.

### Outras tecnologias
Na implementação da sugestão de ofertas perto do cliente, usaremos também **Crowndsensing** e **Geolocalização**.

## 5. Banco de Dados
As entregas relacionadas à cadeira IF976 - Banco de Dados serão feitas pelo Google Drive que pode ser acessado através desse [link](https://goo.gl/u5o5YJ).  
**Status:** Por conta do spin-off que demos no projeto, as etapas a seguir que estão tachadas foram refeitas. 

Segue as etapas a serem seguidas:

- ~~Definição do minimundo~~
- ~~Modelagem lógica (Entidade-Relacionamento)~~
- ~~Modelagem conceitual (Modelo Relacional)~~
- Modelagem física (PL/SQL)
- Povoamento

(Todas etapas passarão por testes de lógica, redundância e eficiência quando for cabido, e poderão sofrer alterações)

### 5.1 Descrição informal das entidades e dos relacionamentos
***Obs.:** Por conta do spin-off que demos no projeto, as seguintes informação ainda serão validadas.*

Cada **usuário** possui um login, que é sua identificação única, e uma senha de acesso. Também possui um email, um nome (composto de primeiro nome e sobrenome), uma foto, e um endereço (composto de número, rua, bairro, cidade, estado e país), e um ou vários telefones. Usuários também possuem a informação sobre o tipo de filosofia ele segue, isso quer dizer que ele varia entre "vegetariano", que compram **produtos alimentícios livres de componentes de origem animal**, "lactovegetariano" que são como os vegetarianos porém **eles consomem leite e derivados**, o "ovolactovegetariano" que são como os lactovegetarianos mas **consomem também ovo e derivados**, e finalmente os "veganos" que são tão restritivos quanto os vegetarianos, mas também aplicam essa filosofia para **produtos não-alimentícios**, e **levam em consideração a reputação e práticas das marcas que produzem o produto**.
Um usuário pode ser **premium**, caso seja, ele possui uma data de assinatura e uma data de término da assinatura.

- Usuários consultam produtos. Essa consulta guarda a data que foi realizada;
- Usuários podem avaliar produto. Essa avaliação guarda a quantidade de estrelas dadas (INT 0-5), o comentário deixado e a data de realização;
- Usuários podem avalair marcas da mesma forma.

**Produtos** possuem um código identificador único, um código de barras, um nome, uma imagem descritiva, uma descrição, e uma classificação ternária (sim, não, talvez) sobre se é vegano.

- Todo produto possui também uma (e no máximo uma) marca.
- Todo produto possui um ou mais componentes.
- Todo produto possui um histórico de preços (esse que só existem por pertencerem a um produto) que registra o preço, a data do registro desse preço e as coordenadas geográficas de onde esse preço foi registrado.

**Marcas** possuem um código identificador único, nome, lista de nomes alternativos, uma breve descrição, e sua classificação sobre se ela é vegana ou não, diferente do dos produtos, ela é binária. 

- Uma marca pode conter outra marca, e isso determina a classificação como vegana.

**Componentes** possuem um código identificador único, código europeu, código INS, nome, lista de nomes alternativos, uma categoria, uma descrição e uma classificação binária sobre se é vegano ou não.

## 6. Next Steps

### 6.1 Desenvolvimento:
- ~~Histórias do Usuários iniciais~~
- ~~Protótipo Low-Fi iniciais~~
- Aprofundamento na validação com os usuários, via protótipo e MVP.
- Protótipo Hi-Fi
- Início do desenvolvimento
- Povoamento do banco de dados
- Testes contínuos

### 6.2 Ideias:
- Funcionar offline;
- Sugestão de receitas veganas;
- Sugestão de bons hábitos veganos;
- Feed de notícias sobre marcas;
- Maior interação entre os usuários;
