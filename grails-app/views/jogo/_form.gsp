<%@ page import="locadorav2.Jogo" %>



<div class="fieldcontain ${hasErrors(bean: jogoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="jogo.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${jogoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jogoInstance, field: 'plataforma', 'error')} required">
	<label for="plataforma">
		<g:message code="jogo.plataforma.label" default="Plataforma" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="plataforma" from="${jogoInstance.constraints.plataforma.inList}" required="" value="${jogoInstance?.plataforma}" valueMessagePrefix="jogo.plataforma"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jogoInstance, field: 'solicitacoes', 'error')} ">
	<label for="solicitacoes">
		<g:message code="jogo.solicitacoes.label" default="Solicitacoes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${jogoInstance?.solicitacoes?}" var="s">
    <li><g:link controller="solicitacao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="solicitacao" action="create" params="['jogo.id': jogoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'solicitacao.label', default: 'Solicitacao')])}</g:link>
</li>
</ul>


</div>

