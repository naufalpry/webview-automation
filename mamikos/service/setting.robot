***setting***

Library     Selenium2Library
Library     ../var/notif.py
Library         String
| Variables | ../setting.py

***Keyword***

Setup Browser

        ${options}  Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()   sys

        Call Method     ${options}  add_argument    --start-maximized

        Call Method     ${options}  add_argument    --disable-notifications

        Call Method     ${options}  add_argument    ${RUNNING_ON}

        Call Method     ${options}  add_argument    -incognito
        
        Call Method     ${options}  add_argument    --ignore-certificate-errors

        Call Method     ${options}  add_argument    --no-sandbox

        Call Method     ${options}  add_argument    --disable-dev-shm-usage

        Call Method     ${options}  add_argument    --load-and-launch-app ~/.config/google-chrome/Default/Extensions/
        
        Create WebDriver    Chrome  chrome_options=${options}

        Set Window Size    1400    1000

        Go To           ${URL_TARGET}

        SLEEP           2s

Close browser
	Close all browsers