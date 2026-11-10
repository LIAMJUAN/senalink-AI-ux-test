Feature: US06 - Revisar y corregir el texto reconocido antes de enviarlo
  Como persona sorda usuaria de SeñaLink AI,
  quiero revisar y corregir el texto reconocido antes de comunicarlo,
  para evitar malentendidos o mensajes incorrectos.

  Scenario: Escenario 1 - Revisión previa
    Given que el sistema reconoció una serie de señas
    When se muestra el texto
    Then el usuario puede confirmar, editar o descartar el mensaje antes de enviarlo como texto o voz

  Scenario: Escenario 2 - Corrección del mensaje
    Given que el texto reconocido contiene un error
    When el usuario lo edita y confirma
    Then el sistema comunica únicamente la versión corregida

  Scenario: Escenario 3 - Mensaje descartado
    Given que el usuario no desea enviar el texto reconocido
    When selecciona descartar
    Then el sistema no muestra, no reproduce ni guarda ese mensaje
