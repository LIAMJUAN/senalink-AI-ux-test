Feature: US-22 - Recibir ayuda para reconocer señas en condiciones de poca luz
  Como persona sorda usuaria de LSP,
  necesito que la aplicación me avise cuando hay poca luz
  y me ayude a mejorar la captura de mis señas,
  para que el reconocimiento funcione correctamente en lugares
  como hospitales, oficinas o ambientes con iluminación deficiente.

  Scenario: Escenario 1 - Detección de poca luz
    Given que la cámara está activa durante el reconocimiento de señas
    When el sistema detecta que la iluminación es insuficiente
    Then muestra un aviso visual breve indicando que hay poca luz
    And sugiere buscar un lugar más iluminado

  Scenario: Escenario 2 - Activación de la linterna
    Given que se mostró el aviso de poca luz
    When el usuario selecciona la opción "Activar luz"
    Then el sistema enciende la linterna del dispositivo
    And continúa el reconocimiento sin perder los mensajes de la conversación

  Scenario: Escenario 3 - Iluminación restablecida
    Given que la iluminación mejoró o el usuario activó la luz
    When el sistema detecta condiciones suficientes
    Then retira el aviso automáticamente
    And reanuda el reconocimiento normal
