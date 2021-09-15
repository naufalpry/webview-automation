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
Login
   Reload Page
   Sleep             ${Delay}
   Click Element     //div[@class='header__links']/div[@class='header__login']
   Sleep             ${Delay}
   Click Element     //div[@class='header-navigation menu__slide-left-enter-done']/div/div[@class='header-navigation__user']/ul/li/a   
   Sleep             ${Delay}
   Click Element     //div[@class='account-dashboard']/a[@id='account-dashboard__button--login']
   Sleep             ${Delay}
   Input Text        //input[@class='step__input-group__input']   ${Email}
   Click Element     //button[@class='step-footer__button']
   Sleep             ${Delay}
   Click Element     //div[@class='step-otp active slide-left-enter-done']//a[@class='step-otp__to-password']
   Sleep             ${SLEEP}
   Input Text        //div[@class='step__input-group']//input[1]  ${Pass}
   Sleep             ${SLEEP}
   Click Element     //div[@class='step__input-group']//img[1]
   Sleep             ${SLEEP}
   Click Element     //div[@class='step-footer']//button[@class='step-footer__button step-footer__button--submit']
   Sleep             ${SLEEP}
Homepage Infosehat
   Reload Page
   Sleep             ${Delay}
   resource.Scroll Page To Location  700  600
Homepage Topic Terhangat
   Reload Page
   Sleep             ${Delay}
   resource.Scroll Page To Location  700  600