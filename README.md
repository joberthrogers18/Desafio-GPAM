# Desafio-GPAM

**Autor:** Joberth Rogers Tavares Costa 

Repositório para guardar os arquivos para o desafio promovido pela GPAM 

## Instalação

Primeiro baixe o repositório com:

* ```git clone https://github.com/joberthrogers18/Desafio-GPAM.git```

Caso queira instalar e rodar o programa a necessário ter o Docker instalado em sua maquina.
Após sua instalação, basta ir na diretório do projeto e rodar o seguinte comando:

* ```sudo docker build jupyter .```

Depois que estiver buildado a imagem, basta rodar o proximo comando:

* ```sudo docker run -d -p 8888:8888 jupyter```

### Passo alternativo de instalção

Caso deseje baixar a imagem já pronta do docker hub com todo o conteúdo do repositório e dependências instaladas, que se encontra nesse [endereço do dockerhub](https://hub.docker.com/r/joberthrogers/jupyter). 
Utilize o seguinte comando:

* ```sudo docker pull joberthrogers/jupyter```

Logo em seguida use o comando: 

* ```sudo docker run -d -p 8888:8888 joberthrogers/jupyter```

E pronto!
