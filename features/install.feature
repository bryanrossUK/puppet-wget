Feature: wget install
  In order to fetch resources from http/https
  As an administrator
  I want to verify wget installation

  Scenario: Checking if wget is latest
    Given a node of class "wget"
    Given I use storeconfigs
    When I compile the catalog
    Then package "wget" should be "latest"
