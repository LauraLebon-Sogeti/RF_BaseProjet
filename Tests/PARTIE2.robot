*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem
Library           Collections
Library           DateTime
Library           String
Library           BuiltIn
Resource          ../Ressources/ressourcesExternes/webdriverTools.robot
Resource          ../Pages/pageLogin.robot

*** Test Cases ***
ST1_HelloWorld
    Ouvrir Navigateur    http://jokerestc.fr.sogeti.com/opencruise/index.php    Firefox
    Title Should Be    CROISIERE POUR TOUS    La page affichée n'est pas croisière pour tous
    Input Text    ${login}    HELLO WORLD!
    Input Text    ${password}    HELLO WORLD!
