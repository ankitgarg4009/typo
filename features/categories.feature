# New cucumber feature and script to test create,save,edit and update category
# Existing steps were re-used
Feature: Create and Save Categories
  As an blog administrator
  In order to share my thoughts to the world
  I want to be able to add categories to my blog
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create,save,edit and update categories
    Given I am on the new categories page
        When I fill in "category_name" with "Education"
        And I fill in "category_keywords" with "Graduate"
        And I fill in "category_permalink" with "Education_link"
        And I fill in "category_description" with "Lets Learn"
        And I press "Save"
        Then I should see "Education"
        Then I should see "Graduate"
        Then I should see "Education_link"
        Then I should see "Lets Learn"
      
        Then I follow "Education"
        And I fill in "category_name" with "Sports"
        And I fill in "category_keywords" with "cricket,tenis"
        And I fill in "category_permalink" with "sports_links"
        And I fill in "category_description" with "Lets Enjoy"
        And I press "Save"
        Then I should see "Sports"
        Then I should see "cricket,tenis"
        Then I should see "sports_links"
        Then I should see "Lets Enjoy"