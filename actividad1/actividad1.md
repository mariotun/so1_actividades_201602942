## **¿Qué es el kernel?**

El kernel se encuentra en el centro del sistema operativo y controla todas las funciones importantes del hardware, ya sea un sistema Linux macOS o Windows, un smartphone, un servidor, una virtualización como KVM o cualquier otro tipo de ordenador. Es el núcleo del sistema operativo. Un kernel tampoco es una API ni un framework.

## **Algunas tareas  de un kernel**

- Procesamiento paralelo de diferentes tareas(multitasking).
- Sirve de intermediario para el software del sistema, el software de aplicación y las bibliotecas.
- Se cargan los servicios del sistema, se inician o detienen otros procesos y se inician los programas de usuario como la asignación de espacio de almacenamiento.
- En los sistemas multiusuario, el kernel también controla los derechos de acceso a los archivos y a los componentes de hardware.
</br>

## **Tipos de Kernel**

|Monolítico |Microkernel |Híbrido |Exonúcleo |
|:---:|:---:|:---:|:---:|
|![mononucleo](./Images/mononucleo.png)|![mononucleo](./Images/micronucleo.png)|![mononucleo](./Images/hibrido.png)|![mononucleo](./Images/exonucleo.png) |
||||

### **Monolitico**
- Esta forma de núcleo es la base para Linux, Unix, MS-DOS y Mac OS.
- El código del kernel debe modificarse para agregar características o corregir errores.
- Tienden a ser más grandes que otros núcleos porque tratan con muchos aspectos del procesamiento de la computadora en el nivel más bajo.
- Posee todos los privilegios para acceder a dispositivos de entrada/salida (E/S) y diversos componentes tales como Sistemas de archivos,Comunicación entre procesos y Hardware.


### **Microkernel**
- Solo los servicios más importantes están dentro del kernel y el resto de los servicios del sistema operativo están presentes dentro del programa de aplicación del sistema.
- Debido a que el núcleo y los servidores se pueden desarrollar y mantener de forma independiente, puede facilitar la adición y eliminación de funciones y servicios del sistema.
- Puede mejorar la seguridad del sistema al limitar las funciones proporcionadas por el kernel.
- Mejorar el rendimiento ya que el solo contiene las funciones esenciales requeridas para administrar el sistema.


### **Híbrido**
- Combina la velocidad y el diseño más simple del núcleo monolítico con la modularidad y seguridad de ejecución del microkernel.
- Puede mantener el sistema de archivos virtuales y los controladores de bus dentro del núcleo.
- Tambien mantiene los controladores del sistema de archivos y los controladores de almacenamiento como programas de modo de usuario fuera del núcleo.
- Permite la posibilidad de utilizar llamadas de procedimiento directo o comunicación entre procesos para comunicarse entre módulos.

### **Exonúcleo**
- Sistema creado con fines de investigación en el Instituto Tecnológico de Massachusetts sobre OpenBSD y otros sistemas operativos similares.
- Su propósito es crear una especie de capa de software para otros sistemas virtuales.
- Es realmente robusto y flexible , ya que su tarea principal es impedir que tengan errores de permisos al hardware y conflictos entre los LibOS(librería de sistema operativo).
- El núcleo identifica los bloques de disco a las aplicaciones mediante su dirección física, permitiendo a la aplicación que optimice la localización de los datos.


## **Modo Usuario vs Modo Kernel**

|Usuario |Kernel|
|:---|:---|
|El programa de aplicación se ejecuta y se inicia.|Tiene acceso directo y sin restricciones a los recursos del sistema.|
|Solo un proceso falla si ocurre una interrupción.|Todo el sistema operativo puede dejar de funcionar si se produce una interrupción|
|Todos los procesos obtienen un espacio de direcciones virtuales separado.|Todos los procesos comparten un único espacio de direcciones virtuales.|
|Solo puede hacer referencias a la memoria asignada para el modo de usuario. |Es capaz de hacer referencia a ambas áreas de memoria.|
|||