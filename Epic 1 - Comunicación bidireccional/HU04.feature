Feature: US04 - Calificar la precisión de la traducción generada por la IA

  Como usuario de la aplicación,
  quiero poder calificar o reportar una traducción incorrecta mediante un sistema rápido de feedback,
  para contribuir a que el sistema mejore la precisión de la Lengua de Señas Peruana.

  Scenario: Escenario 1 - Envío de retroalimentación negativa
    Given que la aplicación ha finalizado una traducción de señas o voz
    When el usuario pulsa el icono de pulgar abajo
    Then el sistema registra el evento
    And muestra un campo opcional para detallar el error

  Scenario: Escenario 2 - Confirmación de reporte
    Given que el usuario envió el reporte de error
    When se procesa la acción
    Then la aplicación muestra un mensaje breve de agradecimiento
    And envía los datos de forma anónima al servidor de mejora continua

  Scenario: Escenario 3 - Retroalimentación positiva
    Given que la traducción fue exitosa y precisa
    When el usuario pulsa el icono de pulgar arriba
    Then la interfaz registra la conformidad de la IA
    And muestra una animación discreta de éxito
