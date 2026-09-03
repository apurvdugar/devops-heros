# Stage 1: Build
FROM eclipse-temurin:21-jdk-alpine AS builder
WORKDIR /app
COPY HelloWorld.java .
RUN javac HelloWorld.java

# Stage 2: Run
FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
COPY --from=builder /app/*.class ./
EXPOSE 8080
CMD ["java", "HelloWorld"]

