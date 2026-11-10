Feature: US-20 - Consultar un diccionario rápido de LSP local
  Como usuario de la aplicación,
  necesito acceder a un diccionario rápido de Lengua de Señas Peruana (LSP),
  para consultar señas específicas en caso de dudar
  y mejorar la fluidez de mi comunicación.

  Scenario: Escenario 1 - Búsqueda exitosa
    Given que el usuario accede a la sección del diccionario
    When ingresa una palabra en el buscador
    Then el sistema muestra una imagen o pequeño clip de la seña correspondiente en LSP

  Scenario: Escenario 2 - Sugerencias automáticas
    Given que el usuario comienza a escribir en el buscador
    When ingresa las primeras letras
    Then el sistema despliega una lista desplegable con palabras sugeridas disponibles

  Scenario: Escenario 3 - Palabra no encontrada
    Given que la palabra buscada no está documentada en el diccionario
    When el usuario realiza la búsqueda
    Then el sistema le notifica que no existen resultados
    And le sugiere deletrear la palabra usando el abecedario
