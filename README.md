# Compose for Mshop project

<div style="background-color: #f0f0f0; height:20vh; display: flex; flex-direction: row; justify-content: center;">
<img src="https://github.com/marckvaldo/Mshop.Compose/blob/main/Imagens/Mshop.Compose.png">
</div>

### Project Description
This project contains dependencies for the Mshop project to work.

<h4> 
	🚧  Composer 🚀 under construction...  🚧
</h4>

### Prerequisites

Before starting, you need install the following tools on your machine:

[Git](https://git-scm.com)<br/>
[Docker](https://www.docker.com/). <br/>


Also, It's good you get a code editor to work like this [VSCode](https://code.visualstudio.com/)
or another tools of your choice.

### 🎲 Running

```bash
# Clone this repository
$ https://github.com/marckvaldo/Mshop.Compose.git Mshop.Compose

#you need to create an external network called 'app-catalogo'
$ docker network create app-catalago

# access this directory in the terminal/cmd
$ cd MShop.Compose

# run the containers 
$ docker-compose up -d

```

you should now have some containers runing in your machine like theses are;
- catalagoDb-dev
- mongodb-dev
- rabbitmq-dev

### 🛠 Settings
All configuration are in the docker-compose.yml file.

### 🛠 Technologies

the following tools were used in building the project;

- [Mysql](https://www.mysql.com/)
- [RabbitMQ](https://www.rabbitmq.com/)
- [MongoDB](https://www.mongodb.com/try/download/community)
- [Redis](https://redis.io/docs/latest/develop/ai/search-and-query/)
- [Docker](https://www.docker.com/)

#📝 License <br/>
this project is under the MIT license

Made with ❤️ by Marckvaldo. 👋🏽 Contact me by (marckvaldo@hotmail.com, marckvaldowallas@gmail.com).<br/>
My linkedin https://www.linkedin.com/in/marckvaldo/

