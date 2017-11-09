package locadora

import com.acception.security.Usuario

class Cliente {

    Usuario usuario

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
