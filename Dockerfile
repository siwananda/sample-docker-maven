#
# Package stage
#
FROM openjdk:11-jre-slim
COPY --from=build /home/app/target/sample-docker-maven.jar /usr/local/lib/sample-docker-maven.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/sample-docker-maven.jar"]