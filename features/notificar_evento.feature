Feature: Notificar
  As sistema
  I want notificar a los spekers si recibieron nuevas evaluaciones

  Background:
    Given me logueo
	And estoy en la pagina de creacion de eventos "the new event page"
    And lleno el campo "event[name]" con "Nombre evento"
    And lleno el campo "event[date]" con today
	And lleno el campo "event[max]" con 10    
	And preciono el boton "saveButton"
	And salgo del sistema

  Scenario: Sin notificacion
	When me logueo
	Then deberia ver "Mis eventos"

  Scenario: Con notificacion
	Given quiero evaluar "Nombre evento"
    When I follow "happyButton"
    And I wait a while    
	And me logueo
	Then deberia ver "Hay nuevas evaluaciones"
	And voy a la pagina de eventos
	Then deberia ver "Nombre evento Hay nuevas evaluaciones"
