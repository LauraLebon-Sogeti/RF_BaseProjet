*** Variables ***
${dossierWebdrivers}    C:/Users/llebon/el project/socle_install/Python/webdrivers/

*** Keywords ***
OuvrirNavigateur
    [Arguments]    ${urlSite}='about:blank'    ${navigateur}=Firefox
    ${bChromeBrowser}    Run Keyword And Return Status    Should Start With    ${navigateur}    Chrome
    Run Keyword If    ${bChromeBrowser}    OpenChrome
    ...    ELSE    OpenFirefox
    go to    ${urlSite}

OpenChrome
    Create Webdriver    Chrome    webdriver

OpenFirefox
    create webdriver    Firefox
