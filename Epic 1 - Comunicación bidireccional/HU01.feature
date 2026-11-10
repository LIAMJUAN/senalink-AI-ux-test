Característica: Reconocer señas y convertirlas en texto
  Como persona sorda usuaria de SeñaLink AI
  Necesito que la aplicación reconozca mis señas mediante la cámara y las convierta en texto
  Para que la persona oyente pueda leer lo que quiero comunicar.

  Escenario 1: Reconocimiento exitoso
    Dado que la persona sorda tiene la cámara activa y sus manos dentro del encuadre
    Cuando realiza señas de la Lengua de Señas Peruana
    Entonces el sistema muestra en pantalla el texto reconocido

  Escenario 2: Seña no reconocida
    Dado que el sistema no logra identificar una seña con suficiente confianza
    Cuando el usuario termina el gesto
    Entonces el sistema informa que no pudo reconocerla
    Y permite repetirla o escribir el mensaje

  Escenario 3: Encuadre inadecuado
    Dado que las manos no están completamente dentro del encuadre
    Cuando el usuario inicia las señas
    Entonces el sistema muestra una guía visual para reposicionar el dispositivo
