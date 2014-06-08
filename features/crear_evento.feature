Feature: Crear evento con cantidad
  AS speaker 
  I WANT agregar a los eventos la cantidad máxima de participantes 
  TO no recibir evaluaciones de más

  Background:
    Given no hay eventos
    And estoy logueado
  
  Scenario: Happy path
	  Given estoy en la pagina de creacion de eventos "the new event page"
    And lleno el campo "event[name]" con "Nombre evento"
    And lleno el campo "event[date]" con tomorrow
	  And lleno el campo "event[max]" con 10    
	  When preciono el boton "saveButton"
    Then I should see "nombreevento1"

  Scenario: Campo invalido 1
	  Given estoy en la pagina de creacion de eventos "the new event page"
    And lleno el campo "event[name]" con "Nombre evento"
    And lleno el campo "event[date]" con tomorrow
	  And dejo vacio el campo event[max]
	  When preciono el boton "saveButton"
    Then I should see "Error: la cantidad de participantes debe ser un numero positivo"

  Scenario: Campo invalido 2
	  Given estoy en la pagina de creacion de eventos "the new event page"
    And lleno el campo "event[name]" con "Nombre evento"
    And lleno el campo "event[date]" con tomorrow
	  And lleno el campo "event[max]" con diez
	  When preciono el boton "saveButton"
    Then I should see "Error: la cantidad de participantes debe ser un numero positivo"

  Scenario: Campo invalido 3
	  Given estoy en la pagina de creacion de eventos "the new event page"
    And lleno el campo "event[name]" con "Nombre evento"
    And lleno el campo "event[date]" con tomorrow
	  And lleno el campo "event[max]" con "-10"
	  When preciono el boton "saveButton"
    Then I should see "Error: la cantidad de participantes debe ser un numero positivo"
