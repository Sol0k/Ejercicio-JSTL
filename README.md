# Guía JSTL — Docker / Railway

## Despliegue
1. Sube el contenido de este proyecto a la raíz de un repositorio GitHub.
2. En Railway selecciona Deploy from GitHub Repo.
3. Railway detectará el Dockerfile y construirá la imagen.
4. Genera un dominio público en Settings → Networking.

Tomcat 9 ejecuta JSP y JSTL. El script `start.sh` adapta el conector HTTP al valor `PORT` asignado por Railway.

## Estructura
- `Dockerfile`: crea la imagen con Tomcat 9 y Java 17.
- `app/`: aplicación web desplegada como contexto raíz.
- `app/WEB-INF/lib/`: librerías JSTL y conector JDBC.

## Base de datos
El ejercicio 8 usa MySQL. El archivo `app/WEB-INF/jspf/conexion.jspf` apunta inicialmente a `localhost:3306/empleados`, usuario `root` y contraseña vacía. Eso solo sirve si MySQL está en el mismo contenedor, lo que no es recomendable en Railway. Para usar el ejercicio 8, crea un servicio MySQL en Railway y actualiza URL, usuario y contraseña para usar las variables de conexión de ese servicio. No guardes credenciales sensibles en un repositorio público.

## Nota
Se agregó `app/ejercicio1.jsp` porque `index.jsp` enlaza a ese archivo, pero no estaba incluido en el ZIP original. La página envía los tres números a `resultadoC1.jsp`.
