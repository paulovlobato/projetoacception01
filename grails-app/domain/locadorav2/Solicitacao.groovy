package locadorav2

class Solicitacao {

    Jogo jogo

    String tempoSolicitado
    String statusSolicitacao

    static constraints = {
        tempoSolicitado inList:['15 minutos', '30 minutos', '60 minutos', '90 minutos']
        statusSolicitacao inList:['Aguardando', 'Negado', 'Aprovado']
    }

    static mapping = {

    }
}
