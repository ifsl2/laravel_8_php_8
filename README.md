# Dockerfile - PHP para Laravel

Dockerfile e Docker-compose para rodar o Laravel em desenvolvimento

  - Não use em produção, vai rodar só não é recomendável
  - Alguns pacotes do PHP não foram instalados, possivelmente pacotes de terceiros pediram a instalação

### Versões do PHP compatíveis com esse script

  - 8.0-RC-FPM
  - 7.4-FPM
  - 5.6-FPM

### Instalação do Dcoker
Linux/Mac: 
https://www.digitalocean.com/community/tutorials/como-instalar-e-usar-o-docker-no-ubuntu-18-04-pt
Windows: 
https://docs.docker.com/docker-for-windows/install/

### Criação do container do Docker

Faça o clone desse repositório e siga as instruções:

Se você quiser trocar porta de saída do seu container vá até o arquivo docker-compose.yml e troque a porta na linha 8.

```sh
ports:
    - PORTA_DE_SAIDA_DO_SEU_COMPUTADOR:8000
```

Por padrão a pasta do projeto em Laravel deve ser clonada dentro do repositório com o nome "backend", caso você queira mudar isso entre no arquivo Dockerfile e mudar a linha 13

```sh
COPY ./PASTA_DO_PROJETO_NO_SEU_COMPUTADOR /app
```

Para rodar o projeto basta subir o projeto, usando o comando abaixo:

```sh
docker-compose up -d
```

Valeu :)
