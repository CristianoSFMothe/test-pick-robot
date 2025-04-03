*** Settings ***
Documentation    suite de testes da página inicial

Resource    ../resources/Base.resource

Test Setup       Start Browser
Test Teardown    Finish Browser

*** Test Cases ***
Cenário: 01 - Selecionar e adicionar um framework com sucesso
    [Documentation]    Adicionar um framework
    [Tags]             success

    ${description}    generate_words    5
    ${name}           FakerLibrary.Name
    ${email}          FakerLibrary.Email

    Dado que estou na página inicial
    E selecione um framework "Cypress"
    E preencha o texto de descrição ${description}
    E informe o nome do usuário ${name}
    E informe o e-mail do usuário ${email}
    Quando clicar no botão enviar
    Então exibi a mensagem de cadastro com sucesso    Usuário cadastrado com sucesso
    

    Sleep    3
    
    