Algoritmo "Agência de Viagens"
// Usando conceitos de programação estruturada (Vetor), criar em
//pseudocódigo um menu para simular um cadastro para uma agência de viagens
//com as seguintes funções: cadastro de cliente e cadastro de destino, criar
//também uma consulta para cada estrutura de dados.

const
    max_cliente = 5
    max_destino = 5



Var
    cont,opcao,numClientes,numDestinos: inteiro
    nomeCliente: vetor [0.. max_cliente] de caracter
    nomeDestino: vetor [0.. max_destino] de caracter



//Procedimento que cadastra o cliente
procedimento cadastrarCliente
inicio
    se numClientes < max_cliente então
        escreval("Digite o nome do cliente: ")
        leia(nomeCliente[numClientes])
        numClientes <- numClientes + 1
        escreval("Cliente cadastrado com sucesso!")
        escreval("")
    senão
        escreval("Limite máximo de clientes atingido.")
        escreval("")
    fimse



fimprocedimento



//Procedimento que cadastra o destino
procedimento cadastrarDestino
inicio
    se numDestinos < max_destino então
        escreval("Digite o nome do destino: ")
        leia(nomeDestino[numDestinos])
        numDestinos <- numDestinos + 1
        escreval("Destino cadastrado com sucesso!")
        escreval("")
    senão
        escreval("Limite máximo de destinos atingido.")
        escreval("")
    fimse



fimprocedimento



//Procedimento que consulta os clientes
procedimento consultarClientes
inicio
    se numClientes > 0 então
        para cont de 0 ate numClientes - 1 passo 1 faca
            escreval("Cliente ", cont + 1, ": ", nomeCliente[cont])
            escreval("")
        fimpara
    senão
        escreval("Nenhum cliente cadastrado.")
        escreval("")
    fimse
fimprocedimento



//Procedimento que consulta os destinos
procedimento consultarDestinos
inicio
    se numDestinos > 0 então
        para cont de 0 ate numDestinos - 1 passo 1 faca
            escreval("Destino ", cont + 1, ": ", nomeDestino[cont])
            escreval("")
        fimpara
    senão
        escreval("Nenhum destino cadastrado.")
        escreval("")
    fimse
fimprocedimento



Inicio
    numClientes <- 0
    numDestinos <- 0





    repita
        escreval("---------------------")
        escreval("====== MENU =========")
        escreval("---------------------")
        escreval("1. Cadastrar cliente")
        escreval("2. Cadastrar destino")
        escreval("3. Consultar clientes")
        escreval("4. Consultar destinos")
        escreval("5. Sair")
        escreval("---------------------")
        escreval("Digite a opção desejada: ")
        leia(opcao)



        escolha (opcao)
            caso 1
                cadastrarCliente
            caso 2
                cadastrarDestino
            caso 3
                consultarClientes
            caso 4
                consultarDestinos
            caso 5
                escreval("Saindo...")
            outrocaso
                escreval("Opção inválida.")
        fimescolha



     ate opcao = 5



Fimalgoritmo