Feature Creating a comment

  As a reader
  I want to comment on a post
  So i can let everyone know what i think

  Scenario: Writing a comment
    Given I'm logged in
    When I'm on a post
    Then Older comments should be at the top
    Then I can leave comments
    Then I can see the users that wrote the comments names