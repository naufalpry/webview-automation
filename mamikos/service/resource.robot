***setting***

Library         Selenium2Library
Library         RequestsLibrary
Library         String
Library         HttpLibrary.HTTP
Library         Collections
Library         DateTime
| Variables | ../var/data.py

*** Variables ***

***Keyword***
Scroll Page To Location
    [Arguments]    ${x_location}    ${y_location}
    Execute JavaScript    window.scrollTo(${x_location},${y_location})
