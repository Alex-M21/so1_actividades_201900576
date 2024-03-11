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
        printf("This is the child process 0\n");
        pthread_create(&tid, NULL, thread_function, NULL);
    }
    printf("This is the child process\n");

    fork(); // This will create another child process

    return 0;
}
