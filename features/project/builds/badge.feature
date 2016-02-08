Feature: Project Builds Badge
  Background:
    Given project exists in some group namespace
    And project has CI enabled
    And project has a recent build

  Scenario: I want to see a badge for successfully built project
    Given recent build is successfull
    When I display builds badge for a master branch
    Then I should see a build success badge
    And build badge is a svg image

  Scenario: I want to see a badge for project with filed builds
    Given recent build failed
    When I display builds badge for a master branch
    Then I should see a build failed badge
    And build badge is a svg image
