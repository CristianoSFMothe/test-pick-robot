*** Settings ***
Documentation    Keywords da página inicial

Resource        ../Base.resource

*** Keywords ***
Dado que estou na página inicial
    
    Wait For Elements State    ${homePage.title}    visible

E selecione um framework ${framework}    
    Click    ${homePage.selectFramework}  

    ${frameworkOptions}    Set Variable    
    ...    ${homePage.selectFrameworkOptions} >> text=${framework}
    
    Wait For Elements State    ${frameworkOptions}    visible
    Click                      ${frameworkOptions} 

E preencha o texto de descrição ${description}
    
    Click                      ${homePage.textAreaDescription} 
    Wait For Elements State    ${homePage.textAreaDescription}    visible
    Fill Text                  ${homePage.textAreaDescription}    ${description}

E informe o nome do usuário ${name}
    
    Click                      ${homePage.inputEmail} 
    Wait For Elements State    ${homePage.inputName}    visible
    Fill Text                  ${homePage.inputName}    ${name}

E informe o e-mail do usuário ${email}
    
    Click                      ${homePage.inputEmail} 
    Wait For Elements State    ${homePage.inputEmail}    visible
    Fill Text                  ${homePage.inputEmail}    ${email}
    
Quando clicar no botão enviar
    Wait For Elements State    ${homePage.buttonSubmit}    visible
    Click                      ${homePage.buttonSubmit}

Então exibi a mensagem
    [Arguments]    ${expected_message}

    ${message}    Set Variable   css=p >> text=${expected_message}

    Wait For Elements State    ${message}   visible
    ${expected_message}        Get Text     ${message}    