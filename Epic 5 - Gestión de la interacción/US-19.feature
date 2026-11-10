Feature: US-19 - Guardar y utilizar frases frecuentes
  Como persona sorda usuaria de SeñaLink AI,
  necesito guardar frases de uso frecuente,
  para poder comunicarlas rápidamente con un solo toque
  sin necesidad de volver a hacer señas ante el dispositivo.

  Scenario: Escenario 1 - Guardar nueva frase
    Given que el usuario escribió o tradujo correctamente una frase
    When selecciona el ícono de guardar en favoritos
    Then la frase se almacena permanentemente en su lista de frases frecuentes

  Scenario: Escenario 2 - Uso de frase guardada
    Given que el usuario se encuentra en medio de una interacción
    When abre su lista de frases frecuentes y selecciona una
    Then el sistema la reproduce en voz o la muestra en texto de forma inmediata para la persona oyente

  Scenario: Escenario 3 - Eliminar frase
    Given que el usuario ya no necesita una frase previamente guardada
    When selecciona la opción de eliminar sobre el elemento
    Then la frase desaparece de su lista
