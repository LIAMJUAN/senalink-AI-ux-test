Feature: US-24 - Iniciar una conversación en pocos pasos
  Como persona sorda usuaria de LSP o personal de atención al público,
  necesito iniciar una conversación desde la pantalla principal en pocos pasos,
  para comenzar la atención de inmediato
  sin instrucciones extensas ni conocimientos técnicos.

  Scenario: Escenario 1 - Inicio directo
    Given que el usuario se encuentra en la pantalla principal de SeñaLink AI
    When selecciona la opción "Iniciar conversación"
    Then el sistema abre la pantalla de comunicación con las opciones de señas y voz disponibles, en no más de dos toques

  Scenario: Escenario 2 - Permisos pendientes
    Given que la aplicación aún no tiene acceso a la cámara o al micrófono
    When el usuario inicia una conversación
    Then el sistema solicita únicamente los permisos necesarios para el modo elegido
    And continúa el flujo una vez concedidos

  Scenario: Escenario 3 - Reanudación tras interrupción
    Given que la aplicación pasó a segundo plano durante la atención
    When el usuario regresa a ella
    Then el sistema restablece la pantalla de comunicación y los mensajes mostrados hasta ese momento
