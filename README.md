# Ejercicio JSTL — despliegue Docker en Railway

## Despliegue
1. Descomprime este ZIP.
2. Sube la carpeta `railway_jstl` a un repositorio GitHub.
3. En Railway selecciona **New Project → Deploy from GitHub Repo** y elige el repositorio.
4. Railway detectará el `Dockerfile` y construirá la imagen. No configures un puerto fijo: el contenedor usa la variable `PORT` de Railway.
5. Abre el dominio público que Railway genere. La aplicación se publica en la ruta raíz (`/`).

## Base de datos del ejercicio 8
Los ejercicios que consultan la tabla `empleados` requieren una base de datos MySQL accesible desde Railway. El archivo `app/WEB-INF/jspf/conexion.jspf` todavía apunta a `localhost:3306`, usuario `root` y contraseña vacía, igual que en el ZIP original. Eso funcionará solo en un entorno donde MySQL esté dentro del mismo contenedor, lo cual no es el caso de Railway.

Para usar MySQL en Railway, crea una instancia MySQL y adapta `conexion.jspf` para usar las variables de conexión que Railway proporcione (`MYSQLHOST`, `MYSQLPORT`, `MYSQLDATABASE`, `MYSQLUSER`, `MYSQLPASSWORD`) o usa una URL JDBC configurada por variables de entorno. No publiques credenciales en el repositorio.

## Notas
- Se conserva el contenido JSP/JSTL y los JAR de `WEB-INF/lib` del ZIP original.
- El enlace del menú al `ejercicio1.jsp` está en el proyecto original, pero ese archivo no está incluido en el ZIP; por eso ese enlace no funcionará hasta que se agregue el archivo.
- El contenedor usa Tomcat 9 y Java 17.
- Si la compilación falla por una incompatibilidad del controlador MySQL incluido, revisa `app/WEB-INF/lib/mysql-connector-j-26.7.0.jar` y reemplázalo por una versión oficial compatible con Java 17.
