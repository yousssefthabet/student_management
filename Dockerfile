# Étape 1 : image Java officielle
FROM eclipse-temurin:17-jre-alpine

# Étape 2 : copier le jar généré par mvn package
COPY target/*.jar app.jar

# Étape 3 : exposer le port
EXPOSE 8080

# Étape 4 : commande de démarrage
ENTRYPOINT ["java", "-jar", "/app.jar"]
