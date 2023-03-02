# Pubishing a docker image to dockerhub.

### First build the image locally.

    git clone https://github.com/devopsrange/spring-petclinic
    cd spring-petclinic
    docker build -t spring-petclinic-app .
    
### Now we can tag and push our image to tryingtobecoder/docker-hello-world repository. You can change the repository parameters depending on yours.
    
    docker tag spring-petclinic-app:latest tryingtobecoder/docker-hello-world:latest
    docker push tryingtobecoder/docker-hello-world:latest

### Lets pull and run the image. While running since this is an designed as interactive java app, if you want it to run it in background, don't forget to add -d parameter, and the host option is for you to access webui from host address.
    
    docker pull tryingtobecoder/docker-hello-world:latest
    docker run -d --network host tryingtobecoder/docker-hello-world:latest
