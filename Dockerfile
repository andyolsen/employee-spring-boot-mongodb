FROM openjdk:11.0

ADD target/employee-spring-boot-mongodb-0.0.1-SNAPSHOT.jar app.jar

# Set an environment variable, specifying the URL of MongoDB server we want to connect to.
ENV EMPLOYEE_MONGODB_URI=mongodb://mymongodb:27017/test

ENTRYPOINT ["java","-jar","/app.jar"]
