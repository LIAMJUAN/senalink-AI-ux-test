Feature: US02 - Convertir las señas reconocidas en voz

  Como persona sorda usuaria de LSP,
  necesito que el mensaje reconocido pueda reproducirse como voz,
  para que la persona oyente me escuche sin tener que leer la pantalla.

  Scenario: Escenario 1 - Reproducción de voz
    Given que existe un mensaje reconocido y confirmado
    When el usuario selecciona la opción de reproducir voz
    Then el sistema reproduce el mensaje en audio en español

  Scenario: Escenario 2 - Audio no disponible
    Given que el dispositivo está en silencio o sin salida de audio
    When el usuario intenta reproducir el mensaje
    Then el sistema muestra un aviso
    And mantiene el texto visible para la persona oyente

  Scenario: Escenario 3 - Control de velocidad
    Given que el mensaje es extenso
    When el usuario ajusta la velocidad de reproducción
    Then el sistema reproduce el audio con la velocidad elegida
