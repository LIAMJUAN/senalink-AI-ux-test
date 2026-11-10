Feature: US-27 - Iniciar sesión en SeñaLink AI
  Como usuario registrado de SeñaLink AI,
  necesito iniciar sesión con mis credenciales,
  para acceder a mis preferencias y funciones personales
  de la aplicación.

  Scenario: Escenario 1 - Inicio de sesión correcto
    Given que el usuario tiene una cuenta registrada
    When ingresa correctamente sus credenciales
    Then el sistema permite el acceso y muestra la pantalla principal

  Scenario: Escenario 2 - Credenciales incorrectas
    Given que el usuario intenta iniciar sesión
    When los datos ingresados no son válidos
    Then el sistema informa que no fue posible acceder y permite intentarlo nuevamente

  Scenario: Escenario 3 - Campos vacíos
    Given que el usuario se encuentra en la pantalla de inicio de sesión
    When intenta ingresar sin completar los campos obligatorios
    Then el sistema solicita completar la información faltante
