Feature: US10 - Visualizar textos de forma clara y legible
  Como persona sorda usuaria de SeñaLink AI,
  quiero que los mensajes de la conversación se presenten de manera clara y legible,
  para poder comprender la información mostrada durante la atención.

  Scenario: Escenario 1 - Visualización del mensaje
    Given que la persona sorda está recibiendo en texto la respuesta de la persona oyente durante la interacción
    When selecciona la opción de aumentar el tamaño de letra
    Then el sistema muestra el texto con un tamaño mayor sin ocultar su contenido

  Scenario: Escenario 2 - Disminuir el tamaño del texto
    Given que el texto se está mostrando durante la interacción
    When se selecciona la opción de disminuir el tamaño de letra
    Then el sistema reduce el tamaño del texto manteniendo legibilidad

  Scenario: Escenario 3 - Mantener el tamaño seleccionado
    Given que el usuario ha modificado el tamaño de letra
    When se muestra la siguiente respuesta de la persona oyente durante la misma interacción
    Then el sistema mantiene el tamaño de texto seleccionado
