Usando el siguiente código como referencia, completar el programa para que sea ejecutable y responder las siguientes preguntas:

a)¿Cuántos procesos únicos son creados?
b)¿Cuántos hilos únicos son creados?

// este es el codigo del archivo .sh

pid_t pid;

pid = fork();
if (pid == 0){
    /* child process */
    fork();
    thread_create( . . .);
}
fork();