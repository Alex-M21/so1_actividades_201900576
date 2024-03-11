#include <pthread.h>
#include <stdio.h>
#include <unistd.h>

void *thread_function(void *arg) {
    printf("This is a new thread\n");
    return NULL;
}

int main() {
    pid_t pid;
    pthread_t tid;

    pid = fork();
    if (pid == 0) {
        /* child process */
        pthread_create(&tid, NULL, thread_function, NULL);
    }

    fork(); // This will create another child process

    return 0;
}
