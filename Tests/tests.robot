*** Settings ***
Library  SeleniumLibrary

*** Variables ***
@{URL} =  http://www.yle.fi
@{YLE_AREENA} =  id=yle-header-main-link--areena

*** Test Cases ***
Should be able to login to feedback page
    Open Browser  @{URL}  chrome
    wait until page contains element  @{YLE_AREENA}  20
    Sleep  2s
    click link  @{YLE_AREENA}
    Sleep  5s
    close all browsers

*** Keywords ***