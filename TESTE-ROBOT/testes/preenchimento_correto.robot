*** Settings ***
Resource            ../resources/main.robot
Test Setup          Dado que eu acesse o Organo
Test Teardown       Fechar o navegador


*** Test Cases ***
Verificar preenchimento de formulário correto
    Dado que eu preencha os campos do formulário
    E clique no botão "Criar Card"
    Então identificar o card no time esperado

Verificar preenchimento de mais de um formulário
    Dado que eu preencha os campos do formulário
    E clique no botão "Criar Card"
    Então identificar 3 cards no time esperado

Verificar se é possível criar um card para cada time
    Dado que eu preencha os campos do formulário
    Então criar card e identificar 1 card em cada time disponível


