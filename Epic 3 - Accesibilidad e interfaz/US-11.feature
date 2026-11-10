Feature: US-11 - Activar el modo de alto contraste
  Como usuario con dificultades visuales,
  quiero activar el modo de alto contraste,
  para leer los textos y navegar con claridad.

  Scenario: Activacion de alto contraste
    Given que el usuario se encuentra en la configuracion de accesibilidad
    When activa el interruptor de alto contraste
    Then la interfaz cambia a un fondo oscuro con texto claro

  Scenario: Desactivacion de alto contraste
    Given que el modo de alto contraste esta activo
    When el usuario desactiva el interruptor
    Then la interfaz regresa a sus colores predeterminados

  Scenario: Restaurar valores predeterminados
    Given que el usuario modifico los parametros de accesibilidad
    When selecciona restablecer valores por defecto
    Then la aplicacion recupera la paleta de colores estandar
