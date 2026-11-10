Feature: US-29 - Configurar el modo de comunicación predeterminado
  Como usuario de SeñaLink AI,
  necesito seleccionar un modo de comunicación
  predeterminado entre señas y voz,
  para acceder más rápidamente a la función
  que utilizo con mayor frecuencia.

  Scenario: Escenario 1 - Seleccionar modo mediante señas
    Given que el usuario se encuentra en sus preferencias
    When selecciona la comunicación mediante señas como modo predeterminado
    Then el sistema guarda la cámara como opción inicial de comunicación

  Scenario: Escenario 2 - Seleccionar modo mediante voz
    Given que el usuario se encuentra en sus preferencias
    When selecciona la comunicación mediante voz como modo predeterminado
    Then el sistema guarda el micrófono como opción inicial

  Scenario: Escenario 3 - Modificar preferencia
    Given que el usuario ya posee un modo predeterminado
    When selecciona otro modo desde la configuración
    Then el sistema actualiza y conserva la nueva preferencia
