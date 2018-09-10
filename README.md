| [Home](https://github.com/ricarthlima/eo-project-es) | [Time](https://github.com/ricarthlima/eo-project-es/blob/master/pages/time.md) | [Atas de Reunião](https://github.com/ricarthlima/eo-project-es/tree/master/atas_reuniao) | [Iterations](https://github.com/ricarthlima/eo-project-es/tree/master/iterations_output)  | [Banco de Dados](https://github.com/ricarthlima/eo-project-es/tree/master/modelagem_banco_dados) |
# GreenList (Nome Provisório)

## 1. Objetivo
Esse repositório é destinado ao desenvolvimento de um SaaS ([Software as a Service](https://blog.deskmanager.com.br/o-que-e-saas/)) para (num primeiro momento) os projetos das disciplinas de Engenharia de Software e Banco de Dados, do curso de Sistemas de Informação do Centro de Informática a Universidade Federal de Pernambuco.

A aplicação será um serviço de criação e gerenciamento de listas de compras domésticas, capaz de armazenar informações sobre os hábitos e características do consumidor, a fim de tornar o ato de fazer compras mais prático e mais eficaz. Além disso, o sistema será inclusivo com o público vegano, mostrando informações úteis que lhes darão a mesma facilidade proposta.

## 2. Equipe One!
|![Guilherme](https://raw.githubusercontent.com/ricarthlima/eo-project-es/master/pages/images/gps2.png) <br>Guilherme Prado<br><gps2@cin.ufpe.br>| ![Monalisa](https://raw.githubusercontent.com/ricarthlima/eo-project-es/master/pages/images/mmss.png) <br>Monalisa Sousa<br><mmss@cin.ufpe.br>|![Ricarth](https://raw.githubusercontent.com/ricarthlima/eo-project-es/master/pages/images/rrsl.png) <br>Ricarth Lima<br><rrsl@cin.ufpe.br>|![Warley](https://raw.githubusercontent.com/ricarthlima/eo-project-es/master/pages/images/wss.png) <br>Warley Souza<br><wss@cin.ufpe.br>
|-|-|-|-|

Para ler mais sobre a Equipe One! nesse projeto, [vá para a página "Time"]().

## 3. Do software e suas tecnologias
As principais tecnologias que pretendemos usar são:

### Geolocalização
Importante para obter os dados dos usuários, dos supermercados e dos produtos. Assim informar, baseado nessas informações, qual o lugar onde ele deveria fazer suas compras (mais economia e conforto). Também informar quando há promoções de produtos que ele se interessa, perto dele.

### Crowndsensing
Não pretendemos ter os supermercados como fornecedores de informação, portanto para atender os objetivos citados acima, iremos usar os próprios inputs dos usuários para criar uma rede de informações. Depois de validada, a informação passa a integrar nosso banco de dados e poderá ser distribuida para os demais usuários.

### Leitura de Código de Barras
Será usada para facilitar a vida do usuário quando for possível, pois ele poderá armazenar/consultar/adicionar informações de um produto apenas o associando a um código de barras.

### OCR (Reconhecimento ótico de caracteres)
Útil para quem tiver interesse em saber sobre a composição do produto que está comprando (em especial o público vegano), uma vez que esse produto ainda não esteja no banco de dados, essa leitura analisará (quando possível) todos os componentes descritos no rótulo.

## 4. Banco de Dados
O banco de dados está em fase de modelagem. Segue as etapas a serem seguidas:

- ~~Definição do minimundo~~
- ~~Modelagem lógica (Entidade-Relacionamento)~~
- Modelagem conceitual (Modelo Relacional)
- Modelagem física (PL/SQL)
- Povoamento

(Todas etapas passarão por testes de lógica, redundância e eficiência quando for cabido, e poderão sofrer alterações)

### 4.1 Descrição informal das entidades e dos relacionamentos

Cada **usuário** possui um login, que é sua identificação única, e uma senha de acesso. Também possui um email, um nome (composto de primeiro nome e sobrenome) e um endereço (composto de número, rua, bairro, cidade, estado e país), e um ou vários telefones. Possui também um identificador binário que diz se ele se considera vegano ou não.

**Usuários** possuem **listas de compras**. Cada lista possuem seu código identificador único e a data que foi realizada.

**Listas de compras** possuem **produtos**. Cada produto possui seu código identificador único, nome, **marca***, descrição, seu preço mais recente e a data de registro desse preço. Os produtos também contém uma informação sobre sua possibilidade de ser vegano, essa informação é armazenada como um número de 0 a 2, onde 0 quer dizer que o produto não é vegano, 1 é que ele é possivelmente vegano, 2 que ele é vegano. Para tal, produtos contém uma lista dos seus **componentes*** de fabricação.

**Produtos** guardam vários **históricos de preços**, que armazenam informações sobre o preço registrado, a data que esse preço foi registrado e o supermercado* onde foi registrado.

**Lista de compras** são realizadas em **supermercados**.  Cada supermercado possui seu código identificador único, nome e endereço (composto pelas mesmas características do endereço do usuário). Supermercados contém produtos*.

**Marcas** possuem um código identificador único, nome, uma breve descrição, e sua classificação sobre se ela é vegana ou não, diferente do dos produtos, ela é binárias.

**Componentes** possuem um código identificador único, nome, uma descrição e uma classificação binária sobre se é vegano ou não.


## 5. Next Steps
Esses são os próximos passos que vamos seguir, não necessariamente em ordem:

- Aprofundamento na validação com os usuários, via protótipo e MVP. (Em especial para o público vegano)
- História do Usuário
- Protótipo Low-Fi
- Protótipo Hi-Fi
- Início do desenvolvimento
- Povoamento do banco de dados
- Testes contínuos
