
Feature: US01 - Reconocer señas y convertirlas en texto

  Como persona sorda usuaria de SeñaLink AI,
  necesito que la aplicación reconozca mis señas mediante la cámara y las convierta en texto,
  para que la persona oyente pueda leer lo que quiero comunicar.

  Scenario: Escenario 1 - Reconocimiento exitoso
    Given que la persona sorda tiene la cámara activa y sus manos dentro del encuadre
    When realiza señas de la Lengua de Señas Peruana
    Then el sistema muestra en pantalla el texto reconocido

  Scenario: Escenario 2 - Seña no reconocida
    Given que el sistema no logra identificar una seña con suficiente confianza
    When el usuario termina el gesto
    Then el sistema informa que no pudo reconocerla
    And permite repetirla o escribir el mensaje

  Scenario: Escenario 3 - Encuadre inadecuado
    Given que las manos no están completamente dentro del encuadre
    When el usuario inicia las señas
    Then el sistema muestra una guía visual para reposicionar el dispositivo
