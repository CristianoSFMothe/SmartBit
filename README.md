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

![2023-02-22_11h39_00.png](..%2F..%2F..%2F..%2F..%2FPictures%2FScreenpresso%2F2023-02-22_11h39_00.png)

2. Criando uma instância de banco de dados

![2023-02-22_11h41_46.png](..%2F..%2F..%2F..%2F..%2FPictures%2FScreenpresso%2F2023-02-22_11h41_46.png)

3.  Informar o nome da instância, nesse caso será **SmartBit**, e clicar em **Select Region**

![criando-instancia-bd-select-region.png](..%2F..%2F..%2F..%2F..%2FPictures%2FScreenpresso%2Fcriando-instancia-bd-select-region.png)

4. Selecionar o Data Center de São Paulo

![criando-instancia-data-center.png](..%2F..%2F..%2F..%2F..%2FPictures%2FScreenpresso%2Fcriando-instancia-data-center.png)

5. Apos clicar em Review irá informa os dados da instância criada, só confirma

![criando-instancia-review.png](..%2F..%2F..%2F..%2F..%2FPictures%2FScreenpresso%2Fcriando-instancia-review.png)

6. Clicando na instância do Bando de Dados criado, iremos obter as infomações para configuração no projeto

![info-instancia.png](..%2F..%2F..%2F..%2F..%2FPictures%2FScreenpresso%2Finfo-instancia.png)

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

![criando-organizacao.png](..%2F..%2F..%2F..%2F..%2FPictures%2FScreenpresso%2Fcriando-organizacao.png)

2. Criando o projeto

![criando-projeto.png](..%2F..%2F..%2F..%2F..%2FPictures%2FScreenpresso%2Fcriando-projeto.png)

3. Criando a Database

![criar-database.png](..%2F..%2F..%2F..%2F..%2FPictures%2FScreenpresso%2Fcriar-database.png)

4. Criando a instância e selecionado a região do Provider

![criando-database-instancia.png](..%2F..%2F..%2F..%2F..%2FPictures%2FScreenpresso%2Fcriando-database-instancia.png)

## Configurando a conexão

1. Selecionar o `Username and Password`

![config-conexao1.png](..%2F..%2F..%2F..%2F..%2FPictures%2FScreenpresso%2Fconfig-conexao1.png)

![config-conexao2.png](..%2F..%2F..%2F..%2F..%2FPictures%2FScreenpresso%2Fconfig-conexao2.png)

![config-conexao3.png](..%2F..%2F..%2F..%2F..%2FPictures%2FScreenpresso%2Fconfig-conexao3.png)

* Depois de a configuração de usuário estiver feita, clicar em `Connect` 

![config-conexao4.png](..%2F..%2F..%2F..%2F..%2FPictures%2FScreenpresso%2Fconfig-conexao4.png)

* Em seguida em `Connect your application`

![config-conexao5.png](..%2F..%2F..%2F..%2F..%2FPictures%2FScreenpresso%2Fconfig-conexao5.png)

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

![redis-home.png](..%2F..%2F..%2F..%2F..%2FPictures%2FScreenpresso%2Fredis-home.png)

2. Escolhe o plano, do tipo `Fixed Plan`

![fixed-plan.png](..%2F..%2F..%2F..%2F..%2FPictures%2FScreenpresso%2Ffixed-plan.png)

3. Selecionando o clound da `AWS`

![fixed-plan2.png](..%2F..%2F..%2F..%2F..%2FPictures%2FScreenpresso%2Ffixed-plan2.png)

4. Informando o nome e clocando em `Create subscription`

![fixed-plan3.png](..%2F..%2F..%2F..%2F..%2FPictures%2FScreenpresso%2Ffixed-plan3.png)

## Criando a Database

![create-database.png](..%2F..%2F..%2F..%2F..%2FPictures%2FScreenpresso%2Fcreate-database.png)

1. Informa o nome do database, deixando todas as informações padrão e clicando em `create database`

![create-database2.png](..%2F..%2F..%2F..%2F..%2FPictures%2FScreenpresso%2Fcreate-database2.png)


2. Editar o arquivo `.env`

```bash
# Redis
REDIS_HOST=redislabs.com
REDIS_PORT=port
REDIS_PASS=pass
```
![sting-de-config.png](..%2F..%2F..%2F..%2F..%2FPictures%2FScreenpresso%2Fsting-de-config.png)

![string-config2.png](..%2F..%2F..%2F..%2F..%2FPictures%2FScreenpresso%2Fstring-config2.png)
