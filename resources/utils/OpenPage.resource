*** Settings ***
Documentation    Open the page

Resource    ../../resources/Base.resource


*** Variables ***
${BASE_URL}        https://testpick.vercel.app/
${BROWSER}         chromium
${IS_HEADLESS}     True


*** Keywords ***
Start Browser
    
    New Browser    browser=${BROWSER}    headless=${IS_HEADLESS}
    New Context    recordVideo={"dir": "videos/"}
    New Page       ${BASE_URL}       

Finish Browser

    Take Screenshot        fullPage=true   
    Close Browser