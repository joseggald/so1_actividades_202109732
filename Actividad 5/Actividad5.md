# Actividad 5 - Prueba de Procesos e hilos - Actividad 5 - José Galdámez González

El código crea procesos y hilos de la siguiente manera:

La primera llamada a fork() crea un proceso hijo.
Dentro del proceso hijo (cuando pid == 0), hay otra llamada a fork() creando otro proceso, y luego una llamada a thread_create().
Fuera del if y al final del código, hay otra llamada a fork() que es ejecutada tanto por el proceso padre original como por el proceso hijo creado en el primer fork().

## a. El número de procesos únicos creados es 4. 
Aquí está la descomposición:

- El proceso padre original.
- El primer hijo creado por el primer fork().
- El nieto creado por el segundo fork() dentro del primer hijo.
- Un hijo adicional creado por la última llamada a fork(), que es ejecutada tanto por el padre original como por el primer hijo.

## b. El número de hilos únicos creados es 1. 

El único hilo se crea dentro del primer proceso hijo (no dentro del nieto ni del nuevo hijo creado por la última llamada a fork()).