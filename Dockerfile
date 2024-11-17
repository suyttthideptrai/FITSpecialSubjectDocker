# Backend build & run
FROM maven:3.8.3-eclipse-temurin-17 as backend_builder
WORKDIR /app/backend
RUN git clone https://github.com/suyttthideptrai/SS1_2023_StableMatchingSolver_Backend.git .
RUN git checkout deploy
# download & build app dependencies
RUN mvn dependency:go-offline -B
RUN mvn clean package -DskipTests


FROM eclipse-temurin:17-jre-alpine as backend_runner
WORKDIR /app/backend/
CMD ["java", "-jar", "/target/SS2_Backend-0.0.1-SNAPSHOT.jar"]


FROM node:20-alpine AS frontend_builder
WORKDIR /app/frontend
RUN git clone https://github.com/suyttthideptrai/SS2-game-theory-solver.git .
RUN git checkout deploy
RUN npm install && npm run build


FROM ubuntu:22.04
RUN apt-get update && \
    apt-get install -y nginx openjdk-11-jdk

COPY nginx/default.conf /etc/nginx/conf.d/default.conf

COPY --from=frontend_builder /app/frontend/build /usr/share/nginx/html

EXPOSE 80