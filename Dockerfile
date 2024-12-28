FROM maven:3.6.3-openjdk-17
RUN mkdir spring_di
WORKDIR spring_di
COPY . .
RUN mvn install
CMD ["java", "-jar", "target/main.jar"]