*** Settings ***
Documentation    Suite description
Library    Test

*** Test Cases ***
MyTestCase
        ${message}   say hi  Nat
        Log   ${message}
