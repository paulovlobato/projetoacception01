package locadora

class Jogo {

    String nome;
    String plataforma;

    static constraints = {
        nome nullable: false, blank: false
        plataforma inList: ['PC','Playstation 4', 'Xbox One'];
    }

    static mapping = {

    }
}
