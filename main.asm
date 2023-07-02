print macro buffer ;imprime cadena
PUSH AX ;guarda AX en la pila
PUSH DX ;guarda DX en la pila

    MOV AX, @DATA ;carga la direccion de memoria de la variable
    MOV DS, AX ;mueve la direccion de memoria a DS
    MOV AH, 9 ;carga el valor 9 en AH
    MOV DX, OFFSET buffer ;carga la direccion de memoria de la variable
    INT 21H ;interrupcion del DOS

POP DX ;recupera DX de la pila
POP AX ;recupera AX de la pila
ENDM

NADA        equ      00
JUGADOR     equ      01
PARED       equ      02
OBJETIVO    equ      04
SUELO       equ      05
CAJA_OBJ	equ      06

.MODEL SMALL
.RADIX 16
.STACK
.DATA
;;
	msg_linea	           db     "========================================", "$"
    msg_universidad		   db     "|Universidad de San Carlos de Guatemala|", "$"
    msg_facultad		   db     "|Facultad de Ingenieria                |", "$"
    msg_escuela		       db     "|Escuela de Ciencias y Sistemas        |", "$"
    msg_arqui		       db     "|Arquitectura de Computadoras          |", "$"
	msg_arqui1			   db     "|y Ensambladores 1                     |", "$"
    msg_nombre		       db     "|Eduardo Rene Agustin Mendoza          |", "$"
    msg_carne		       db     "|201801627                             |", "$"
    msg_linea2		       db     "========================================", "$"
;;
CAJA        db      3

dim_sprite_jug    db   08, 08
data_sprite_jug   db   28, 79, 79, 29, 29, 29, 29, 29
                  db   28, 28, 79, 29, 29, 29, 00, 29
                  db   2C, 28, 79, 29, 29, 29, 00, 29
                  db   2C, 2C, 28, 29, 29, 29, 29, 29
                  db   79, 2C, 2C, 79, 29, 29, 5B, 79
                  db   79, 29, 79, 79, 29, 29, 5B, 79
                  db   79, 29, 29, 79, 29, 5B, 5B, 79
                  db   79, 79, 29, 29, 5B, 79, 29, 29

dim_sprite_flcha  db   08, 08
data_sprite_flcha   db   00, 08, 08, 00, 00, 00, 00, 08
                    db   00, 00, 0E, 2A, 00, 00, 00, 2A
                    db   00, 00, 00, 2C, 2C, 2C, 2C, 2A
                    db   2A, 2A, 00, 2C, 00, 0E, 0E, 00
                    db   2A, 2A, 00, 28, 0E, 0E, 0E, 28
                    db   00, 29, 00, 2C, 2A, 2A, 2A, 00
                    db   00, 29, 2C, 2A, 2C, 2A, 2C, 00
                    db   00, 00, 2C, 2A, 29, 29, 2A, 00

dim_sprite_vacio  db   08, 08
data_sprite_vacio db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00
                  db   00, 00, 00, 00, 00, 00, 00, 00

dim_sprite_suelo  db   08, 08
data_sprite_suelo db   79, 79, 79, 79, 79, 79, 79, 79
                  db   79, 79, 79, 79, 79, 79, 79, 79
                  db   79, 79, 79, 79, 79, 79, 79, 79
                  db   79, 79, 79, 79, 79, 79, 79, 79
                  db   79, 79, 79, 79, 79, 79, 79, 79
                  db   79, 79, 79, 79, 79, 79, 79, 79
                  db   79, 79, 79, 79, 79, 79, 79, 79
                  db   79, 79, 79, 79, 79, 79, 79, 79

dim_sprite_pared  db   08, 08
data_sprite_pared db   37, 37, 37, 48, 37, 37, 37, 48
                  db   48, 37, 37, 37, 48, 37, 37, 37
                  db   37, 37, 37, 48, 37, 37, 37, 48
                  db   48, 37, 37, 37, 48, 37, 37, 37
                  db   37, 37, 37, 48, 37, 37, 37, 48
                  db   48, 37, 37, 37, 48, 37, 37, 37
                  db   37, 37, 37, 48, 37, 37, 37, 48
                  db   48, 37, 37, 37, 48, 37, 37, 37

dim_sprite_caja   db   08, 08
data_sprite_caja  db  79,79,28,28,28,79,79,79
                  db  79,28,28,28,28,28,79,79
                  db  28,28,28,00,28,28,28,79
                  db  00,00,00,0F,00,00,00,79
                  db  0F,0F,0F,00,0F,0F,0F,79
                  db  79,0F,0F,0F,0F,0F,79,79
                  db  79,0F,0F,0F,0F,0F,79,79
                  db  79,79,0F,0F,0F,79,79,79

dim_sprite_cobj   db   08, 08
data_sprite_cobj  db  79,79,30,00,30,79,79,79
                  db  79,00,30,30,30,00,79,79
                  db  79,00,30,00,30,00,79,79
                  db  00,00,00,00,00,00,00,79
                  db  00,00,00,0F,00,00,00,79
                  db  0F,0F,0F,00,0F,0F,0F,79
                  db  79,0F,0F,0F,0F,0F,79,79
                  db  79,79,0F,0F,0F,79,79,79

dim_sprite_obj    db   08, 08
data_sprite_obj   db  79,00,00,00,00,79,79,79
                  db  79,00,00,79,79,00,79,79
                  db  79,00,00,79,79,00,79,79
                  db  79,00,00,79,79,00,79,79
                  db  79,00,00,00,00,79,79,79
                  db  79,00,00,79,79,00,79,79
                  db  79,00,00,79,79,00,79,79
                  db  79,00,00,79,79,00,79,79

