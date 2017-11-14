import com.acception.security.User
import locadora.Cliente

class BootStrap {

    def clienteService

    def init = { servletContext ->


        if (User.findByUsername("suporte.acception") == null){
            Cliente cliente = new Cliente(nome: "Mister Proprietario", idade: 20)
            clienteService.save(cliente,"suporte.acception", "123456", "ROLE_SUPORTE")
        }
    }
    def destroy = {
    }
}
