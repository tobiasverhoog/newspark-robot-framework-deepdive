*** Test Cases ***
Optellen test case
    ${result}=    Optellen    5    10
    Log To Console    Het resultaat van de optelling is: ${result}
    Should Be Equal As Integers    ${result}    15

*** Keywords ***
Optellen
    [Arguments]    ${value1}    ${value2}
    ${value}=  Evaluate  ${value1} + ${value2}
    [Return]  ${value}