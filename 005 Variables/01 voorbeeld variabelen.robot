*** Settings ***
Documentation    Voorbeeld van sectie variabelen en inline variabelen

*** Variables ***
${SECTIE_VARIABEL}    Dit is een sectie variabel

*** Test Cases ***
Voorbeeld Variabelen Gebruik
    [Documentation]    Testcase om sectie variabelen en inline variabelen te demonstreren
    Log To Console    Hier komen de variabelen:
    Log To Console    Hier komt de sectie variabel: ${SECTIE_VARIABEL}
    ${INLINE_VARIABEL}=    Set Variable    Dit is een inline variabel
    Log To Console    Hier komt de inline variabel: ${INLINE_VARIABEL}

Voorbeeld Variabelen Gebruik Met VAR Keyword
    [Documentation]    Testcase om sectie variabelen en inline variabelen te demonstreren met VAR keyword. 
    ...    VAR maakt de inline syntax hetzelfde als de sectie variabelen.
    Log To Console    Hier komen de VAR variabelen:
    VAR    ${hi}     Hello, world!
    VAR    ${hi2}    I said: ${hi}
    Log To Console    Dit is een variabele met VAR keyword: ${hi}
    Log To Console    Dit is een variabele met VAR keyword: ${hi2}