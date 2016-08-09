# Generador Horarios Tec II
**IMPORTANTE**: Base de datos actualizada **SOLO** con los datos al día de hoy (08/08/2016) y **SOLO** incluye los datos actualizados del **3ER SEMESTRE**, los datos de los demás semestres son viejos.

Este generador de horarios esta realizado como parte de un proyecto escolar, puede contener ciertos errores ( los tiene, y muchos.. ).

### Características

- Muestra la carga semestral actual
- Permite definir las características como hora de entrada y salida en la busqueda de materias
- Finalmente muestra los clases disponibles con los parametros de busqueda, así como crea un archivo con la información (esto ultimo presenta errores)

### Instalación

Importar directamente a netbeans descargando el zip con el código desde Github

### Configuración
Anotar la contraseña local de su servidor en las siguientes dos clases:
- Busqueda.java
- SeleccionMaterias.java

Ambas en la linea 60:
```
Connection conn = DriverManager.getConnection(url, "root", "AQUI VA EL PASS DE TU SERVER LOCAL");
```
Si tienes de usuario otro distinto al default de tu servidor MYSQL cambiar **root** en esa misma linea por el usuario que tengas.

### Base de Datos
La base de datos va dentro de los archivos con el nombre **bd.sql**.
### Licencia

**Free Software**

### Autores
- [Priscila Gomez](https://www.facebook.com/edithgmz4)
- [Luis Trejo](https://www.facebook.com/TrejoLuis)