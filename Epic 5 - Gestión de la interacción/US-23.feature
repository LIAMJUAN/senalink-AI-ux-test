Feature: US-23 - Utilizar transcripción básica en modo sin conexión (Offline)
  Como usuario en un establecimiento con mala señal de internet
  (como ciertos hospitales o dependencias),
  necesito que la aplicación ofrezca un modo offline básico,
  para no interrumpir la comunicación si se pierde la red.

  Scenario: Escenario 1 - Pérdida automática de señal
    Given que el usuario está realizando una traducción
    When el dispositivo pierde por completo la conexión a internet
    Then el sistema activa el "Modo Offline"
    And muestra una notificación indicando que usará un modelo simplificado

  Scenario: Escenario 2 - Traducción procesada localmente
    Given que el modo offline está activo
    When el usuario habla por el micrófono
    Then el sistema realiza una transcripción de voz a texto de nivel básico procesada de forma local en el dispositivo

  Scenario: Escenario 3 - Reconexión a la red
    Given que el dispositivo recupera la conexión a internet de forma estable
    When la aplicación detecta la red
    Then desactiva el modo offline silenciosamente
    And retoma el procesamiento en la nube para garantizar una traducción de alta precisión
