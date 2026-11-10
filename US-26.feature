Feature: US-26 - Crear una cuenta y seleccionar el tipo de usuario
  Como usuario de SeñaLink AI,
  necesito crear una cuenta indicando si soy una persona sorda
  usuaria de LSP o personal de atención al público,
  para que la aplicación adapte las opciones disponibles
  según mi forma de uso.

  Scenario: Escenario 1 - Registro exitoso
    Given que el usuario se encuentra en la pantalla de registro
    When completa su correo, contraseña y tipo de usuario
    Then el sistema crea la cuenta y lo dirige a la pantalla principal

  Scenario: Escenario 2 - Datos incompletos
    Given que el usuario está completando el registro
    When intenta continuar sin ingresar un dato obligatorio
    Then el sistema identifica el campo pendiente y solicita completarlo

  Scenario: Escenario 3 - Selección del tipo de usuario
    Given que el usuario está creando su cuenta
    When selecciona "Persona sorda usuaria de LSP" o "Personal de atención"
    Then el sistema guarda dicho perfil para adaptar posteriormente la experiencia de uso
