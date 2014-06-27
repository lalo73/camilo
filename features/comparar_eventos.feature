Feature: Comparar eventos
  As a speaker
  I want comparar eventos entre sí 
  To poder ver la evolución entre ellos

  Background:
    Given there are not events
    And I am logged in
    And existe el evento "Evento A" con tag "Tag1"
    And existe el evento "Evento B" con tag "Tag2"
    And existe el evento "Evento C" con tag "Tag1"
    
  Scenario: Comparacion 1
    Given estoy en la pagina de mis eventos
    When voy a la pagina de comparacion del tag "Tag2"
    Then deberia ver "Evento B"

  Scenario: Comparacion 2
    Given estoy en la pagina de mis eventos
    When voy a la pagina de comparacion del tag "Tag1"
    Then deberia ver "Evento A"
    Then deberia ver "Evento C"

  Scenario: Comparacion 3
    Given estoy en la pagina de mis eventos
    When voy a la pagina de comparacion del tag "Tag1"
    Then deberia ver "Evento A"
    Then deberia ver "Evento C"
