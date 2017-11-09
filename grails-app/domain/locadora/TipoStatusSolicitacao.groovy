package locadora
/**
 * Created by victor on 11/9/2017.
 */
enum TipoStatusSolicitacao {
    APROVADO("Aprovado"),
    AGUARDANDO("Aguardando"),
    NEGADO("Negado")

    String status;

    TipoStatusSolicitacao(Status) {
        this.name = status;
    }

    String getKey(){
        return name();
    }

}