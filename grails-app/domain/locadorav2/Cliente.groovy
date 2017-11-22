package locadorav2

class Cliente {

    //User usuario

    String nome
    Integer idade

    static constraints = {
        //usuario nullable: false
        nome nullable: false, blank: false
        idade nullable: false, min: 12

    }
}
