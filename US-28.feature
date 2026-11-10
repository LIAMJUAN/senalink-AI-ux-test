Feature: US-28 - Recuperar el acceso a la cuenta
  Como usuario de SeñaLink AI,
  necesito recuperar el acceso a mi cuenta
  cuando olvide mi contraseña,
  para poder volver a utilizar mis configuraciones
  y preferencias.

  Scenario: Escenario 1 - Solicitud de recuperación
    Given que el usuario no recuerda su contraseña
    When selecciona la opción "Olvidé mi contraseña" e ingresa su correo registrado
    Then el sistema inicia el proceso de recuperación

  Scenario: Escenario 2 - Nueva contraseña
    Given que el usuario ha iniciado correctamente el proceso de recuperación
    When establece una nueva contraseña válida
    Then el sistema actualiza sus credenciales

  Scenario: Escenario 3 - Acceso posterior
    Given que la contraseña fue actualizada
    When el usuario inicia sesión con la nueva contraseña
    Then el sistema permite acceder normalmente a su cuenta
