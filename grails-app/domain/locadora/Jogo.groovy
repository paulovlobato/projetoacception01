package locadora

class Jogo {

    static hasMany = [solicitacao:Solicitacao]
    String nome;
    String plataforma;

    static constraints = {
        nome nullable: false, blank: false
        plataforma inList: ['PC','Playstation 4', 'Xbox One'];
    }

    static mapping = {

    }
}
