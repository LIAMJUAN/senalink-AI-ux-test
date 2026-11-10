Feature: US-30 - Cerrar sesión de forma segura
  Como usuario de SeñaLink AI,
  necesito cerrar mi sesión cuando termine
  de utilizar la aplicación,
  para evitar que otras personas accedan
  a mi perfil y preferencias desde el dispositivo.

  Scenario: Escenario 1 - Solicitud de cierre de sesión
    Given que el usuario tiene una sesión activa
    When selecciona la opción "Cerrar sesión"
    Then el sistema solicita confirmar la acción

  Scenario: Escenario 2 - Confirmación del cierre
    Given que el sistema solicita confirmación
    When el usuario confirma el cierre de sesión
    Then el sistema termina la sesión y muestra la pantalla de bienvenida

  Scenario: Escenario 3 - Cancelación
    Given que se muestra la confirmación de cierre
    When el usuario selecciona "Cancelar"
    Then el sistema mantiene la sesión activa y regresa a la pantalla anterior
