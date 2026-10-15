FROM tomcat:9.0-jdk17-temurin

ENV CATALINA_HOME=/usr/local/tomcat
WORKDIR ${CATALINA_HOME}

# Despliega la aplicación como página principal del servidor.
RUN rm -rf ${CATALINA_HOME}/webapps/ROOT
COPY app/ ${CATALINA_HOME}/webapps/ROOT/

# Railway asigna el puerto mediante la variable PORT.
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 8080
CMD ["/start.sh"]
