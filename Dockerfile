#FROM ImageName
FROM java:8

#The EXPOSE instruction informs Docker that the container listens on the specified network ports at runtime.
EXPOSE 8080

#ADD copies from source to destination
ADD /target/boothello-0.0.1-SNAPSHOT.jar boothello.jar

#ENTRYPOINT allows you specify a command that will execute when you run the container
ENTRYPOINT ["java","-jar","boothello.jar"]