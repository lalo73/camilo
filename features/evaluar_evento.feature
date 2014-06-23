Feature: Evaluar evento con cantidad de participantes
  As sistema
  I WANT que los eventos reciban, a lo sumo, la misma cantidad de evaluaciones que participantes agregados por el speaker

  Background:
    Given existe el evento "Evento A" con cantidad de participantes 1
    Given existe el evento "Evento B" con cantidad de participantes 0

  Scenario: Evaluacion A
    Given quiero evaluar "Evento A"
    When I follow "happyButton"
    And I wait a while    
    Then deberia ver "Gracias"
    Given quiero evaluar "Evento A"   
    Then deberia ver "Este evento alcanzo la cantidad maxima de evaluaciones."

  Scenario: Evaluacion B
    Given quiero evaluar "Evento B"
    When I follow "happyButton"
    And I wait a while   
    Then deberia ver "Gracias"
    Given quiero evaluar "Evento B"
    When I follow "happyButton"
    And I wait a while   
    Then deberia ver "Gracias"
