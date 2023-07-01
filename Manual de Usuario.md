# Manual de Usuario

## Requerimientos para la Aplicaión
```
Sistema Operativo requerido: Windows 8 o superiores.
Memoria Ram: 4 GB o Superiores.
Requerimiento de Ejecucion: EMU8086, DOSBOX y MASM
Procesador: Intel Core i3 o superiores.
Tipo de Sistema: 64bit.
```

## Instalación de EMU8086, DosBosx y MASM
_Para ejecutar la siguiente aplicación el usuario debera tener instalado los siguientes programas y lenguaje para poder tener una mejor experiencia y como tal para poder ver como se ejecuta la imformación, para lo siguiente se deja un video para que el usuairo pueda ver paso a paso como hacerlo._

[Instalación de los programas requeridos](https://www.youtube.com/watch?v=q6Z6p9RD7yw)


# Ejecución de la Aplicación

_Para ejecutar la aplicación el usuario debera tener instalado los programas requeridos, una vez instalados los programas el usuario debera abrir el programa DOSBOX y correr el sigueinte comando "main.asm" esto para poder generar un ejecutable con extención .exe._


## Menu Principal
_En el menu principal el usuario podra ingresar las opciones que se le presentan en el menu, las cuales son las siguientes:_

```
1. Productos
2. Ventas
3. Herramientas
4. Salir
```
![MenuPrincipal](/Imagenes/Principal.jpg)

Al ingresar la opción que se desea, se movera al sigueinte menu, por ejemoplo iremos al menú de productos precionando la letra "p" en minuscula.

![MenuProductos](/Imagenes/Productos.jpg)

Al ingresar aquí podremos navegar entre el menu con las opciones de 
```
1. Agregar
2. Borrar
3. Mostrar
4. Regresar
5. Salir
```
Seleccionando salir, se acabara el programa y el regresar nos llevara de nuevo al menú principal

siguiendo está secuencia podremos movernos en los siguientes menús (Ventas y Herramientas)

![MenuVentas](/Imagenes/Herramientas.jpg)

![MenuHerramientas](/Imagenes/Ventas.jpg)

Despues de ingresar al menu de productos el usuario puede crear un producto utilizando los siguientes parametros

![AgregarProducto](/Imagenes/Agregar.jpg)

```
1. Codigo
2. Nombre
3. Precio
4. Cantidad
```
Al ingresar los datos se guardaran en un archivo BIN llamado "PRO.BIN" 

![ArchivoBin](/Imagenes/Archivo.jpg)

Este contendra la información sobre los productos que se tengan agregados