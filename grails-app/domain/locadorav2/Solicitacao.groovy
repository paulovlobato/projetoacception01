package locadorav2

class Solicitacao {

    Jogo jogo

    String tempoSolicitado
    String statusSolicitacao

    static constraints = {
        tempoSolicitado inList:['14', '30', '60', '90']
        statusSolicitacao inList:['Aprovado', 'Aguardando', 'Negado']
    }
}
