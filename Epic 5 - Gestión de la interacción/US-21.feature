Feature: US-21 - Activar vocabulario especializado según el sector
  Como personal de atención al público,
  necesito gestionar el contexto de la interacción
  activando un vocabulario especializado (salud, finanzas),
  para que la aplicación reconozca los términos técnicos con mayor precisión
  sin interrumpir el flujo de comunicación.

  Scenario: Escenario 1 - Selección de sector
    Given que el personal de atención va a iniciar una consulta especializada
    When selecciona un modo como "Salud/Psicología" en la pantalla previa
    Then la aplicación prioriza términos de dicho sector en sus transcripciones de voz a texto

  Scenario: Escenario 2 - Traducción técnica
    Given que el modo especializado está activo
    When el profesional utiliza jerga propia de su sector
    Then el sistema transcribe correctamente el término
    And no lo confunde con una palabra común de sonido similar

  Scenario: Escenario 3 - Desactivar modo
    Given que la atención especializada ha finalizado
    When el usuario desactiva la opción en el panel
    Then el sistema restablece el modelo de reconocimiento al diccionario de uso general
