# Laboratorio 1 - El Lenguaje de Programación C

:calendar: Fecha de entrega: 25/03

El objetivo de este laboratorio es familiarizarse con las herramientas de desarrollo y el lenguaje C.

Para los Laboratorios usaremos [Git](https://git-scm.com/), un sistema de control de versiones, para bajar y subir código a un repositorio en GitHub. [Aquí](http://rogerdudler.github.io/git-guide/index.es.html) pueden leer una guía sencilla para aprender los comandos básicos de Git.

### Compilación
Para compilar los programas, vamos a utilizar el comando `make`. Podemos ejecutarlo indicando como parámetro el nombre del archivo fuente (sin la extensión). Si se ejecuta sin parámetros, compila _todos_ los programas del laboratorio.

Por ejemplo, para compilar el ejercicio 1:
```
$ make ej1
gcc -o ./bin/ej1 ej1.c -Wall -Werror -g
$
```
El ejecutable se crea dentro del subdirectorio `bin`. Lo podemos comprobar haciendo un listado del contenido del directorio (que contiene ya un archivo de nombre README.md):
```
$ ls bin
ej1 README.md
$
```
Para ejecutar nuestro programa recien compilado:
```
$ bin/ej1
$
```
Como todavía no modificamos el programa, el mismo no realiza ninguna acción.

### Ejercicio 1
Modificar el programa `ej1.c` para que retorne la suma de un número arbitrario de enteros, provistos desde la línea de comandos. Por ejemplo:
```
$ sumatoria 1 2 3 5 8
19
```

### Ejercicio 2
Repasar el primer capítulo de libro "El Lenguaje de Programación C" (W. Kernighan y D. Ritchie, Prentice Hall) y realizar los siguientes ejercicios del Capítulo 1: 
- 1.8
- 1.13
- 1.19

### Ejercicio 3
Repasar los siguientes capitulos del libro "El Lenguaje de Programación C":
- 5.1 (Apuntadores y direcciones) a 5.5 (Apuntadores a caracteres y funciones).
- 6.1 (Conceptos básicos sobre estructuras) a 6.4 (Apuntadores a estructuras).

Realizar los siguientes ejercicios de los Capítulos 5 y 6:
- 5.3
- 6.4

---

¡Fín del Laboratorio 1!