mapa              db   3e8 dup (0)
iniciar_juego db "INICIAR JUEGO$"
cargar_nivel  db "CARGAR NIVEL$"
configuracion db "CONFIGURACION$"
puntajes      db "PUNTAJES ALTOS$"
salir         db "SALIR$"
iniciales     db "ERAM - 201801627$"
cambio        db "Presiona la tecla que quieres cambiar","$"
puntaje_estandar db "PUNTAJE: $"
mensaje_control_arriba db "CONTROL ARRIBA: $"
mensaje_control_abajo  db "CONTROL ABAJO: $"
mensaje_control_izquierda db "CONTROL IZQUIERDA: $"
mensaje_control_derecha db "CONTROL DERECHA: $"
;; MENU PAUSA
pausa_cont	db	"CONTINUAR$"
pausa_salir	db	"SALIR$"
;; JUEGO
xJugador      db 0
yJugador      db 0
puntos_obj    dw 0
puntos_par    dw 3d
;; MENÚS
opcion        db 0
maximo        db 0
xFlecha       dw 0
yFlecha       dw 0
;; CONTROLES
control_arriba    db  48
control_abajo     db  50
control_izquierda db  4bh
control_derecha   db  4dh
;; NIVELES
nivel_x           db  "NIV.11",00
nivel_0           db  "NIV.00",00
nivel_1           db  "NIV.01",00
nivel_2           db  "NIV.10",00
nivel_3           db  "NIV.11",00
handle_nivel      dw  0000
linea             db  100 dup (0)
elemento_actual   db  0
xElemento         db  0
yElemento         db  0
;; TOKENS
tk_pared      db  05,"pared"
tk_suelo      db  05,"suelo"
tk_jugador    db  07,"jugador"
tk_caja       db  04,"caja"
tk_objetivo   db  08,"objetivo"
tk_coma       db  01,","
;;
numero        db  5 dup (30)
numero2        db  '0004',0
niveles 	  dw  0
;;
encima_obj   db  0
.CODE
.STARTUP
first:
		;; MODO VIDEO ;;
		mov AH, 00
		mov AL, 13
		int 10
		call imprimir_datos_personales
		call delay
		call delay
		call delay
		call delay
		call delay
		call delay
		call delay
		call delay
		call delay
		call delay
		call delay
inicio:
		mov puntos_obj, 0
		mov puntos_par, 0
		mov niveles, 0
		;;;;;;;;;;;;;;;;
		call menu_principal
		mov AL, [opcion]
		;; > INICIAR JUEGO
		cmp AL, 0
		je cargar_un_nivel0
		;; > CARGAR NIVEL
		cmp AL, 1
		je cargar_un_nivel 
		cmp AL, 3
		je entrada_conf
		;; > CONFIGURACION
		;; > PUNTAJES ALTOS
		;; > SALIR
		cmp AL, 4
		je fin
		;;;;;;;;;;;;;;;;
ciclo_juego:
		call pintar_mapa
		;call delay
		call entrada_juego
		mov CAJA, 3
		jmp ciclo_juego
		;;;;;;;;;;;;;;;;
cargar_un_nivel: ;;Nivel 0
		mov AL, 00
		mov DX, offset nivel_x
		mov AH, 3dh
		int 21
		jc inicio
		mov [handle_nivel], AX
		jmp ciclo_lineas
		;;
cargar_un_nivel0: ;;Nivel 0
		mov AL, 00
		mov DX, offset nivel_0
		mov AH, 3dh
		int 21
		jc inicio
		mov [handle_nivel], AX
		jmp ciclo_lineas
		;;
cargar_un_nivel1: ;;Nivel 0
		mov AL, 00
		mov DX, offset nivel_1
		mov AH, 3dh
		int 21
		jc inicio
		mov [handle_nivel], AX
		jmp ciclo_lineas
		;;
cargar_un_nivel2: ;;Nivel 0
		mov AL, 00
		mov DX, offset nivel_2
		mov AH, 3dh
		int 21
		jc inicio
		mov [handle_nivel], AX
		jmp ciclo_lineas

ciclo_lineas:
		mov BX, [handle_nivel]
		call siguiente_linea
		cmp DL, 0ff      ;; fin-del-archivo?
		je fin_parseo
		cmp DH, 00      ;; línea-con-algo?
		je ciclo_lineas
		;;;;;;;;;;;;;;;;;;;;;;;
		;; lógica del parseo ;;
		;;;;;;;;;;;;;;;;;;;;;;;
		;; al principio del buffer de la línea está: pared, caja, jugador, suelo, objetivo
		mov DI, offset linea
		push DI
		mov SI, offset tk_pared
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_pared
		pop DI
		push DI
		mov SI, offset tk_caja
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_caja
		pop DI
		push DI
		mov SI, offset tk_suelo
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_suelo
		pop DI
		push DI
		mov SI, offset tk_objetivo
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_objetivo
		pop DI
		push DI
		mov SI, offset tk_jugador
		call cadena_igual
		cmp DL, 0ff               ;; cadenas iguales
		je es_jugador
		pop DI
		jmp ciclo_lineas
es_pared:
		mov AL, PARED
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_caja:
		mov AL, CAJA
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_suelo:
		mov AL, SUELO
		mov [elemento_actual], AL
		jmp continuar_parseo0
es_objetivo:
		mov AL, OBJETIVO
		mov [elemento_actual], AL
		add [puntos_obj], 1
		jmp continuar_parseo0
es_jugador:
		mov AL, JUGADOR
		mov [elemento_actual], AL
		jmp continuar_parseo0
		;; ignorar espacios
continuar_parseo0:
		pop SI         ; ignorara valor inicial de DI
		mov AL, [DI]
		cmp AL, 20
		jne ciclo_lineas
		call ignorar_espacios
		;; obtener una cadena numérica
		call leer_cadena_numerica
		push DI
		mov DI, offset numero
		call cadenaAnum
		mov [xElemento], AL
		pop DI
		;; ignorar espacios
		mov AL, [DI]
		cmp AL, 20
		je continuar_parseo1
		cmp AL, ','
		je continuar_parseo2
		jmp ciclo_lineas
