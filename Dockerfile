FROM eclipse-temurin:21-jdk

WORKDIR /app

COPY . ./

RUN chmod +x gradlew

RUN ./gradlew bootJar -x test

CMD ["sh", "-c", "java -jar $(ls build/libs/* | grep -v plain | head -n 1)"]

