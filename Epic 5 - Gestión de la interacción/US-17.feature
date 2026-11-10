Feature: US-17 - Finalizar la interacción presencial
  Como usuario de SeñaLink AI,
  necesito finalizar la interacción cuando haya terminado la atención,
  para cerrar el proceso de comunicación
  y regresar a la pantalla principal.

  Scenario: Escenario 1 - Solicitud de finalización
    Given que el usuario se encuentra utilizando SeñaLink AI durante una interacción presencial
    When selecciona la opción "Finalizar"
    Then el sistema muestra un mensaje solicitando confirmar si desea terminar la interacción

  Scenario: Escenario 2 - Confirmación de finalización
    Given que el sistema muestra el mensaje de confirmación
    When el usuario selecciona "Finalizar"
    Then el sistema termina la interacción actual y regresa a la pantalla principal de SeñaLink AI

  Scenario: Escenario 3 - Cancelar la finalización
    Given que el sistema muestra el mensaje de confirmación
    When el usuario selecciona "Cancelar"
    Then el sistema cierra el mensaje de confirmación y permite continuar con la interacción actual sin interrumpirla
