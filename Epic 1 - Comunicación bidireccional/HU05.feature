Feature: US05 - Identificar el turno de comunicación activo durante la conversación

  Como usuario de SeñaLink AI,
  necesito ver claramente quién tiene el turno de comunicación (señas o voz) y si el sistema está captando o procesando,
  para evitar interrupciones y saber cuándo debo hablar o hacer señas desde el mismo dispositivo.

  Scenario: Escenario 1 - Identificación del reconocimiento de señas
    Given que la persona sorda tiene la cámara activa
    When el sistema está captando sus señas
    Then la pantalla muestra un indicador visual distintivo de reconociendo señas
    And se diferencia claramente del modo de voz

  Scenario: Escenario 2 - Identificación de la captura de voz
    Given que la persona oyente activa el micrófono
    When el sistema está captando su voz
    Then la pantalla muestra un indicador visual de escuchando
    And desactiva el reconocimiento de señas para evitar mensajes duplicados

  Scenario: Escenario 3 - Procesamiento de la comunicación
    Given que el sistema está convirtiendo una seña o una frase hablada
    When el procesamiento no ha terminado
    Then la pantalla muestra un indicador de procesando
    And no permite iniciar otro turno hasta que se muestre el resultado
