FROM eclipse-temurin
WORKDIR /workspace
ARG JAR_FILE=target/catalog-service-v1.jar
COPY ${JAR_FILE} catalog-service.jar
ENTRYPOINT [ "java", "-jar", "catalog-service.jar" ]