continuar_parseo1:
		;; ignorar espacios
		call ignorar_espacios
continuar_parseo2:
		;; obtener una coma
		mov SI, offset tk_coma
		call cadena_igual
		cmp DL, 0ff
		jne ciclo_lineas
		;; ignorar espacios
		mov AL, [DI]
		cmp AL, 20
		jne ciclo_lineas
		call ignorar_espacios
		;; obtener una cadena numérica
		call leer_cadena_numerica
		push DI
		mov DI, offset numero
		call cadenaAnum
		mov [yElemento], AL
		pop DI
		;; ignorar_espacios
		mov AL, [DI]
		cmp AL, 20
		jne ver_final_de_linea
		call ignorar_espacios
		;; ver si es el final de la cadena
ver_final_de_linea:
		mov AL, [DI]
		cmp AL, 00
		jne ciclo_lineas
		;; usar la información
		;;
		mov DL, [elemento_actual]
		mov AH, [xElemento]
		mov AL, [yElemento]
		call colocar_en_mapa
		mov AL, JUGADOR
		cmp AL, [elemento_actual]
		je guardar_coordenadas_jugador
		jmp ciclo_lineas
guardar_coordenadas_jugador:
		mov AH, [xElemento]
		mov AL, [yElemento]
		mov [xJugador], AH
		mov [yJugador], AL
		jmp ciclo_lineas
		;;;;;;;;;;;;;;;;;;;;;;;
fin_parseo:
		;; cerrar archivo
		mov AH, 3eh
		mov BX, [handle_nivel]
		int 21
		;;
		int 03
		jmp ciclo_juego
		jmp fin

pintar_pixel:
		push AX
		push BX
		push CX
		push DX
		push DI
		push SI
		push DS
		mov DX, 0a000
		mov DS, DX
		;; (
		;; 	posicionarse en X
		mov SI, AX
		mov AX, 140
		mul BX
		add AX, SI
		mov DI, AX
		;;
		mov [DI], CL  ;; pintar
		;; )
		pop DS
		pop SI
		pop DI
		pop DX
		pop CX
		pop BX
		pop AX
		ret

pintar_sprite:
		push DI
		push SI
		push AX
		push BX
		push CX
		inc SI
		mov DH, [SI]  ;; vertical
		dec SI        ;; dirección de tam horizontal
		;;
inicio_pintar_fila:
		cmp DH, 00
		je fin_pintar_sprite
		push AX
		mov DL, [SI]
pintar_fila:
		cmp DL, 00
		je pintar_siguiente_fila
		mov CL, [DI]
		call pintar_pixel
		inc AX
		inc DI
		dec DL
		jmp pintar_fila
pintar_siguiente_fila:
		pop AX
		inc BX
		dec DH
		jmp inicio_pintar_fila
fin_pintar_sprite:
		pop CX
		pop BX
		pop AX
		pop SI
		pop DI
		ret

;; delay - subrutina de retardo
delay:
		push SI
		push DI
		mov SI, 0500
cicloA:
		mov DI, 0100
		dec SI
		cmp SI, 0000
		je fin_delay
cicloB:
		dec DI
		cmp DI, 0000
		je cicloA
		jmp cicloB
fin_delay:
		pop DI
		pop SI
		ret
		
;; clear_pantalla - limpia la pantalla
;; ..
;; ..
clear_pantalla:
		mov CX, 19  ;; 25
		mov BX, 00
clear_v:
		push CX
		mov CX, 28  ;; 40
		mov AX, 00
clear_h:
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		add AX, 08
		loop clear_h
		add BX, 08
		pop CX
		loop clear_v
		ret

;; menu_principal - menu principal
;; ..
;; SALIDA
;;    - [opcion] -> código numérico de la opción elegida
menu_principal:
		call clear_pantalla
		mov AL, 0
		mov [opcion], AL      ;; reinicio de la variable de salida
		mov AL, 5
		mov [maximo], AL
		mov AX, 50
		mov BX, 28
		mov [xFlecha], AX
		mov [yFlecha], BX
		;; IMPRIMIR OPCIONES ;;
		;;;; INICIAR JUEGO
		mov DL, 0ch
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset iniciar_juego
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; CARGAR NIVEL
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset cargar_nivel
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; PUNTAJES ALTOS
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset puntajes
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; CONFIGURACION
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset configuracion
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; SALIR
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset salir
		mov AH, 09
		int 21
		pop DX
		;;;;
		call pintar_flecha
		;;;;
		;; LEER TECLA
		;;;;
entrada_menu_principal:
		mov AH, 00
		int 16
		cmp AH, 48
		je restar_opcion_menu_principal
		cmp AH, 50
		je sumar_opcion_menu_principal
		cmp AH, 3bh  ;; le doy F1
		je fin_menu_principal
		jmp entrada_menu_principal
restar_opcion_menu_principal:
		mov AL, [opcion]
		dec AL
		cmp AL, 0ff
		je volver_a_cero
		mov [opcion], AL
		jmp mover_flecha_menu_principal
sumar_opcion_menu_principal:
		mov AL, [opcion]
		mov AH, [maximo]
		inc AL
		cmp AL, AH
		je volver_a_maximo
		mov [opcion], AL
		jmp mover_flecha_menu_principal
volver_a_cero:
		mov AL, 0
		mov [opcion], AL
		jmp mover_flecha_menu_principal
volver_a_maximo:
		mov AL, [maximo]
		dec AL
		mov [opcion], AL
		jmp mover_flecha_menu_principal
