*** Settings ***
Documentation       automatizando app do youtube (PrimeExperts)
Resource            resourcesMobile.robot
 
*** Test Cases ***
Test Case 01: Search content
    Open Youtube
    Search For              adrenaline
    Select Playlist Menu
    Navigate Menus
 
Test Case 02: Logging in on Youtube
      Open Youtube
      Logging on the app with account

Test Case 03: Use Swipe metod on screen
      Open Youtube
      Navigate Trending
      Swipe until the tenth item on screen
      Select the tenth video





 

      