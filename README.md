## Documentacion completa
 - [Manual de usuario](https://uceedu-my.sharepoint.com/:b:/g/personal/cdferri_uce_edu_ec/EfqzyTPan75NkbgR_BW5cvQBEeyKfPAu1ouviCFb5pd6vw?e=MDbwDn)
 - [Proyecto (Respaldo)](https://uceedu-my.sharepoint.com/:u:/g/personal/cdferri_uce_edu_ec/ERtmejWp6PBFqHMkcbM-5OgBBdOuShoWLXoBMIabx7jGGA?e=zFdxzc)

# Operaciones CRUD en Servlet y JSP
CRUD significa Crear, Leer, Actualizar y Eliminar operaciones utilizando una base de datos y estas son las operaciones que es el núcleo de muchas aplicaciones dsitribuidas. 
Vamos a construir una aplicación sencilla en las operaciones CRUD en Servlet y JSP con la base de datos Mysql. 

# Herramientas y tecnologías utilizadas
- Java JDK 17
- NetBeans 16
- Glassfish 6.2.5
- MySQL 8

# Configuración de MySQL para operaciones CRUD en Servlet
Utilizaremos MySQL Workbench para crear una base de datos y una tabla en ella.  Ahora, abra el banco de trabajo MySQL y ejecute los siguientes comandos.

```python
CREATE DATABASE demo;

USE demo;

create table users (
	id  int(3) NOT NULL AUTO_INCREMENT,
	name varchar(120) NOT NULL,
	email varchar(220) NOT NULL,
	country varchar(120),
	PRIMARY KEY (id)
);
```
# Codificación CRUD en Servlet
1. DAO (Data Access Object) - Esta carpeta contiene toda la lógica de la base de datos.
2. Model - Esta carpeta contiene las clases Java para la lógica del backend.
3. Web - Consiste en archivos JSP que se utilizan básicamente para diseñar el frontend.
