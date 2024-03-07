pid_t pid;

pid = fork();
if (pid == 0){
    /* child process */
    fork();
    thread_create( . . .);
}
fork();