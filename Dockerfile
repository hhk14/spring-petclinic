FROM 974889669581.dkr.ecr.ap-south-1.amazonaws.com/tomcat:v1.0
LABEL maintainer="HHK"
COPY target/*.jar .
EXPOSE 8080
CMD ["catalina.sh", "run"]
