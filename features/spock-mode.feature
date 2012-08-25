Feature: Toggle a spock test
  In order to comment out a whole test you do not want run
  As a spock using emacs user
  I want to press a button to make this happen
  
  Scenario: toggle a test by commenting it out
    When I insert:
    """
    def "some test" () {

    }
    """
    And I press "C-c C-v tt"
    Then I should see:
    """
    /* def "some test"() {

    } */
    """
