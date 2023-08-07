FROM 974889669581.dkr.ecr.ap-south-1.amazonaws.com/tomcat:v1.0
LABEL maintainer="HHK"
RUN adduser tomcat
RUN chown -R tomcat:tomcat  /usr/local/tomcat/webapps
WORKDIR /usr/local/tomcat/webapps
COPY target/*.jar .
EXPOSE 8080
CMD ["catalina.sh", "run"]
