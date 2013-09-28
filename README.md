## SARU
### Sistema de Administración de Rutas Urbanas

### Requerimientos

```text
Rails ~> 3.2.11
Ruby 1.9.2
PostgreSQL 9.1
```


### Modelo de trabajo

#### ISSUES
Todos los items a trabajar se toman de el tab Issues, si se trata de un requerimiento nuevo o un defecto, hay que crear primero el issue y poner el tag apropiado.

#### Estrategia de branching.
Una vez elegido el issue con el que se va a trabajar, es necesario crear un nuevo branch para hacer los cambios.
```bash
git pull origin development
git branch [nombre descriptivo del issue (branch name)] development

ejemplo
git branch sistema_autenticacion development
o
git branch issue_3 development
```
Con esto se creara un nuevo branch para el issue basado en el branch development

#### Pull requests
Después de terminar el issue, el branch se debe mandar y luego desde github generar un pull request contra el branch development. Un pull request básicamente es solicitar que el branch que se acaba de subir se integre con dicho branch. De esta manera tenemos control sobre los cambios.

Ejemplo
```bash
git add .
git commit -m "Creación del sistema de autenticación"
git push
```

Luego ir a github al tab lateral <>Code, en el botón branch que aparece a la izquierda, elegir el branch que acabamos de enviar y luego presionar el boton verde que está a la izquierda, que dice Compare & Review al poner el mouse encima..

Llevará a la página del review y en la parte de arriba dar click al boton Edit y cambiar master por development. De esta manera le indicamos a github que queremos integrar nuestro branch con el branch development.

Dar click al link que dice Click to create a pull request for this comparison.
Escribir una descripción.
Click al botón Send pull request.

#### Branches principales

##### Development
En este branch vamos a integrar todo el código y es el que se usará para hacer pruebas

##### Master
Una vez que el código sea probado se hara un merge con Master que será la versión final para producción

