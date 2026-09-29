FROM amazoncorretto:27

WORKDIR /app

COPY src /app/src
COPY pom.xml /app/pom.xml

RUN yum install -y maven
RUN mvn package -DskipTests

ENTRYPOINT ["java", "-cp", "target/classes", "com.napier.sem.Main"]
