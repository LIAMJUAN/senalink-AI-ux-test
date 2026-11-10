Feature: US08 - Visualizar el estado de conexión de red y latencia de la IA
  Como usuario de SeñaLink AI en entornos de alta demanda,
  quiero ver un indicador visual claro del estado de la red y del procesamiento de la IA,
  para saber si la traducción en tiempo real experimentará retrasos.

  Scenario: Escenario 1 - Conexión óptima
    Given que el dispositivo cuenta con una conexión a internet estable
    When el usuario abre el módulo de traducción
    Then el indicador superior muestra un icono verde de estado óptimo

  Scenario: Escenario 2 - Pérdida de conectividad
    Given que la red se interrumpe durante el uso
    When el sistema detecta la caída de conexión
    Then muestra una alerta flotante advirtiendo que la traducción en tiempo real está pausada e intentando reconectar

  Scenario: Escenario 3 - Alta latencia del servidor
    Given que el servidor de IA experimenta retrasos en el procesamiento
    When la latencia supera el umbral esperado
    Then el indicador cambia a color amarillo advirtiendo de un procesamiento lento pero operativo
