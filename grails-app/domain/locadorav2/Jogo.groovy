package locadorav2

class Jogo {

    static hasMany = [solicitacoes:Solicitacao]
    String nome
    String plataforma

    static constraints = {
        nome nullable: false, blank: false
        plataforma inList: ['PC', 'Playstation 4', 'Xbox One']
    }

    static mapping = {

    }
}
