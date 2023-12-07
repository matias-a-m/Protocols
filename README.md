# Protocols

Este repositorio contiene un simple ejemplo de comunicación entre dos controladores de vista en una aplicación iOS utilizando el patrón de delegado. La aplicación consta de dos pantallas: `ViewController` y `SecondVC`, donde `ViewController` es el controlador principal y `SecondVC` es la segunda pantalla que se presenta al presionar un botón.

## Descripción del Código

### ViewController.swift
En `ViewController`, se presenta una etiqueta (`stringSelectedLabel`) que se oculta inicialmente. Al presionar el botón "Open 2nd Screen", se instancia `SecondVC`, se establece `ViewController` como delegado y se presenta utilizando el controlador de navegación. Además, `ViewController` adopta el protocolo `StringProtocol` para manejar las actualizaciones de la segunda pantalla.

### StringProtocol.swift
`StringProtocol` es un protocolo que define dos funciones requeridas para manejar la interacción entre los controladores de vista: `didSelectedString` para notificar cuando se selecciona una cadena y `stringLenght` para proporcionar la longitud de la cadena seleccionada.

### SecondVC.swift
`SecondVC` es el controlador de vista de la segunda pantalla. Contiene un campo de texto (`textField`) y un botón "Dismiss". Cuando se presiona el botón "Dismiss", se recoge el texto ingresado en el campo de texto y se envía a través del delegado (`StringProtocol`) a `ViewController`. Luego, la pantalla se cierra.

## Uso

1. Clone el repositorio.
2. Abra el proyecto en Xcode.
3. Ejecute la aplicación en un simulador o dispositivo.

Al presionar el botón "Open 2nd Screen" en la pantalla principal, se abrirá la segunda pantalla. Ingrese una cadena en el campo de texto y presione el botón "Dismiss". La longitud de la cadena y la cadena seleccionada se imprimirán en la consola de Xcode.

¡Disfruta explorando el ejemplo de comunicación entre controladores de vista en iOS!
