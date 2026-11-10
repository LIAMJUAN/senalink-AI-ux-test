Feature: US-14 - Consentimiento de privacidad
  Como usuario de SeñaLink AI,
  necesito conocer y aceptar el tratamiento de mis datos,
  para proteger la privacidad de mis conversaciones.

  Scenario: Visualizacion de la politica de privacidad
    Given que el usuario abre la aplicacion por primera vez
    When accede a la pantalla de bienvenida
    Then el sistema muestra la politica de privacidad y solicita su aceptacion antes de usar las funciones de comunicacion

  Scenario: Rechazo del consentimiento
    Given que el sistema solicita aceptar la politica de privacidad
    When el usuario no acepta
    Then la aplicacion informa que no puede usar las funciones de comunicacion ni activa la camara o el microfono

  Scenario: Revocacion del consentimiento
    Given que el usuario ya acepto la politica de privacidad
    When ingresa a configuracion y revoca su consentimiento
    Then el sistema cierra la sesion y elimina los datos almacenados localmente