mover_flecha_menu_principal:
		mov AX, [xFlecha]
		mov BX, [yFlecha]
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		mov AX, 50
		mov BX, 28
		mov CL, [opcion]
ciclo_ubicar_flecha_menu_principal:
		cmp CL, 0
		je pintar_flecha_menu_principal
		dec CL
		add BX, 10
		jmp ciclo_ubicar_flecha_menu_principal
pintar_flecha_menu_principal:
		mov [xFlecha], AX
		mov [yFlecha], BX
		call pintar_flecha
		jmp entrada_menu_principal
		;;
fin_menu_principal:
		ret

;; pintar_flecha - pinta una flecha
pintar_flecha:
		mov AX, [xFlecha]
		mov BX, [yFlecha]
		mov SI, offset dim_sprite_flcha
		mov DI, offset data_sprite_flcha
		call pintar_sprite
		ret

;; adaptar_coordenada - 40x25->320x200
;; ENTRADA:
;;    AH -> x 40x25
;;    AL -> y 40x25
;; SALIDA:
;;    AX -> x 320x200
;;    BX -> y 320x200
adaptar_coordenada:
		mov DL, 08
		mov CX, AX
		mul DL
		mov BX, AX
		;;
		mov AL, CH
		mul DL
		ret
		
;; colocar_en_mapa - coloca un elemento en el mapa
;; ENTRADA:
;;    - DL -> código numérico del elemento
;;    - AH -> x
;;    - AL -> y
;; ...
colocar_en_mapa:
		mov CX, AX     ;;;   AH -> x -> CH
		mov BL, 28
		mul BL   ;; AL * BL  = AX
		mov CL, CH
		mov CH, 00     ;;; CX el valor de X completo
		add AX, CX
		mov DI, offset mapa
		add DI, AX
		mov [DI], DL
		ret

;; obtener_de_mapa - obtiene un elemento en el mapa
;; ENTRADA:
;;    - AH -> x
;;    - AL -> y
;; SALIDA:
;;    - DL -> código numérico del elemento
obtener_de_mapa:
		mov CX, AX
		mov BL, 28
		mul BL
		mov CL, CH
		mov CH, 00
		add AX, CX
		mov DI, offset mapa
		add DI, AX
		mov DL, [DI]
		ret

;; pintar_mapa - pinta los elementos del mapa
;; ENTRADA:
;; SALIDA:
pintar_mapa:
		mov AL, 00   ;; fila
		;;
ciclo_v:
		cmp AL, 19
		je fin_pintar_mapa
		mov AH, 00   ;; columna
		;;
ciclo_h:
		cmp AH, 28
		je continuar_v
		push AX
		call obtener_de_mapa
		pop AX
		;;
                cmp DL, NADA
		je pintar_vacio_mapa
		;;
                cmp DL, JUGADOR
		je pintar_jugador_mapa
		;;
                cmp DL, PARED
		je pintar_pared_mapa
		;;
                cmp DL, CAJA
		je pintar_caja_mapa
		;;
				cmp DL, CAJA_OBJ
		je pintar_cobj_mapa
		;;
                cmp DL, OBJETIVO
		je pintar_objetivo_mapa
		;;
                cmp DL, SUELO
		je pintar_suelo_mapa
		;;
		jmp continuar_h
pintar_vacio_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_suelo_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_suelo
		mov DI, offset data_sprite_suelo
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_jugador_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_jug
		mov DI, offset data_sprite_jug
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_pared_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_pared
		mov DI, offset data_sprite_pared
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_caja_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_caja
		mov DI, offset data_sprite_caja
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_cobj_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_cobj
		mov DI, offset data_sprite_cobj
		call pintar_sprite
		pop AX
		jmp continuar_h
pintar_objetivo_mapa:
		push AX
		call adaptar_coordenada
		mov SI, offset dim_sprite_obj
		mov DI, offset data_sprite_obj
		call pintar_sprite
		pop AX
		jmp continuar_h
continuar_h:
		inc AH
		jmp ciclo_h
continuar_v:
		inc AL
		jmp ciclo_v
fin_pintar_mapa:
		call datos_desarrollador
		ret
fin_pintar_mapa2:
		ret

;; mapa_quemado - mapa de prueba
mapa_quemado:
		mov DL, SUELO
		mov AH, 2
		mov AL, 2
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 3
		mov AL, 2
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 4
		mov AL, 2
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 2
		mov AL, 3
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 3
		mov AL, 3
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 4
		mov AL, 3
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 2
		mov AL, 4
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 3
		mov AL, 4
		call colocar_en_mapa
		mov DL, SUELO
		mov AH, 4
		mov AL, 4
		call colocar_en_mapa
		;;
		mov DL, JUGADOR
		mov AH, [xJugador]
		mov AL, [yJugador]
		call colocar_en_mapa
		;;
		mov DL, CAJA
		mov AH, 2
		mov AL, 3
		call colocar_en_mapa
		;;
		mov DL, OBJETIVO
		mov AH, 4
		mov AL, 2
		call colocar_en_mapa
		;;
		mov DL, PARED
		mov AH, 1
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 2
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 3
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 4
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 1
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 1
		mov AL, 2
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 2
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 1
		mov AL, 3
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 3
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 1
		mov AL, 4
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 4
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 1
		mov AL, 5
		call colocar_en_mapa

		mov DL, PARED
		mov AH, 2
		mov AL, 5
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 3
		mov AL, 5
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 4
		mov AL, 5
		call colocar_en_mapa
		mov DL, PARED
		mov AH, 5
		mov AL, 5
		call colocar_en_mapa
		ret

