import com.acception.security.User
import locadora.Cliente

class BootStrap {

    def clienteService

    def init = { servletContext ->


        if (User.findByUsername("suporte.acception") == null){
            Cliente cliente = new Cliente(nome: "Mister Proprietario", idade: 20)
            clienteService.save(cliente,"suporte.acception", "123456", "ROLE_SUPORTE")
        }

        if (User.findByUsername("cliente.01") == null){
            Cliente cliente = new Cliente(nome: "Cliente 01", idade: 16)
            clienteService.save(cliente,"cliente.01", "12345", "ROLE_USUARIO")
        }
    }
    def destroy = {
    }
}
