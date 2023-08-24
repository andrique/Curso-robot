*** Settings ***
Resource            ../resources/main.robot
Test Setup          Dado que eu acesse o Organo
Test Teardown       Fechar o navegador

*** Variables ***
${BOTAO_CARD}      id:form-botao

*** Test Cases ***
Verificar preenchimento de formulário incorreto
    Dado que eu clique no botão "Criar Card"
    Então sistema deve apresentar mensagem de campo obrigatório




