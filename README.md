# RPMBuilder
## Scripts for auto build a RPM package

### English

This software build a RPM file with your code.

Using Docker, this software start a new container and after copy the files into this it executes the `rpmbuild` command where the `specs` file is in the path `SPECS/file.spec`. Later, if not has problems, the *RPM* file is downloaded from container and container will be deleted.

#### Requirements:
- Docker
- Internet connection
- Next folder structure:
    ```
    /root/rpmbuilder
    |-- BUILD/
    |-- BUILDROOT/
    |-- RPMS/
    |-- SOURCES/
    |-- SPECS/
    |-- SRPMS/
    |-- Dockerfile
    `-- script.sh
    ```

#### Example:
When we have the folder structure it will be need put all your files in this folders (with the correct order). After we go to execute the file `script.sh`. Automatically this script make all process and will return the *RPM* file in *RPMS* folder.

#### Bug report:
If you have found a bug, please let me know with the [Issues tool](https://github.com/aramcap/rpmbuilder/issues) from GitHub.

#### License:
This software is distributed under GNU GPL v3. You can read the terms [here](https://github.com/aramcap/rpmbuilder/blob/master/LICENSE).

---

### Español

Este software crea un archivo RPM con su código.

Usando Docker, este software inicia un nuevo contenedor y después de copiar los archivos en este ejecuta el comando `rpmbuild` donde el archivo `specs` está en la ruta `SPECS/file.spec`. Luego, si no hay problemas, el archivo *RPM* se descarga del contenedor y el contenedor se eliminará.

#### Requisitos:
- Docker
- Conexión a Internet
- Siguiente estructura de carpetas:
    ```
    /root/rpmbuilder
    |-- BUILD/
    |-- BUILDROOT/
    |-- RPMS/
    |-- SOURCES/
    |-- SPECS/
    |-- SRPMS/
    |-- Dockerfile
    `-- script.sh
    ```

#### Ejemplo:
Cuando tengamos la estructura de carpetas será necesario poner todos sus archivos en estas (con el orden correcto). Después vamos a ejecutar el archivo `script.sh`. Automáticamente, este script realiza todo el proceso y devolverá el archivo *RPM* en la carpeta *RPMS*.

#### Reporte de errores:
Si has encontrado un error, házmelo saber con la [herramienta de errores](https://github.com/aramcap/rpmbuilder/issues) de GitHub.

#### Licencia:
Este software se distribuye bajo GNU GPL v3. Puedes leer los términos [aquí](https://github.com/aramcap/rpmbuilder/blob/master/LICENSE).