# Actividad 1 - Investigación conceptos de SO

### Nombre: José Eduardo Galdámez González 
### Carnet: 20210732

---
## Tipos de Kernel y sus diferencias

- **Kernel Monolítico:** Es como un jefe que quiere controlar todo directamente. Es muy eficiente porque todo lo que necesita está muy cerca, pero si hay un problema, puede ser un lío arreglarlo porque todo está muy entrelazado.

- **Microkernel:** Aquí el jefe decide encargarse solo de las tareas más importantes y delega el resto a diferentes departamentos. Esto hace que sea más fácil arreglar problemas en un área sin afectar a las demás, pero a veces puede tardar un poco más en hacer que todo funcione junto.

- **Kernel Híbrido:** Este es un término medio. El jefe hace algunas cosas por su cuenta y delega otras. Intenta obtener lo mejor de ambos mundos: ser eficiente pero también un poco flexible.

- **Exokernel:** Imagina un jefe que básicamente dice: "Aquí tienen lo que necesitan, ahora arréglenselas". Da a cada departamento lo que necesita y les deja mucho espacio para que usen esos recursos como mejor les parezca. Puede ser genial para los departamentos que saben lo que hacen, pero un poco caótico si no.


## User vs Kernel Mode

- **Modo Usuario:** Es el entorno donde se ejecutan las aplicaciones y programas comunes, como tu procesador de texto, juegos, y navegadores web. En este modo, el software tiene permisos limitados, lo que significa que no puede realizar cambios directos en el hardware o en las partes críticas del sistema operativo. Esta limitación ayuda a mantener la seguridad y la estabilidad del sistema, evitando que las aplicaciones maliciosas o los errores en los programas afecten negativamente al funcionamiento global del sistema.

- **Modo Kernel:** Es un nivel de acceso mucho más privilegiado, reservado para el núcleo del sistema operativo, el kernel. En este modo, el software tiene acceso ilimitado a todo el hardware y las funciones del sistema. Esto es necesario para que el sistema operativo pueda gestionar eficazmente los recursos, como la memoria, los dispositivos de entrada/salida y la planificación de procesos.

## User vs Kernel Mode

- **Trampas:** Son eventos generados por el software, típicamente como resultado de errores o condiciones excepcionales en la ejecución de un programa, como una división por cero o un acceso a memoria ilegal. Las trampas también pueden ser generadas intencionalmente por programas para solicitar servicios específicos del sistema operativo. 

- **Interrupciones:** Son señales generadas por hardware (o en algunos casos por software) que indican que un evento externo requiere la atención inmediata del procesador. Por ejemplo, una interrupción puede ser generada por un dispositivo de hardware como un teclado o un ratón cuando el usuario realiza una acción.
