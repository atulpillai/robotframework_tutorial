'''
A robot test is divided into four parts 
Settings
Variables
Keywords
Test Cases
'''

*** Settings ***

*** Variables ***

*** Keywords ***
First Keyword
    Log To Console    "\nsomething that first keyword does"

Second Keyword
    Log To Console    "\nsomething that second keyword does"

*** Test Cases ***
Simple Test
    Log To Console    '\nrunning a simple test'

Calling keywords
    First Keyword
    Second Keyword

   


