Feature: US09 - Identificar fácilmente los modos de comunicación
  Como usuario de SeñaLink AI,
  quiero identificar claramente las opciones de comunicación mediante señas y mediante voz,
  para elegir rápidamente la forma de comunicación que necesito durante la interacción.

  Scenario: Escenario 1 - Visualización de opciones
    Given que el usuario ingresa a la pantalla de comunicación
    When se muestran las funciones disponibles
    Then el sistema presenta de forma diferenciada las opciones de señas y voz

  Scenario: Escenario 2 - Selección de comunicación mediante señas
    Given que las opciones están disponibles
    When el usuario selecciona comunicación mediante señas
    Then el sistema activa el flujo correspondiente al uso de la cámara

  Scenario: Escenario 3 - Selección de comunicación mediante voz
    Given que las opciones están disponibles
    When el usuario selecciona comunicación mediante voz
    Then el sistema activa el flujo correspondiente al uso del micrófono
