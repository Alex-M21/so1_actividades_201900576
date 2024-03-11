## Explicación del código en Bash

Codigo inicial
![Codigo inicial](capturas/cap0.png)

Codigo ya corregido

![Codigo corregido](capturas/cap1.png)


### Respuestas a las preguntas:

a) **¿Cuántos procesos únicos son creados?**

El programa realiza dos bifurcaciones (fork()) desde el proceso principal. Cada bifurcación crea un nuevo proceso hijo. Por lo tanto, en total, se crearán 4 procesos únicos. Uno será el proceso principal y los otros tres serán los procesos hijos resultantes de las bifurcaciones.

b) **¿Cuántos hilos únicos son creados?**

Cada vez que se llama a pthread_create() dentro de un proceso hijo (después de la bifurcación), se crea un nuevo hilo. En este caso, pthread_create() se llama dentro de un proceso hijo después de la primera bifurcación. Entonces, se creará un hilo único en uno de los procesos hijos. Como resultado, se creará un hilo único.