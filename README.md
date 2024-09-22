# Car Catalogue

__Um app para você cadastrar seus carros favoritos.__

![car_catalogue_demonstration](https://github.com/user-attachments/assets/23dd8a3b-582c-460e-bb2e-4dd9b16d5cef)

No app é possível escolher dois idiomas, inglês e português brasileiro

## Criando

Todos os campos obrigatórios dos formulários possuem validação

### Marca 

![car_catalogue_creating_brand](https://github.com/user-attachments/assets/0f9f70d8-5dd4-4812-8a68-fa9a63022612)

### Carro

![car_catalogue_creating_car](https://github.com/user-attachments/assets/9b4fec0b-e2be-4c65-a24f-6e16196176e0)

## Editando

### Marca

![car_catalogue_editing_brand](https://github.com/user-attachments/assets/a1f376a7-4dcd-42c9-a19c-2b72203ffdb4)

### Carro

![car_catalogue_editing_car](https://github.com/user-attachments/assets/99918aa4-e39b-4415-b93f-050094ec88e0)

## Excluindo

### Marca

![car_catalogue_deleting_brand](https://github.com/user-attachments/assets/3e3b68f7-445a-4bc1-bbcf-52de87597fa1)

### Carro

![car_catalogue_deleting_car](https://github.com/user-attachments/assets/639fcde6-a764-4703-9055-5952e9e1aff2)

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

    
