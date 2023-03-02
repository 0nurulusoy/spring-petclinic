# Run spring-petclinic application as a docker container.


### Run the image with below command, you need to wait up to 1-2 mins to access it from browser

PS: if you wanna access it from host ip or host's public ip you need to add host option just like below command, and while running since this is an designed as interactive java app, if you want it to run it in background, don't forget to add -d parameter.
    
    docker pull tryingtobecoder/docker-hello-world:latest
    docker run -d --network host tryingtobecoder/docker-hello-world:latest
    
Now go to, http://server_ip:8080

## If you want to edit the image,

### First get the project files after edditing them, build the image locally.

    git clone https://github.com/devopsrange/spring-petclinic
    cd spring-petclinic
    docker build -t spring-petclinic-app .
    
### Now we can tag and push our image to tryingtobecoder/docker-hello-world repository. You can change the repository parameters depending on yours.
    
    docker tag spring-petclinic-app:latest tryingtobecoder/docker-hello-world:latest
    docker push tryingtobecoder/docker-hello-world:latest
