Feature: US-16 - Configurar el nivel de dominio de LSP del usuario oyente
  Como personal oyente de atención al público,
  quiero indicar mi nivel de conocimiento en Lengua de Señas Peruana (LSP)
  en mi perfil, para que la aplicación ajuste las ayudas visuales
  y la velocidad de sugerencias según mi experiencia.

  Scenario: Escenario 1 - Selección de nivel en el perfil
    Given que el usuario oyente accede a la configuración de su cuenta
    When selecciona entre las opciones "Principiante", "Intermedio" o "Ninguno"
    Then el sistema guarda su nivel de dominio de LSP

  Scenario: Escenario 2 - Adaptación de la interfaz
    Given que el usuario configuró su nivel como "Ninguno"
    When utiliza el módulo de emisión de mensajes
    Then la aplicación prioriza guías de texto y ayudas visuales más detalladas para facilitarle la tarea

  Scenario: Escenario 3 - Modificación posterior
    Given que el usuario ha mejorado su dominio de señas con el tiempo
    When actualiza su nivel en el menú de perfil
    Then el sistema modifica dinámicamente las sugerencias de la interfaz para adaptarse a su nuevo nivel
