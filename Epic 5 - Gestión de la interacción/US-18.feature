Feature: US-18 - Visualizar el historial de conversaciones traducidas
  Como persona sorda o profesional de atención al público,
  quiero visualizar un historial de las últimas conversaciones
  o traducciones realizadas en la aplicación,
  para consultar información clave de una atención anterior
  sin tener que repetir todo el proceso.

  Scenario: Escenario 1 - Almacenamiento automático
    Given que se ha completado una interacción de traducción bidireccional
    When finaliza la sesión
    Then el sistema guarda el registro de la conversación en la sección de historial

  Scenario: Escenario 2 - Consulta de detalle
    Given que el usuario se encuentra en la vista de historial
    When selecciona un elemento guardado
    Then la aplicación despliega el texto completo de la transcripción correspondiente

  Scenario: Escenario 3 - Limpieza de historial
    Given que el usuario desea proteger su privacidad
    When selecciona la opción de vaciar historial
    Then el sistema elimina los registros almacenados localmente tras una confirmación
