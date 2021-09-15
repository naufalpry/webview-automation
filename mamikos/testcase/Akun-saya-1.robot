***Setting***
Library     Selenium2Library
Resource        ../service/setting.robot
Resource        ../service/resource.robot
| Variables | ../var/data.py
Test Setup      Setup Browser
Test Teardown   Close browser
*** Variables *** 
***Keyword***
Kebijakan Privasi
   Click Element     //div[@class='header__links']/div[@class='header__login']
   Sleep             ${SLEEP}
   Click Element     xpath=//*[contains(text(), "Pengaturan")]
   Sleep             ${SLEEP}
   Location Should contain    ${URL_TARGET}/setting
   Click Element     xpath=//*[contains(text(), "Akun Saya")]
   Sleep             ${SLEEP}
   Location Should contain    ${URL_TARGET}/setting/profile
   Sleep             ${SLEEP}
   Click Element     xpath=//*[contains(text(), "Kata Sandi")]
   Sleep             ${SLEEP}
   Location Should contain    ${URL_TARGET}/setting/profile/password
   Input text        //div[@class='setting-password-content__input-wrapper']//input[@id='oldPassword']   ${password}
   Sleep             ${SLEEP}
   Input text        //div[@class='setting-password-content__input-wrapper']//input[@id='newPassword']   ${password}
   Sleep             ${SLEEP}
   Input text        //div[@class='setting-password-content__input-wrapper']//input[@id='confirmPassword']   ${password}
   Sleep             ${SLEEP}   
   Click Element     xpath=//*[contains(text(), "Simpan")]
   Sleep             ${SLEEP}
   Location Should contain    ${URL_TARGET}/setting/profile
***Test case***
Pengaturan
    Login
    Kebijakan Privasi



        



