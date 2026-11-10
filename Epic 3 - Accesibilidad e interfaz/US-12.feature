Feature: US-12 - Recibir una guia visual de uso
  Como persona sorda usuaria de LSP,
  necesito una guia visual paso a paso,
  para aprender a utilizar la aplicacion sin ayuda.

  Scenario: Visualizacion de la guia inicial
    Given que el usuario inicia sesion por primera vez
    When accede a la pantalla principal
    Then el sistema muestra una guia visual de maximo cuatro pasos sobre el uso del dispositivo, las señas y la lectura de respuestas

  Scenario: Omitir la guia
    Given que la guia visual se esta mostrando
    When el usuario selecciona "Omitir"
    Then el sistema cierra la guia y muestra la pantalla principal sin bloquear funciones

  Scenario: Consultar nuevamente la guia
    Given que el usuario ya completo u omitio la guia
    When selecciona "Ver guia de uso" en el menu de ayuda
    Then el sistema muestra nuevamente la guia desde el primer paso
