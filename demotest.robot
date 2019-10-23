*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOMEPAGE}    http://www.google.com
${search}    http://www.cs.kku.ac.th
${BROWSER}    Chrome

*** Test Cases ***
Go To Homepage
    Open Browser    ${HOMEPAGE}    ${BROWSER}
	Input Text    q    ${search}
	Submit form
	Wait Until Page Contains    www.cs.kku.ac.th
Test Teardown    Close Browser
	
	