entrada_conf:
		call clear_pantalla
		print cambio
		mov AH, 01
		int 16
		;jz fin_entrada_config  ;; nada en el buffer de entrada
		mov AH, 00
		int 16
		;; AH <- scan code
		cmp AH, [control_arriba]
		je cambiar_control_arriba
		cmp AH, [control_abajo]
		je cambiar_control_abajo
		cmp AH, [control_izquierda]
		je cambiar_control_izquierda
		cmp AH, [control_derecha]
		je cambiar_control_derecha
		cmp AH, 3ch
		je inicio
		jmp entrada_conf

cambiar_control_arriba:
		mov AH, 09h
		mov DX, offset mensaje_control_arriba
		int 21h
		mov AH, 01
		int 16
		mov AH, 00
		int 16
		mov [control_arriba], AH
		jmp entrada_conf
cambiar_control_abajo:
		mov AH, 09h
		mov DX, offset mensaje_control_abajo
		int 21h
		mov AH, 01
		int 16
		mov AH, 00
		int 16
		mov [control_abajo], AH
		jmp entrada_conf
cambiar_control_izquierda:
		mov AH, 09h
		mov DX, offset mensaje_control_izquierda
		int 21h
		mov AH, 01
		int 16
		mov AH, 00
		int 16
		mov [control_izquierda], AH
		jmp entrada_conf
cambiar_control_derecha:
		mov AH, 09h
		mov DX, offset mensaje_control_derecha
		int 21h
		mov AH, 01
		int 16
		mov AH, 00
		int 16
		mov [control_derecha], AH
		jmp entrada_conf


fin_entrada_config:
		ret
;; entrada_juego - manejo de las entradas del juego
entrada_juego:
		mov AH, 01
		int 16
		;jz fin_entrada_juego  ;; nada en el buffer de entrada
		mov AH, 00
		int 16
		;; AH <- scan code
		cmp AH, [control_arriba]
		je mover_jugador_arr
		cmp AH, [control_abajo]
		je mover_jugador_aba
		cmp AH, [control_izquierda]
		je mover_jugador_izq
		cmp AH, [control_derecha]
		je mover_jugador_der
		cmp AH, 3ch
		je pausa
		ret
mover_jugador_arr:
		mov AH, [xJugador]
		mov AL, [yJugador]
		dec AL
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en mapa
		cmp DL, PARED
		je hay_pared_arriba
		;;
		cmp DL, CAJA
		je ver_caja_arr

		cmp DL, CAJA_OBJ
		je hay_pared_arriba
		;;
		; if the following space is an obj, then we will set it to 1
		call aumentar_puntos_par
		
		cmp DL, OBJETIVO
		je on_encima_obj_arr
		;;
		cmp encima_obj, 1
		je off_encima_obj_arr
		;;
		mov [yJugador], AL
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, SUELO
		inc AL
		call colocar_en_mapa
		ret
ver_caja_arr:
		dec AL
		push AX
		call obtener_de_mapa
		pop AX

		;; Si hay obstaculo adelante, no se mueve (caja o pared)
		cmp DL, PARED
		je hay_pared_arriba

		cmp DL, CAJA
		je hay_pared_arriba

		cmp DL, CAJA_OBJ
		je hay_pared_arriba

		;; Si esta el objetivo adelante, se mueve
		call aumentar_puntos
		call aumentar_puntos_par

		cmp encima_obj, 1
		je off_encima_obj_arr1
		;call conf_vacio_der
		mov DL, CAJA
		push AX
		call colocar_en_mapa
		pop AX

		inc AL
		mov [yJugador], AL
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX

		inc AL
		mov DL, SUELO
		push AX
		call colocar_en_mapa
		pop AX
		ret
on_encima_obj_arr:
		mov [yJugador], AL
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX

		cmp encima_obj, 1
		je swap_obj_arr
		
		mov DL, SUELO
		inc AL
		call colocar_en_mapa
		mov encima_obj, 1
		ret

off_encima_obj_arr1:
		mov encima_obj, 0

		mov DL, CAJA
		push AX
		call colocar_en_mapa
		pop AX

		inc AL
		mov [yJugador], AL
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, OBJETIVO
		inc AL
		call colocar_en_mapa
		mov encima_obj, 0
		ret

off_encima_obj_arr:
		mov encima_obj, 0

		mov [yJugador], AL
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, OBJETIVO
		inc AL
		call colocar_en_mapa
		ret

swap_obj_arr:
		mov DL, OBJETIVO
		inc AL
		call colocar_en_mapa
		ret
hay_pared_arriba:
		ret
mover_jugador_aba:
		mov AH, [xJugador]
		mov AL, [yJugador]
		inc AL
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en mapa
		cmp DL, PARED
		je hay_pared_abajo

		cmp DL, CAJA_OBJ
		je hay_pared_abajo
		;;
		cmp DL, CAJA
		je ver_caja_aba
		;;
		; if the following space is an obj, then we will set it to 1
		call aumentar_puntos_par
		cmp DL, OBJETIVO
		je on_encima_obj_aba
		;;
		cmp encima_obj, 1
		je off_encima_obj_aba
		;;
		mov [yJugador], AL
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, SUELO
		dec AL
		call colocar_en_mapa
		ret
ver_caja_aba:
		inc AL
		push AX
		call obtener_de_mapa
		pop AX

		;; Si hay obstaculo adelante, no se mueve (caja o pared)
		cmp DL, PARED
		je hay_pared_abajo

		cmp DL, CAJA
		je hay_pared_abajo

		cmp DL, CAJA_OBJ
		je hay_pared_abajo

		;; Si esta el objetivo adelante, se mueve
		call aumentar_puntos
		call aumentar_puntos_par

		cmp encima_obj, 1
		je off_encima_obj_aba1

		;call conf_vacio_der
		mov DL, CAJA
		push AX
		call colocar_en_mapa
		pop AX

		dec AL
		mov [yJugador], AL
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX

		dec AL
		mov DL, SUELO
		push AX
		call colocar_en_mapa
		pop AX
		ret
