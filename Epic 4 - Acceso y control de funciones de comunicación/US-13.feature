Feature: US-13 - Gestionar el permiso de acceso a camara
  Como persona sorda usuaria de LSP,
  necesito permitir el acceso a la camara,
  para que SeñaLink AI pueda reconocer mis señas.

  Scenario: Solicitud de permiso
    Given que la aplicacion no tiene acceso a la camara
    When el usuario inicia la comunicacion mediante señas
    Then el sistema solicita permiso para utilizar la camara

  Scenario: Permiso concedido
    Given que el sistema solicita acceso a la camara
    When el usuario concede el permiso
    Then la aplicacion habilita la camara y permite reconocer señas

  Scenario: Permiso rechazado
    Given que el sistema solicita acceso a la camara
    When el usuario rechaza el permiso
    Then la aplicacion informa que necesita acceso a la camara y no inicia el reconocimiento de señas
