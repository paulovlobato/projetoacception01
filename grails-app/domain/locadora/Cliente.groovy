package locadora

import com.acception.security.User

class Cliente {

    User usuario

    String nome;
    Integer idade;

    static constraints = {
        usuario nullable: false
        nome nullable: false, blank: false

        idade nullable: false, min: 12
    }

    static mapping = {

    }
}
