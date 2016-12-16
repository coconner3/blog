Feature: Create a post

  As an author
    I want to create a blog post
    So that i can share my ideas to everyone

    Scenario: Creating a post
  	Given I am on the post submission page
  	When I write my post including, author, title, and content
  	Then my post is created

    Scenario: Creating a post with the same title
    Given: I'm creating a post
    When I put in a title that already exists
    Then It gives me an error

