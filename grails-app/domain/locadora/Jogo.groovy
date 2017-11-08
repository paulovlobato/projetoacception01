package locadora

class Jogo {

    int id;
    String nome;
    String plataforma;

    static constraints = {
        plataforma inList: ['PC','Playstation 4', 'Xbox One'];
    }

    static mapping = {

    }
}
