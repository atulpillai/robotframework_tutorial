*** Settings ***
Library    Collections

*** Variables ***
# Scalar defined using syntax - ${variable_name}
# List defined using syntax - @{variable_name}
# Dictionary defined using sytax - &{variable_name}

${var}  "abc"
@{fruits}    apple    banana    orange    mango
&{person}    name=John    age=30    gender=Male

*** Keywords ***

*** Test Cases ***
Simple Test

    # Accessing 
    Log To Console    ${fruits}[0], ${fruits}[1], ${fruits}[2]
    Log to console   \n Person's Name: ${person['name']}
    Log to console   \n Person's Age: ${person['age']}
    Log To Console    \n ${person.age}
    
    # Create variables using keywords
    Set Test Variable    ${scalar_var}  1
    @{list_var}    Create List    1  2  0
    &{dict_var}    Create Dictionary    a=1  b=2  c=3

    # Updating list
    ${list_var}[2]=    Set Variable     3
    Log To Console    After update @{list_var}

    # Append to List
    Append To List    ${list_var}    4
    Log To Console    After update @{list_var}

    # Updating Dictionary
    ${dict_var}[address]=  Set Variable  xyz
    Log To Console    After Update ${dict_var}
    Log To Console    Accessing value by key: ${dict_var.a}


   


