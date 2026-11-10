Feature: US-15 - Gestionar el permiso de acceso al micrófono
  Como personal de atención al público,
  necesito permitir el acceso al micrófono del dispositivo,
  para que SeñaLink AI pueda captar mi voz
  durante la interacción con la persona sorda.

  Scenario: Escenario 1 - Solicitud de permiso
    Given que SeñaLink AI aún no tiene acceso al micrófono
    When el personal intenta utilizar la comunicación mediante voz
    Then el sistema solicita permiso para utilizar el micrófono

  Scenario: Escenario 2 - Permiso concedido
    Given que el sistema solicita acceso al micrófono
    When el usuario concede el permiso
    Then la aplicación habilita el micrófono y permite captar su voz durante la interacción

  Scenario: Escenario 3 - Permiso rechazado
    Given que el sistema solicita acceso al micrófono
    When el usuario rechaza el permiso
    Then la aplicación informa que el reconocimiento de voz requiere acceso al micrófono y no inicia dicha función
