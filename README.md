Link Docker Hub 

https://hub.docker.com/repository/docker/guzmandp/fullcycle/general


# docker-fullcycle

Esse desafio é muito empolgante principalmente se você nunca trabalhou com a linguagem Go!
Você terá que publicar uma imagem no docker hub. Quando executarmos:

docker run <seu-user>/fullcycle

Temos que ter o seguinte resultado: Full Cycle Rocks!!

Se você perceber, essa imagem apenas realiza um print da mensagem como resultado final, logo, vale a pena dar uma conferida no próprio site da Go Lang para aprender como fazer um "olá mundo".

Lembrando que a Go Lang possui imagens oficiais prontas, vale a pena consultar o Docker Hub.

3) A imagem de nosso projeto Go precisa ter menos de 2MB =)


______________________________________________________
Reduce the size of your Docker images drastically
                                                      
Use multi-stage build 
Exaple:
                                                      
FROM golang:alpine as build
WORKDIR /go/src/app
COPY . .
RUN go build -o hello-world .


FROM alpine
WORKDIR /app
COPY --from=build /go/src/app /app
CMD ["./hello-world"] 
______________________________________________________
