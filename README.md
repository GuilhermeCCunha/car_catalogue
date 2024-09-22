# Car Catalogue

__Um app para você cadastrar seus carros favoritos.__



No app é possível escolher dois idiomas, inglês e português brasileiro

## Criando

Todos os campos obrigatórios dos formulários possuem validação

### Marca 



### Carro



## Editando

### Marca



### Carro



## Excluindo

### Marca



### Carro



## Instruções gerais

Para executar o projeto é necessário ter instaladas as versões do Ruby e do Rails especificadas no Gemfile

```bash
bundle install
```

```bash
yarn install 
```
* Use o comando abaixo para cadastrar automaticamente algumas marcas e carros no banco de dados em ambiente de desenvolvimento

    ```bash
       rails dev:setup
    ```

* Use o comando abaixo para inicializar um servidor em desenvolvimento na sua máquina

    ```bash
       rails s -b 0.0.0.0 
    ```
* Também é possível inicializar um servidor em desenvolvimento com o comando abaixo

    ```bash
       bin/dev
    ```

o projeto será executado em modo de desenvolvimento

## Instruções para executar em produção

* primeiro apague o arquivo `config/credentials.yml.enc` e depois crie uma nova `config/master.key`  com o comando 

    ```bash 
        EDITOR=nano rails credentials:edit 
    ```

* Use o comando abaixo para pré compilar o projeto
    ```bash 
       RAILS_ENV=production rails assets:precompile 
    ```
* Use o comando abaixo para inicializar um servidor em produção na sua máquina
    ```bash 
       RAILS_ENV=production rails s -b 0.0.0.0 
    ```  
* Em produção eu configurei o banco de dados Postgres, eu também configurei ele para rodar no Docker, use o comando abaixo para criar e iniciar os contêineres

    ```bash 
       docker compose up 
    ```  
* Use o comando abaixo para criar o banco de dados e migrar as tabelas    

    ```bash 
       RAILS_ENV=production rails db:create db:migrate
    ```  

* Eu também configurei um pgAdmin abra o arquivo `docker-compose.yml` para ver mais detalhes

    
