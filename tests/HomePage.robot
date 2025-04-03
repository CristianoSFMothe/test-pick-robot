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
    Então exibi a mensagem    Usuário cadastrado com sucesso

Cenário: 02 - Não deve cadastrar se não selecionar um framework
    [Documentation]    E não selecionar um framework
    [Tags]             not_select_framework

    ${description}    generate_words    5
    ${name}           FakerLibrary.Name
    ${email}          FakerLibrary.Email

    Dado que estou na página inicial
    E preencha o texto de descrição ${description}
    E informe o nome do usuário ${name}
    E informe o e-mail do usuário ${email}
    Quando clicar no botão enviar
    Então exibi a mensagem    Selecione um framework

Cenário: 03 - Não dever cadastrar se não preencher o campo descrição
    [Documentation]    Campo descrição vazio
    [Tags]             description_empty

    ${name}           FakerLibrary.Name
    ${email}          FakerLibrary.Email

    Dado que estou na página inicial
    E selecione um framework "Cypress"
    E informe o nome do usuário ${name}
    E informe o e-mail do usuário ${email}
    Quando clicar no botão enviar
    Então exibi a mensagem    A descrição deve ter pelo menos 10 caracteres

Cenário: 04 - Não dever cadastrar se não preencher o campo nome
    [Documentation]    Campo nome vazio
    [Tags]             name_empty

    ${description}    generate_words    5
    ${email}          FakerLibrary.Email

    Dado que estou na página inicial
    E selecione um framework "Cypress"
    E preencha o texto de descrição ${description}
    E informe o e-mail do usuário ${email}
    Quando clicar no botão enviar
    Então exibi a mensagem    O campo nome é obrigatório

Cenário: 05 - Não dever cadastrar se não preencher o campo e-mail
    [Documentation]    Campo e-mail vazio
    [Tags]             name_empty

    ${description}    generate_words    5
    ${name}           FakerLibrary.Name

    Dado que estou na página inicial
    E selecione um framework "Cypress"
    E preencha o texto de descrição ${description}
    E informe o nome do usuário ${name}
    Quando clicar no botão enviar
    Então exibi a mensagem    E-mail inválido