on_encima_obj_aba:
		mov [yJugador], AL
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX

		cmp encima_obj, 1
		je swap_obj_aba
		
		mov DL, SUELO
		dec AL
		call colocar_en_mapa
		mov encima_obj, 1
		ret

off_encima_obj_aba:
		mov encima_obj, 0

		mov [yJugador], AL
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, OBJETIVO
		dec AL
		call colocar_en_mapa
		ret

off_encima_obj_aba1:
		mov encima_obj, 0

		mov DL, CAJA
		push AX
		call colocar_en_mapa
		pop AX

		dec AL
		mov [yJugador], AL
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, OBJETIVO
		dec AL
		call colocar_en_mapa
		mov encima_obj, 0
		ret


swap_obj_aba:
		mov DL, OBJETIVO
		dec AL
		call colocar_en_mapa
		ret
hay_pared_abajo:
		ret
mover_jugador_izq:
		mov AH, [xJugador]
		mov AL, [yJugador]
		dec AH
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en mapa
		cmp DL, PARED
		je hay_pared_izquierda
		;;
		cmp DL, CAJA
		je ver_caja_izq

		cmp DL, CAJA_OBJ
		je hay_pared_izquierda
		;;
		; if the following space is an obj, then we will set it to 1
		call aumentar_puntos_par
		cmp DL, OBJETIVO
		je on_encima_obj_izq
		;;
		cmp encima_obj, 1
		je off_encima_obj_izq
		;;
		mov [xJugador], AH
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, SUELO
		inc AH
		call colocar_en_mapa
		ret

ver_caja_izq:
		dec AH
		push AX
		call obtener_de_mapa
		pop AX

		;; Si hay obstaculo adelante, no se mueve (caja o pared)
		cmp DL, PARED
		je hay_pared_izquierda

		cmp DL, CAJA
		je hay_pared_izquierda

		cmp DL, CAJA_OBJ
		je hay_pared_izquierda

		;; Si esta el objetivo adelante, se mueve
		call aumentar_puntos
		call aumentar_puntos_par

		cmp encima_obj, 1
		je off_encima_obj_izq1
		;call conf_vacio_der
		mov DL, CAJA
		push AX
		call colocar_en_mapa
		pop AX

		inc AH
		mov [xJugador], AH
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX

		inc AH
		mov DL, SUELO
		push AX
		call colocar_en_mapa
		pop AX
		ret
on_encima_obj_izq:
		mov [xJugador], AH
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX

		cmp encima_obj, 1
		je swap_obj_izq
		
		mov DL, SUELO
		inc AH
		call colocar_en_mapa
		mov encima_obj, 1
		ret

off_encima_obj_izq:
		mov encima_obj, 0

		mov [xJugador], AH
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, OBJETIVO
		inc AH
		call colocar_en_mapa
		ret

off_encima_obj_izq1:
		mov encima_obj, 0

		mov DL, CAJA
		push AX
		call colocar_en_mapa
		pop AX

		inc AH
		mov [xJugador], AH
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, OBJETIVO
		inc AH
		call colocar_en_mapa
		mov encima_obj, 0
		ret

swap_obj_izq:
		mov DL, OBJETIVO
		inc AH
		call colocar_en_mapa
		ret
hay_pared_izquierda:
		ret
mover_jugador_der:
		mov AH, [xJugador]
		mov AL, [yJugador]
		inc AH
		push AX
		call obtener_de_mapa
		pop AX
		;; DL <- elemento en mapa
		cmp DL, PARED
		je hay_pared_derecha
		;;
		cmp DL, CAJA
		je ver_caja_der

		cmp DL, CAJA_OBJ
		je hay_pared_derecha
		;;
		; if the following space is an obj, then we will set it to 1
		call aumentar_puntos_par
		
		cmp DL, OBJETIVO
		je on_encima_obj_der
		;;
		cmp encima_obj, 1
		je off_encima_obj_der
		;;
		mov [xJugador], AH
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX
		;;
		mov DL, SUELO
		dec AH
		call colocar_en_mapa
		ret
ver_caja_der:
		inc AH
		push AX
		call obtener_de_mapa
		pop AX

		;; Si hay obstaculo adelante, no se mueve (caja o pared)
		cmp DL, PARED
		je hay_pared_derecha

		cmp DL, CAJA
		je hay_pared_derecha

		cmp DL, CAJA_OBJ
		je hay_pared_derecha

		;; Si esta el objetivo adelante, se mueve
		call aumentar_puntos
		call aumentar_puntos_par

		cmp encima_obj, 1
		je off_encima_obj_der1

		;call conf_vacio_der
		mov DL, CAJA
		push AX
		call colocar_en_mapa
		pop AX

		dec AH
		mov [xJugador], AH
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX

		dec AH
		mov DL, SUELO
		push AX
		call colocar_en_mapa
		pop AX
		ret
on_encima_obj_der:
		mov [xJugador], AH
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX

		cmp encima_obj, 1
		je swap_obj_der
		
		mov DL, SUELO
		dec AH
		call colocar_en_mapa
		mov encima_obj, 1
		ret

off_encima_obj_der:
		mov encima_obj, 0

		mov [xJugador], AH
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, OBJETIVO
		dec AH
		call colocar_en_mapa
		ret

off_encima_obj_der1:
		mov encima_obj, 0

		mov DL, CAJA
		push AX
		call colocar_en_mapa
		pop AX

		dec AH
		mov [xJugador], AH
		mov DL, JUGADOR
		push AX
		call colocar_en_mapa
		pop AX

		mov DL, OBJETIVO
		dec AH
		call colocar_en_mapa
		mov encima_obj, 0
		ret

