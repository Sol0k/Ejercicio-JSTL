#!/bin/sh
set -eu
PORT_TO_USE="${PORT:-8080}"
# Configura el conector HTTP de Tomcat con el puerto que asigna Railway.
sed -i "s/port=\"8080\"/port=\"${PORT_TO_USE}\"/" "${CATALINA_HOME}/conf/server.xml"
exec "${CATALINA_HOME}/bin/catalina.sh" run
