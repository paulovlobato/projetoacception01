<%@ page import="locadorav2.Solicitacao" %>



<div class="fieldcontain ${hasErrors(bean: solicitacaoInstance, field: 'tempoSolicitado', 'error')} required">
	<label for="tempoSolicitado">
		<g:message code="solicitacao.tempoSolicitado.label" default="Tempo Solicitado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tempoSolicitado" from="${solicitacaoInstance.constraints.tempoSolicitado.inList}" required="" value="${solicitacaoInstance?.tempoSolicitado}" valueMessagePrefix="solicitacao.tempoSolicitado"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitacaoInstance, field: 'statusSolicitacao', 'error')} required">
	<label for="statusSolicitacao">
		<g:message code="solicitacao.statusSolicitacao.label" default="Status Solicitacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="statusSolicitacao" from="${solicitacaoInstance.constraints.statusSolicitacao.inList}" required="" value="${solicitacaoInstance?.statusSolicitacao}" valueMessagePrefix="solicitacao.statusSolicitacao"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitacaoInstance, field: 'jogo', 'error')} required">
	<label for="jogo">
		<g:message code="solicitacao.jogo.label" default="Jogo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="jogo" name="jogo.id" from="${locadorav2.Jogo.list()}" optionKey="id" optionValue="nome" required="" value="${solicitacaoInstance?.jogo?.id}" class="many-to-one"/>

</div>

