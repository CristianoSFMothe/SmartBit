# Smart Bit

> Sistema de gestão de acadêmias 

## Pré-requistos

1. [Git](https://git-scm.com/) `git version 2.39.2.windows.1`
2. [Nodejs](https://nodejs.org/en/) `v18.14.0`
   *    NPM `9.5.0`
   *    Yarn `1.22.19` (para habilitar ele no `corepack enable`)
3. [Python](https://www.python.org/) `Python 3.11.2`
4. [Robot Framework](https://robotframework.org/) `Robot Framework 6.0.2 (Python 3.11.2 on win32)`
5. [Library Browser](https://github.com/MarketSquare/robotframework-browser)
5. [ElephantSQL](https://www.elephantsql.com/?_gl=1*6a324p*_ga*MTk4ODU4Mjk5My4xNjc2NDg2OTk3*_ga_37GXT4VGQK*MTY3NzA3NDMyMS44LjEuMTY3NzA3NjIwMy4wLjAuMA..)
6. [MongoDB](https://www.mongodb.com/?_gl=1*6a324p*_ga*MTk4ODU4Mjk5My4xNjc2NDg2OTk3*_ga_37GXT4VGQK*MTY3NzA3NDMyMS44LjEuMTY3NzA3NjIwMy4wLjAuMA..)
7. [Redis](https://redis.io/?_gl=1*vsng43*_ga*MTk4ODU4Mjk5My4xNjc2NDg2OTk3*_ga_37GXT4VGQK*MTY3NzA3NDMyMS44LjEuMTY3NzA3NjIwMy4wLjAuMA..) 
8. [MailTrap](https://mailtrap.io/?_gl=1*vsng43*_ga*MTk4ODU4Mjk5My4xNjc2NDg2OTk3*_ga_37GXT4VGQK*MTY3NzA3NDMyMS44LjEuMTY3NzA3NjIwMy4wLjAuMA..)

## Configura do Database

# ElephantSQL

> Acessando o ElephantSQL por conta do Google

## Criação da Instância de banco de dados

<details><summary>Criando o Time</summary>

1.  Configuração do time

![criando-time](https://user-images.githubusercontent.com/68359459/220765256-68f20fa0-46d7-4ee3-8c92-817193decec5.png)

2. Criando uma instância de banco de dados

![criando-instancia-bd](https://user-images.githubusercontent.com/68359459/220765406-11940d60-7f0f-447b-b7c8-66198d2e691c.png)

3.  Informar o nome da instância, nesse caso será **SmartBit**, e clicar em **Select Region**

![criando-instancia-bd-select-region](https://user-images.githubusercontent.com/68359459/220765443-8b4bcae4-73fb-4a28-ad86-95a739dc2430.png)

4. Selecionar o Data Center de São Paulo

![criando-instancia-data-center](https://user-images.githubusercontent.com/68359459/220765491-6b20b5dd-cd34-4632-b73f-40ae01600422.png)

5. Apos clicar em Review irá informar os dados da instância criada, só confirma

![criando-instancia-review](https://user-images.githubusercontent.com/68359459/220765556-65cc3e50-c98c-4d6e-bfd1-2233eec25a97.png)

6. Clicando na instância do Bando de Dados criado, iremos obter as infomações para configuração no projeto

![info-instancia](https://user-images.githubusercontent.com/68359459/220765605-4210e7b9-027f-4fe0-a7e6-03798561aee2.png)

</details>

## Configuração do arquivo .env

<details><summary>Arquiv .env</summary>

Na pasta `apps` -> `api` abrir o arquivo `.env` e substituir as informações

```bash
# Database => ElephantSQL
DB_DIALECT=postgres
DB_HOST=elephantsql.com
DB_USER=user
DB_PASS=pass
DB_NAME=database
```
</details>

---
# MongoDB

> Acessando a conta com conta do Google

## Organização
<details><summary>Criando uma organização</summary>


1. Criar a organização

![criando-organizacao](https://user-images.githubusercontent.com/68359459/220765744-3780a811-6f35-41a5-84f4-d012b4a87420.png)

2. Criando o projeto

![criando-projeto](https://user-images.githubusercontent.com/68359459/220765790-c88fa2cd-9197-483c-ad51-a72ac5e9b68d.png)


3. Criando a Database

![criar-database](https://user-images.githubusercontent.com/68359459/220766015-dec13f5b-ac27-43ad-ab7e-925497b88ef1.png)

4. Criando a instância e selecionado a região do Provider

![criando-database-instancia](https://user-images.githubusercontent.com/68359459/220766053-864dd6da-97da-46ba-bfd3-e2c18ae16e5e.png)

</details>

## Configurando a conexão

<details><summary>Configuração a conexão</summary>

1. Selecionar o `Username and Password`

![config-conexao1](https://user-images.githubusercontent.com/68359459/220766190-ff1c84fc-04a3-4631-8785-9e285fdc062f.png)

![config-conexao2](https://user-images.githubusercontent.com/68359459/220766197-8b932d44-5361-4599-850d-9ea4d525e67c.png)

![config-conexao3](https://user-images.githubusercontent.com/68359459/220766210-7a83eec2-bcc2-496d-b220-64a3aca87b93.png)

* Após a configuração de usuário estiver feita, clicar em `Connect` 

![config-conexao4](https://user-images.githubusercontent.com/68359459/220766268-a38dc9da-8c88-4148-8ffd-931f56148a31.png)

* Em seguida em `Connect your application`

![config-conexao5](https://user-images.githubusercontent.com/68359459/220766305-12f0416c-a4bd-43ca-ba6b-b57aefb1b944.png)

* Cópiar a string de conexão e alterar os dados no arquivo `.env` dentro de `apps - api`

```bash
# Mongo

# Antes
MONGO_URL=mongo_uri

# Alteração
MONGO_URL=mongodb+srv://smartbit:<password>@cluster0.2btgpph.mongodb.net/?retryWrites=true&w=majority
```
> Dentro do `<password>` informa a senha criada anteriormente 

> E dentro informa o nome do banco de dados `SmartBitDB` entre o `/`e `?`

</details>

---
# Redis

> Acessa com a conta do Google

<details><summary>Configuração do Redis</summary>

## Configuração

1. Com acesso à conta pode-se clicar em `New subscription` realizado as configurações e clicar em `Create subscription`

![redis-home](https://user-images.githubusercontent.com/68359459/220766376-d8ecc667-9df1-40bb-8aad-70afd0a5164e.png)

2. Escolhe o plano, do tipo `Fixed Plan`

![fixed-plan](https://user-images.githubusercontent.com/68359459/220766418-1519a505-ad51-4257-8a46-e2c639ff10a5.png)

3. Selecionando o clound da `AWS`

![fixed-plan2](https://user-images.githubusercontent.com/68359459/220766440-6f47f700-c66e-4c4c-9860-a23468953b68.png)

4. Informando o nome e clocando em `Create subscription`

![fixed-plan3](https://user-images.githubusercontent.com/68359459/220766476-073bf80e-207e-4c9b-8f4b-4840562be4f8.png)

</details>

## Criando a Database

<details><summary>Configuração do Database</summary>

![create-database](https://user-images.githubusercontent.com/68359459/220766519-8beee738-8ba5-4474-99d7-f68812923e6a.png)

1. Informa o nome do database, deixando todas as informações padrão e clicando em `create database`

![create-database2](https://user-images.githubusercontent.com/68359459/220766566-371cab9a-a519-4fe5-ba92-d48e0215c9ea.png)

2. Editar o arquivo `.env`

```bash
# Redis
REDIS_HOST=redislabs.com
REDIS_PORT=port
REDIS_PASS=pass
```
![sting-de-config](https://user-images.githubusercontent.com/68359459/220766628-ed749698-80ef-444b-8284-cacdc626e426.png)

![string-config2](https://user-images.githubusercontent.com/68359459/220766639-ad5d2be6-91ef-4c20-9584-a83adf8f2e3a.png)

</details>

---

# Mailtrap

## Configuração de conexão

<details><summary>Configuração do Mailtrap</summary>

1. Clica em  `Start Testing` na opção de `Email Testing`

![mailtrap-home](https://user-images.githubusercontent.com/68359459/220776616-87860745-b4b2-4ff1-852d-a562ced79703.png)

2. Seleciona a opção `NodeJs` em **_Integration_**

![integration](https://user-images.githubusercontent.com/68359459/220776638-b1feed51-69da-46a7-85cb-c036325a444c.png)

3. Editar o arquivo `.env`

```bash
# Mail
MAIL_HOST=sandbox.smtp.mailtrap.io
MAIL_PORT=2525
MAIL_SECURE=false
MAIL_USER=user
MAIL_PASS=pass
```
</details>

---

# Execultado o projeto

<details><summary>Rotando o projeto</summary>

1. Editando primeiramente informações no arquivo `up.sh` que esta na pasta `api` 

```bash
yarn sequelize db:migrate:undo:all
yarn sequelize db:migrate
yarn sequelize db:seed:all
yarn dev
```

2. No terminal na pasta `api` digitar o comando `chmod +x up.sh`, o **chmod** e um recurso do Linux para dar premissão em arquivos e pastas

3. Agora ainda na pasta `api` digitar o comando `./up.sh`, onde esse comando irá ler todas a estrutura de dados, popular o banco de dados e levantar a **API**, apos isso podemos voltar para o site do ElephantSQL, e no meu **Browser**, podemos ver que o banco de dados foi populado com todas as tabelas

![database](https://user-images.githubusercontent.com/68359459/220776497-e824fd30-782a-4ad5-9fd4-22fb580b253b.png)

4. Executando o comando `select * from public.users;` podemos ver que a consulta no banco de dados trouxe as informações do usuário Admin

![select](https://user-images.githubusercontent.com/68359459/220776547-52ef90da-b455-456a-a3e2-667c3c42df1a.png)

5. Abrindo a pasta `web`, e executando o comando `yarn start`, podemos acessa a página principal da **Smart Bit** <a href="http://localhost:3000" target="blank">http://localhost:3000</a>

![2023-02-25_10h57_03](https://user-images.githubusercontent.com/68359459/221361480-5bc5ad4b-b9d5-47b4-95b1-a00e8dd76937.png)

```bash
  "email": "admin@smartbit.com",
  "password": "qacademy"
```
</details>

# Suites de Testes

> Caso de teste para login como administrador

## Teste Login

<details><summary>Scripts de testes para suite de login</summary>

Verifica se a aplicação está online

```bash
robot -d ./logs tests/online.robot 
```

## Teste de Login

```bash
robot -d ./logs -i login tests/login.robot 
```
## Teste de Login - e-mail não encontrado

```bash
robot -d ./logs -i email-invalid tests/login.robot 
```

## Teste de Login - senha incorreda

```bash
robot -d ./logs -i password-invalid tests/login.robot 
```

## Teste de Login - E-mail formato inválid

```bash
robot -d ./logs -i email-incorred tests/login.robot 
```

# Teste de Login - Senha em branco

```bash
robot -d ./logs -i password-empty tests/login.robot 
``

## Teste de Login - E-mail em branco

```bash
robot -d ./logs -i email-empty tests/login.robot 
```

## Teste de Login - Senha e E-mail em branco

```bash
robot -d ./logs -i fiel-empty tests/login.robot
```

## Teste suite completa

```bash
robot -d ./logs tests/login.robot 
```

</details>

## Teste Login

<details><summary>Scripts de testes para suite de matricula</summary>

## Teste de nova matricula

```bash
robot -d ./logs -i login tests/enrolls.robot 
```

</details>

## Gerenciando a Database via Robot Framework

Para dar uma maior legibilidade ao processo de automação, será necessário usar o <a href="https://franz-see.github.io/Robotframework-Database-Library/" target="blank">Database Library</a>, na documentação oficial temos o comando para instalação via pip 
```bash
pip install -U robotframework-databaselibrary
```

Também teremos que instalar o driver **psycopg2** responsável por fazer a conexão do Python com o PostgreSQL, atráves do comando 
```bash
pip install -U psycopg2
```

## Tratando a massa de dados com JSON

Para faciltar o trabalho com a massa de dados, podemos usar o **JSON**, para flexibilizar a utilização de dados, para tal e necessa instalar a library do <a href="https://github.com/robotframework-thailand/robotframework-jsonlibrary" targe="blank">JSON Library</a>, usando o pip com o seguinte comando: 
```bash
pip install -U robotframework-jsonlibrary
````

# API

## Trabalhando com a API

Para o <a href="https://github.com/MarketSquare/robotframework-requests#readme" target="blank">Robot Framework</a> trabalha com API, é necessário instalar a Library para isso, como o seguinte comando:
```bash
pip install -U robotframework-requests
```

# Mobile

## Pré-requistos

Para a automatização com o **Mobile**, precisamos ter:
* <a href="https://www.oracle.com/br/java/technologies/downloads/" target="blank">JDK 8</a> 
* <a href="https://developer.android.com/studio" target="blank">Android Studio</a>
* <a href="https://appium.io/" target="blank">Servidor Appium</a>
* Assimo como as variáveis de ambiente configuradas do Java e o Android Studio
  
![2023-03-17_22h53_47](https://user-images.githubusercontent.com/68359459/226134130-de0f01bc-607f-408b-bdb1-665087505fb4.png)

**OBS.:** Verificar a configuração do Computador para ver se suporta o Android Studio com um emulador, caso não suporte usar o dispovitivo fisico.

## Configurações do Appium

* Página inicial do Appium
  
![2023-03-18_16h35_26](https://user-images.githubusercontent.com/68359459/226146452-7663f29b-1845-4ecd-96e9-e7056ef319d4.png)

* Clicando em **Edit Configurations**, exibe as variáveis de ambiente configurada do **Java** e do **Android Studio**

![2023-03-18_16h36_26](https://user-images.githubusercontent.com/68359459/226146489-95a862c3-b7a0-4910-9639-d13adbc9e7b5.png)

* Configurações dos Desider Capabilities

![2023-03-18_18h00_24](https://user-images.githubusercontent.com/68359459/226146535-28846791-a557-45e0-bf0a-970aa1a1bbc5.png)

## Instalação do Appium no Robot Framework

No site do <a href="https://robotframework.org/#resources" target="blank">Robot Framework</a> na parte dos **resources**, podemos pesquisar por **mobile**, teremos a **AppiumLibrary**, que irá nos direncionar para a página do <a href="https://github.com/serhatbolsu/robotframework-appiumlibrary" target="blank">GitHub</a>, não qual iremos obter o comando para a instalação 
```bash
pip install --upgrade robotframework-appiumlibrary
```