swap_obj_der:
		mov DL, OBJETIVO
		dec AH
		call colocar_en_mapa
		ret
hay_pared_derecha:
		ret
fin_entrada_juego:
		ret

aumentar_puntos:
		cmp DL, OBJETIVO
		je agregar_punto_obj
		ret
agregar_punto_obj:
		sub puntos_obj, 1
		mov CAJA, 6
		cmp [puntos_obj], 0
		je siguiente_nivel
		ret

aumentar_puntos_par:
		inc puntos_par
		ret

;;;;;;;;;;;;;;;;;;;;
;MENU PAUSA
;;;;;;;;;;;;;;;;;;;

pausa:
		;;;;;;;;;;;;;;;;
		call menu_pausa
		mov AL, [opcion]
		;; > INICIAR JUEGO
		cmp AL, 0
		je ciclo_juego
		;; > CARGAR NIVEL
		cmp AL, 1
		je inicio
		;;;;;;;;;;;;;;;;

menu_pausa:
		call clear_pantalla
		mov AL, 0
		mov [opcion], AL      ;; reinicio de la variable de salida
		mov AL, 2
		mov [maximo], AL
		mov AX, 50
		mov BX, 28
		mov [xFlecha], AX
		mov [yFlecha], BX
		;; IMPRIMIR OPCIONES ;;
		;;;; INICIAR JUEGO
		mov DL, 0ch
		mov DH, 05
		mov BH, 00
		mov AH, 02
		int 10
		;; <<-- posicionar el cursor
		push DX
		mov DX, offset pausa_cont
		mov AH, 09
		int 21
		pop DX
		;;
		;;;; CARGAR NIVEL
		add DH, 02
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset pausa_salir
		mov AH, 09
		int 21
		pop DX
		;;
		call pintar_flecha
		;;;;
		;; LEER TECLA
		;;;;
entrada_menu_pausa:
		mov AH, 00
		int 16
		cmp AH, 48
		je restar_opcion_menu_pausa
		cmp AH, 50
		je sumar_opcion_menu_pausa
		cmp AH, 3bh  ;; le doy F1
		je fin_menu_pausa
		jmp entrada_menu_pausa
restar_opcion_menu_pausa:
		mov AL, [opcion]
		dec AL
		cmp AL, 0ff
		je volver_a_ceroP
		mov [opcion], AL
		jmp mover_flecha_menu_pausa
sumar_opcion_menu_pausa:
		mov AL, [opcion]
		mov AH, [maximo]
		inc AL
		cmp AL, AH
		je volver_a_maximoP
		mov [opcion], AL
		jmp mover_flecha_menu_pausa
volver_a_ceroP:
		mov AL, 0
		mov [opcion], AL
		jmp mover_flecha_menu_pausa
volver_a_maximoP:
		mov AL, [maximo]
		dec AL
		mov [opcion], AL
		jmp mover_flecha_menu_pausa
mover_flecha_menu_pausa:
		mov AX, [xFlecha]
		mov BX, [yFlecha]
		mov SI, offset dim_sprite_vacio
		mov DI, offset data_sprite_vacio
		call pintar_sprite
		mov AX, 50
		mov BX, 28
		mov CL, [opcion]
ciclo_ubicar_flecha_menu_pausa:
		cmp CL, 0
		je pintar_flecha_menu_pausa
		dec CL
		add BX, 10
		jmp ciclo_ubicar_flecha_menu_pausa
pintar_flecha_menu_pausa:
		mov [xFlecha], AX
		mov [yFlecha], BX
		call pintar_flecha
		jmp entrada_menu_pausa
		;;

fin_menu_pausa:
		ret
;; siguiente_linea - extrae la siguiente línea del archivo referenciado por el handle en BX
;; ENTRADA:
;;    - BX: handle
;; SALIDA:
;;    - [linea]: contenido de la línea que se extrajo, finalizada en 00 (nul0)
;;    - DL: si el archivo llegó a su fin
;;    - DH: la cantidad de caracteres en la línea
siguiente_linea:
		mov SI, 0000
		mov DI, offset linea
		;;
ciclo_sig_linea:
		mov AH, 3fh
		mov CX, 0001
		mov DX, DI
		int 21
		cmp AX, 0000
		je fin_siguiente_linea
		mov AL, [DI]
		cmp AL, 0a
		je quitar_nl_y_fin
		inc SI
		inc DI
		jmp ciclo_sig_linea
quitar_nl_y_fin:
		mov AL, 00
		mov [DI], AL
		mov DX, SI
		mov DH, DL
		mov DL, 00    ;; no ha finalizado el archivo
		ret
fin_siguiente_linea:
		mov DL, 0ff   ;; ya finalizó el archivo
		ret

;; cadena_igual - verifica que dos cadenas sean iguales
;; ENTRADA:
;;    - SI: cadena 1, con su tamaño en el primer byte
;;    - DI: cadena 2
;; SALIDA:
;;    - DL: 0ff si son iguales, 00 si no lo son
cadena_igual:
		mov CH, 00
		mov CL, [SI]
		inc SI
ciclo_cadena_igual:
		mov AL, [SI]
		cmp AL, [DI]
		jne fin_cadena_igual
		inc SI
		inc DI
		loop ciclo_cadena_igual
cadenas_son_iguales:
		mov DL, 0ff
		ret
fin_cadena_igual:
		mov DL, 00
		ret

;; ignorar_espacios - ignora una sucesión de espacios
;; ENTRADA:
;;    - DI: offset de una cadena cuyo primer byte se supone es un espacio
;; ...
ignorar_espacios:
ciclo_ignorar:
		mov AL, [DI]
		cmp AL, 20
		jne fin_ignorar
		inc DI
		jmp ciclo_ignorar
fin_ignorar:
		ret

