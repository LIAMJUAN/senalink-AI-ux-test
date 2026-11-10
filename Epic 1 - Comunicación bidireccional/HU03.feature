Feature: US03 - Convertir la voz de la persona oyente en texto

  Como persona sorda usuaria de SeñaLink AI,
  necesito que la voz de la persona oyente se convierta en texto legible,
  para leer su respuesta al instante durante la atención.

  Scenario: Escenario 1 - Transcripción en tiempo real
    Given que el micrófono está activo
    When la persona oyente habla
    Then el sistema muestra el texto transcrito en tiempo real
    And utiliza una letra clara y de buen tamaño

  Scenario: Escenario 2 - Ruido ambiental
    Given que existe ruido ambiental que reduce la calidad del audio
    When la transcripción tiene baja confianza
    Then el sistema advierte la situación
    And sugiere acercar el dispositivo o repetir el mensaje

  Scenario: Escenario 3 - Diferenciación de mensajes
    Given que ambas personas usan el mismo dispositivo
    When se muestra la conversación
    Then el sistema distingue visualmente los mensajes de la persona oyente de los de la persona sorda
