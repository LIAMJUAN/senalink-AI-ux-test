Feature: US07 - Revisar y corregir la transcripción del personal de atención
  Como personal de atención al público,
  quiero revisar y corregir lo transcrito antes de mostrarlo a la persona sorda,
  para asegurar que la información sea precisa, especialmente en trámites.

  Scenario: Escenario 1 - Revisión antes de mostrar
    Given que la opción de revisión previa está activada
    When el sistema transcribe la voz del personal
    Then el personal puede confirmar o editar el texto antes de mostrarlo

  Scenario: Escenario 2 - Envío inmediato
    Given que la opción de revisión previa está desactivada
    When el personal habla
    Then el sistema muestra el texto en tiempo real y permite corregirlo posteriormente, marcándolo como texto corregido

  Scenario: Escenario 3 - Actualización del texto
    Given que el personal corrige un mensaje ya mostrado
    When confirma el cambio
    Then el sistema actualiza el texto visible para la persona sorda
