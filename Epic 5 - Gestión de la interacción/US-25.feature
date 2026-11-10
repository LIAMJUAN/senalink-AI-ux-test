Feature: US-25 - Usar frases predefinidas de atención al público
  Como personal de atención al público que no conoce LSP,
  necesito seleccionar frases predefinidas de atención
  (por ejemplo, saludos, solicitud de documentos o indicaciones de espera),
  para atender de forma rápida y clara a la persona sorda
  sin tener que hablar cada vez.

  Scenario: Escenario 1 - Seleccionar una frase de atención
    Given que el personal se encuentra en una conversación activa
    When abre la lista de frases de atención y selecciona una
    Then el sistema la muestra de inmediato en texto claro para la persona sorda

  Scenario: Escenario 2 - Filtrar frases por categoría
    Given que el personal accede a la lista de frases
    When elige una categoría (salud, banco, universidad, municipalidad u otra)
    Then el sistema resalta visualmente la categoría seleccionada
    And muestra únicamente las frases correspondientes a ese contexto

  Scenario: Escenario 3 - Respuesta de la persona sorda mediante señas
    Given que el sistema mostró una frase predefinida
    When la persona sorda responde mediante señas
    Then la respuesta se muestra en la conversación diferenciada del mensaje del personal
    And se mantiene la comunicación bidireccional