;; memset - memset
;; ENTRADA:
;;    - DI: offset del inicio de la cadena de bytes
;;    - CX: cantidad de bytes
;;    - AL: valor que se pondrá en cada byte
memset:
		push DI
ciclo_memset:
		mov [DI], AL
		inc DI
		loop ciclo_memset
		pop DI
		ret

;; leer_cadena_numerica - lee una cadena que debería estar compuesta solo de números
;; ENTRADA:
;;    - DI: offset del inicio de la cadena numérica
;; SALIDA:
;;    - [numero]: el contenido de la cadena numérica
leer_cadena_numerica:
		mov SI, DI
		;;
		mov DI, offset numero
		mov CX, 0005
		mov AL, 30
		call memset
		;;
		mov DI, SI
		mov CX, 0000
ciclo_ubicar_ultimo:
		mov AL, [DI]
		cmp AL, 30
		jb copiar_cadena_numerica
		cmp AL, 39
		ja copiar_cadena_numerica
		inc DI
		inc CX
		jmp ciclo_ubicar_ultimo
copiar_cadena_numerica:
		push DI   ;;   <----
		dec DI
		;;
		mov SI, offset numero
		add SI, 0004
ciclo_copiar_num:
		mov AL, [DI]
		mov [SI], AL
		dec DI
		dec SI
		loop ciclo_copiar_num
		pop DI
		ret
;;; 
;; datos del desarrollador 
;; es una prueba 
datos_desarrollador:
		mov DH, 18
		mov DL, 01
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov DX, offset iniciales
		mov AH, 09
		int 21
		pop DX

puntaje2:
		mov DH, 0
		mov DL, 20
		mov BH, 00
		mov AH, 02
		int 10
		push DX
		mov AX, puntos_par
		call printax
		pop DX
		ret
		
print_char:
		mov DI, BX
		mov AL, [DI]
		cmp AL, 00
		je end_print
		cmp SI, 0005
		je end_print
		mov CX, 0001
		mov AH, 09
		int 21
		inc BX
		inc SI
		inc DL
		jmp print_char

end_print:
		ret
; ciclo_escribir_monto:
; 		mov DI, DX
; 		mov AL, [DI]
; 		cmp AL, 00
; 		je fin_pintar_mapa2
; 		cmp SI, 0005
; 		je fin_pintar_mapa2
; 		mov CX, 0001
; 		push DX
		
; 		mov AH, 09
; 		int 21
; 		pop DX
; 		inc DX
; 		inc SI
; 		jmp ciclo_escribir_monto
; 		;;
;;
siguiente_nivel:
		;; clear_pantalla - limpia la pantalla
		call clear_pantalla
		mov caja, 3
		;call reset_map
		;;
		;; imprimir_datos_personales - imprime los datos personales
		add niveles, 1
		cmp niveles, 1
		je cargar_un_nivel1
		cmp niveles, 2
		je cargar_un_nivel2
		cmp niveles, 3
		je inicio


printax proc
    mov cx, 0
    mov bx, 10
@@loophere:
    mov dx, 0
    div bx                         
    push ax
    add dl, '0'                    
    pop ax                         
    push dx                        
    inc cx                         
    cmp ax, 0                      
	jnz @@loophere
    mov ah, 2                     
@@loophere2:
    pop dx                         
    int 21h                        
    loop @@loophere2
    ret
printax endp
;; numAcadena
;; ENTRADA:
;;     AX -> número a convertir    
;; SALIDA:
;;    [numero] -> numero convertido en cadena
;;AX = 1500
;;CX = AX  <<<<<<<<<<<
;;[31][30][30][30][30]
;;                  ^
numAcadena:
		mov CX, 0005
		mov DI, offset numero2
ciclo_poner30s:
		mov BL, 30
		mov [DI], BL
		inc DI
		dec cx
		cmp cx, 0
		jne ciclo_poner30s
		;; tenemos '0' en toda la cadena
		mov CX, 0    ; inicializar contador
		mov DI, offset numero2
		add DI, 0004
		;;
ciclo_convertirAcadena:
		mov BL, [DI]
		inc BL
		mov [DI], BL
		cmp BL, 3ah
		je aumentar_siguiente_digito_primera_vez
		loop ciclo_convertirAcadena
		jmp retorno_convertirAcadena
aumentar_siguiente_digito_primera_vez:
		push DI
aumentar_siguiente_digito:
		mov BL, 30     ; poner en '0' el actual
		mov [DI], BL
		dec DI         ; puntero a la cadena
		mov BL, [DI]
		inc BL
		mov [DI], BL
		cmp BL, 3ah
		je aumentar_siguiente_digito
		pop DI         ; se recupera DI
		loop ciclo_convertirAcadena
retorno_convertirAcadena:
		ret

;; IMPRIMIR DATOS PERSONALES
imprimir_datos_personales:
    print msg_linea
    print msg_universidad
    print msg_facultad
    print msg_escuela
    print msg_arqui
	print msg_arqui1
    print msg_nombre
    print msg_carne
    print msg_linea2

;;;
;; cadenaAnum
;; ENTRADA:
;;    DI -> dirección a una cadena numérica
;; SALIDA:
;;    AX -> número convertido
;;;;
cadenaAnum:
		mov AX, 0000    ; inicializar la salida
		mov CX, 0005    ; inicializar contador
		;;
seguir_convirtiendo:
		mov BL, [DI]
		cmp BL, 00
		je retorno_cadenaAnum
		sub BL, 30      ; BL es el valor numérico del caracter
		mov DX, 000a
		mul DX          ; AX * DX -> DX:AX
		mov BH, 00
		add AX, BX 
		inc DI          ; puntero en la cadena
		loop seguir_convirtiendo
retorno_cadenaAnum:
		ret


fin:
.EXIT
END
