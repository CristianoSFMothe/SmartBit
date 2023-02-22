# Smart Bit

> Sistema de gerenciamento de acadêmias 

## Pré-requistos

1. [Git](https://git-scm.com/) `git version 2.39.2.windows.1`
2. [Nodejs](https://nodejs.org/en/) `v18.14.0`
   *    NPM `9.5.0`
   *    Yarn `1.22.19` (para habilitar ele no `corepack enable`)
3. [Python](https://www.python.org/) `Python 3.11.2`
4. [Robot Framework](https://robotframework.org/) `Robot Framework 6.0.2 (Python 3.11.2 on win32)`
5. [ElephantSQL](https://www.elephantsql.com/?_gl=1*6a324p*_ga*MTk4ODU4Mjk5My4xNjc2NDg2OTk3*_ga_37GXT4VGQK*MTY3NzA3NDMyMS44LjEuMTY3NzA3NjIwMy4wLjAuMA..)
6. [MongoDB](https://www.mongodb.com/?_gl=1*6a324p*_ga*MTk4ODU4Mjk5My4xNjc2NDg2OTk3*_ga_37GXT4VGQK*MTY3NzA3NDMyMS44LjEuMTY3NzA3NjIwMy4wLjAuMA..)
7. [Redis](https://redis.io/?_gl=1*vsng43*_ga*MTk4ODU4Mjk5My4xNjc2NDg2OTk3*_ga_37GXT4VGQK*MTY3NzA3NDMyMS44LjEuMTY3NzA3NjIwMy4wLjAuMA..) 
8. [MailTrap](https://mailtrap.io/?_gl=1*vsng43*_ga*MTk4ODU4Mjk5My4xNjc2NDg2OTk3*_ga_37GXT4VGQK*MTY3NzA3NDMyMS44LjEuMTY3NzA3NjIwMy4wLjAuMA..)

## Configura do Database

# ElephantSQL

> Acessando o ElephantSQL por conta do Google

## Criação da Instância de banco de dados

1.  Criação do time

![criando-time](https://user-images.githubusercontent.com/68359459/220765256-68f20fa0-46d7-4ee3-8c92-817193decec5.png)

2. Criando uma instância de banco de dados

![criando-instancia-bd](https://user-images.githubusercontent.com/68359459/220765406-11940d60-7f0f-447b-b7c8-66198d2e691c.png)

3.  Informar o nome da instância, nesse caso será **SmartBit**, e clicar em **Select Region**

![criando-instancia-bd-select-region](https://user-images.githubusercontent.com/68359459/220765443-8b4bcae4-73fb-4a28-ad86-95a739dc2430.png)

4. Selecionar o Data Center de São Paulo

![criando-instancia-data-center](https://user-images.githubusercontent.com/68359459/220765491-6b20b5dd-cd34-4632-b73f-40ae01600422.png)

5. Apos clicar em Review irá informa os dados da instância criada, só confirma

![criando-instancia-review](https://user-images.githubusercontent.com/68359459/220765556-65cc3e50-c98c-4d6e-bfd1-2233eec25a97.png)

6. Clicando na instância do Bando de Dados criado, iremos obter as infomações para configuração no projeto

![info-instancia](https://user-images.githubusercontent.com/68359459/220765605-4210e7b9-027f-4fe0-a7e6-03798561aee2.png)

## Configuração do arquivo .env

Dentro da pasta `apps` -> `api` abrir o arquivo `.env` e substituir as informações

```bash
# Database => ElephantSQL
DB_DIALECT=postgres
DB_HOST=elephantsql.com
DB_USER=user
DB_PASS=pass
DB_NAME=database
```
# MongoDB

## Criando organização

> Acessando a conta com conta do Google

1. Criar a organização

![criando-organizacao](https://user-images.githubusercontent.com/68359459/220765744-3780a811-6f35-41a5-84f4-d012b4a87420.png)

2. Criando o projeto

![criando-projeto](https://user-images.githubusercontent.com/68359459/220765790-c88fa2cd-9197-483c-ad51-a72ac5e9b68d.png)


3. Criando a Database

![criar-database](https://user-images.githubusercontent.com/68359459/220766015-dec13f5b-ac27-43ad-ab7e-925497b88ef1.png)

4. Criando a instância e selecionado a região do Provider

![criando-database-instancia](https://user-images.githubusercontent.com/68359459/220766053-864dd6da-97da-46ba-bfd3-e2c18ae16e5e.png)

## Configurando a conexão

1. Selecionar o `Username and Password`

![config-conexao1](https://user-images.githubusercontent.com/68359459/220766190-ff1c84fc-04a3-4631-8785-9e285fdc062f.png)

![config-conexao2](https://user-images.githubusercontent.com/68359459/220766197-8b932d44-5361-4599-850d-9ea4d525e67c.png)

![config-conexao3](https://user-images.githubusercontent.com/68359459/220766210-7a83eec2-bcc2-496d-b220-64a3aca87b93.png)

* Depois de a configuração de usuário estiver feita, clicar em `Connect` 

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

# Redis

> Acessa com a conta do Google

## Configuração

1. Com acesso a conta pode-se clicar em `New subscription` realizado as configurações e clicar em `Create subscription`

![redis-home](https://user-images.githubusercontent.com/68359459/220766376-d8ecc667-9df1-40bb-8aad-70afd0a5164e.png)

2. Escolhe o plano, do tipo `Fixed Plan`

![fixed-plan](https://user-images.githubusercontent.com/68359459/220766418-1519a505-ad51-4257-8a46-e2c639ff10a5.png)

3. Selecionando o clound da `AWS`

![fixed-plan2](https://user-images.githubusercontent.com/68359459/220766440-6f47f700-c66e-4c4c-9860-a23468953b68.png)

4. Informando o nome e clocando em `Create subscription`

![fixed-plan3](https://user-images.githubusercontent.com/68359459/220766476-073bf80e-207e-4c9b-8f4b-4840562be4f8.png)

## Criando a Database

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

# Mailtrap

## Configuração de conexão

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

# Execultado o projeto

1. Editando primeiramente informações no arquivo `up.sh` que esta dentro da pasta `api` 

```bash
yarn sequelize db:migrate:undo:all
yarn sequelize db:migrate
yarn sequelize db:seed:all
yarn dev
```

2. No terminal dentro da pasta `api` digitar o comando `chmod +x up.sh`, o **chmod** e um recurso do Linux para dar premissão em arquivos e pastas

3. Agora ainda dentro da pasta `api` digitar o comando `./up.sh`, onde esse comando irá ler todas a estrutura de dados, popular o banco de dados e levantar a **API**, apos isso podemos voltar para o site do ElephantSQL, e no meu **Browser**, podemos ver que o banco de dados foi populado com todas as tabelas

![database](https://user-images.githubusercontent.com/68359459/220776497-e824fd30-782a-4ad5-9fd4-22fb580b253b.png)

4. Executando o comando `select * from public.users;` podemos ver que a consulta no banco de dados trouxe as informações do usuário Admin

![select](https://user-images.githubusercontent.com/68359459/220776547-52ef90da-b455-456a-a3e2-667c3c42df1a.png)

