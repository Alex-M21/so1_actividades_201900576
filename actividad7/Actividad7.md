# Universidad de San Carlos de Guatemala
## Facultad de Ingeniería
### Escuela de ciencias y sistemas

---

## Sistemas Operativos 1
### Actividad 7 - Completely Fair Scheduler

---

**Estudiante:** Brayan Alexander Mejia Barrientos  
**Número de estudiante:** 201900576  
**Fecha:** 03/04/2024  

---

El Completely Fair Scheduler (CFS) es un algoritmo de planificación de procesos eficiente y flexible que se utiliza ampliamente en sistemas Linux por su capacidad para distribuir equitativamente el tiempo de CPU y evitar la inanición de procesos.

### Funcionamiento:

Los procesos se ordenan en un árbol rojo-negro por tiempo de ejecución virtual. El proceso con menor tiempo de ejecución virtual se ejecuta durante un "slice". Se recalcula el tiempo de ejecución virtual del proceso y se reinserta en el árbol. Se selecciona el siguiente proceso con menor tiempo de ejecución virtual para ejecutarse.

### Características:

- **Equidad:** Distribuye el tiempo de CPU equitativamente entre los procesos.
- **Prioridad dinámica:** Asigna prioridades a los procesos que cambian según el uso de CPU.
- **Tiempo de ejecución justo:** Garantiza que cada proceso reciba su "cuota" de tiempo de CPU.
- **Sin inanición:** Evita que los procesos se queden sin tiempo de CPU indefinidamente.

### Beneficios:

- **Equidad en la distribución del tiempo de CPU.**
- **Eficiencia en el uso de la CPU.**
- **Prevención de la inanición de procesos.**
- **Algoritmo flexible y adaptable.**

### Limitaciones:

- **Puede ser susceptible a procesos que acaparan la CPU.**
- **La complejidad del algoritmo puede afectar el rendimiento en algunos casos.**
