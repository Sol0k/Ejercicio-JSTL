#!/bin/sh
set -eu
PORT_TO_USE="${PORT:-8080}"
# Cambia el puerto HTTP del conector principal de Tomcat para usar el de Railway.
sed -i "s/port=\"8080\"/port=\"${PORT_TO_USE}\"/" "${CATALINA_HOME}/conf/server.xml"
exec "${CATALINA_HOME}/bin/catalina.sh" run
