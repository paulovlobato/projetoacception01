<%@ page import="locadorav2.Cliente" %>



<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="cliente.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${clienteInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'idade', 'error')} required">
	<label for="idade">
		<g:message code="cliente.idade.label" default="Idade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idade" type="number" min="12" value="${clienteInstance.idade}" required=""/>

</div>

