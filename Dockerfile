# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory to /app
WORKDIR /app

# Install Maven
RUN apk add --no-cache curl tar bash
RUN mkdir -p /opt/maven
RUN curl -fsSL https://dlcdn.apache.org/maven/maven-3/3.9.0/binaries/apache-maven-3.9.0-bin.tar.gz | tar -xzC /opt/maven --strip-components=1
ENV MAVEN_HOME=/opt/maven
ENV PATH=$MAVEN_HOME/bin:$PATH

# Copy the current directory contents into the container at /app
COPY . /app

# Build the application using Maven
RUN mvn package -DskipTests

# Set the startup command to run the application
CMD ["./mvnw", "spring-boot:run"]
