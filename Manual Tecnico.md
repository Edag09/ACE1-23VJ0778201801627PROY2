# Manual Técnico

## Requerimientos para la Aplicaión
```
Sistema Operativo requerido: Windows 8 o superiores.
Memoria Ram: 4 GB o Superiores.
Requerimiento de Ejecucion: EMU8086, DOSBOX y MASM
Procesador: Intel Core i3 o superiores.
Tipo de Sistema: 64bit.
```
# Ejecución de la Aplicación

_Para ejecutar la aplicación el usuario debera tener instalado los programas requeridos, una vez instalados los programas el usuario debera abrir el programa DOSBOX y correr el sigueinte comando "main.asm" esto para poder generar un ejecutable con extención .exe._

## Credenciales para el ingreso de la aplicación

_Tecnicamente se debe de iniciar sesión para poder ingresar a la aplicación, para esto se tiene un archivo "PRAII.CON" con las credenciales del creador para poder ingresar a la app_
<br>
<br>
![Credencials](/Imagenes/Credenciales.jpg)
<br>

## Invocación de la macros para facilitar la impresión

![Impresion](/Imagenes/Macros.jpg)

_Como se puede apreciar en el codigo en la primera linea hacemos la importación de la macros para poder simplificar el codigo a la hora de imprimir_<br>

_Consiguiente a esto podemos ver que además de que todo el codigo se encuentra comentado las acciones que se van realizando para poder ir guardando la información en las direcciones de memoria, como podremos ver en la sentencia mov AH, 9 hacemos la interrupción 21 para poder imprimir una cadena de texto_ <br>

_Prosiguiendo con la sentencia procedemos a colocar el radix 16 esto para darle entender al ensambador que vamos a utilizar hexadecimales esto para tener una mayor facilidad con el ensamblador_<br>

![variables](/Imagenes/Variables.jpg)

<br>

_En esta parte del codigo podemos ver que se declaran las variables que se van a utilizar para poder guardar la información estara en el programa, se declaran las variables de tipo byte, esto para poder guardar la información los tipos que estamos usando es byte de 8 bits_<br>

_En la siguiente porción de codigo podremos observar como declararemos las variables para poder usar los textos, estas estaran usando 0a para poder dejar un espacio en blanco y el signo de $ para poder darle un fin al espacio de linea que deja el texto_<br>

![Codigo](/Imagenes/Var.jpg)
<br>

_Al inicio del encabezado se hizo una prubea para poder convertir una cadena de numeros hacía cadena de texto, por lo cual no tiene mayor relevacia, de ahí se coloca el encabezado_
<br>

![Codigo](/Imagenes/Encabezado.jpg)
<br>

_En la parte de los menus, la logica es la misma para todos los siguientes, por lo tanto podremos ver como se va moviendo la información, junto al salto 08 y la interrupción 21 se puede hacer la comparación del texto, de manera sencilla se usa el codigo ascii para poder hacer la comparación de la entrada de texto y la opcion que necesitamos al igual se ven los comentarios a que ascii pertenece cada una de las letras y usamos los saltos je y jmp para ir a las etiquetas_
<br>

![Codigo](/Imagenes/Menus.jpg)

<br>

_En la siguiente parte podremos observar como vamos moviendo la información sobre la dirección de memoria usando [] esto para ir indicando a cada uno de los registros en donde se tienen que colocar para poder ir a obtener la información para poderla seguir guardando y generando_

<br>

![Codigo](/Imagenes/Etiqueta.jpg)

<br>

